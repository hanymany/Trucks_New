part of 'get_uncharged_cars_cubit.dart';

@immutable
abstract class GetUnChargedCarsState {}

class GetUnChargedCarsInitial extends GetUnChargedCarsState {}
class GetUnChargedCarsLoadingState extends GetUnChargedCarsState {}
class GetUnChargedCarsLoadedState extends GetUnChargedCarsState {
  final List<GetUnChargedCarsResponseEntity> getUnChargedCarsResponseEntity;
  GetUnChargedCarsLoadedState({required this.getUnChargedCarsResponseEntity});
}
class GetUnChargedCarsFailureState extends GetUnChargedCarsState {
  final String errorMsg;
  GetUnChargedCarsFailureState({required this.errorMsg});
}
