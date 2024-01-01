import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:location/location.dart';

part 'request_location_permission_state.dart';

class RequestLocationPermissionCubit
    extends Cubit<RequestLocationPermissionState> {
  RequestLocationPermissionCubit() : super(RequestLocationPermissionInitial()) {
    _locationStreamController = StreamController.broadcast();

    // Make the first call immediately
    getLocation();
  }

  final Location location = Location();
  PermissionStatus? _permissionGranted;
  LocationData? userLocation;

  late StreamController<LocationData?> _locationStreamController;

  Stream<LocationData?> get locationStream => _locationStreamController.stream;

  Future<void> checkPermissions() async {
    final permissionGrantedResult = await location.hasPermission();
    _permissionGranted = permissionGrantedResult;

    if (_permissionGranted == PermissionStatus.denied) {
      await requestPermission();
    } else {
      // Do not call getLocation here
      // emit a state with the initial location if available
      emit(RequestLocationPermissionSuccessState(userLocation: userLocation));

      // Listen to the location stream for updates
      locationStream.listen((locationData) {
        emit(
          RequestLocationPermissionSuccessState(userLocation: locationData),
        );
      });

      // Call getLocation every 1 hour after the initial call
      Timer.periodic(const Duration(hours: 1), (timer) {
        if (!_locationStreamController.isClosed) {
          getLocation();
        }
      });
    }
  }

  Future<void> getLocation() async {
    try {
      if (!_locationStreamController.isClosed) {
        final locationResult = await location.getLocation();
        userLocation = locationResult;
        _locationStreamController.add(userLocation);
      }
    } on PlatformException catch (err) {
      debugPrint('Error obtaining location: $err');
    }
  }

  Future<void> requestPermission() async {
    if (_permissionGranted != PermissionStatus.granted) {
      final permissionRequestedResult = await location.requestPermission();
      _permissionGranted = permissionRequestedResult;
      emit(RequestLocationPermissionRequestState());

      if (_permissionGranted == PermissionStatus.granted) {
        // If permission is granted, start getting location periodically
        Timer.periodic(const Duration(hours: 1), (timer) {
          if (!_locationStreamController.isClosed) {
            getLocation();
          }
        });
      }
    }
  }

  @override
  Future<void> close() {
    _locationStreamController.close();
    return super.close();
  }
}
