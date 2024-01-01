part of 'get_received_cars_cubit.dart';

@immutable
abstract class GetReceivedCarsState {}

class GetReceivedCarsInitial extends GetReceivedCarsState {}
class GetReceivedCarsLoadingState extends GetReceivedCarsState {}
class GetReceivedCarsLoadedState extends GetReceivedCarsState {
  final List<GetReceivedCarsResponseEntity> getReceivedCarsResponseEntity;
  GetReceivedCarsLoadedState({required this.getReceivedCarsResponseEntity});
}
class GetReceivedCarsFailureState extends GetReceivedCarsState {
  final String errorMsg;
  GetReceivedCarsFailureState({required this.errorMsg});
}
