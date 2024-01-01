part of 'upload_driver_location_cubit.dart';

@immutable
abstract class UploadDriverLocationState {}

class UploadDriverLocationInitial extends UploadDriverLocationState {}
class UploadDriverLocationLoadingState extends UploadDriverLocationState {}
class UploadDriverLocationLoadedState extends UploadDriverLocationState {
  final UploadDriverLocationResponseEntity responseEntity;
  UploadDriverLocationLoadedState({required this.responseEntity});
}
class UploadDriverLocationFailureState extends UploadDriverLocationState {
  final  String errorMsg;
  UploadDriverLocationFailureState({required this.errorMsg});
}
