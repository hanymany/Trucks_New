part of 'request_location_permission_cubit.dart';

@immutable
abstract class RequestLocationPermissionState {}

class RequestLocationPermissionInitial extends RequestLocationPermissionState {}
class RequestLocationPermissionRequestState extends RequestLocationPermissionState {}
class RequestLocationPermissionSuccessState extends RequestLocationPermissionState {
  final   LocationData ?userLocation;
  RequestLocationPermissionSuccessState({required this.userLocation});

}
class RequestLocationPermissionFailState extends RequestLocationPermissionState {
  final String errorMsg;
  RequestLocationPermissionFailState({required this.errorMsg});
}
