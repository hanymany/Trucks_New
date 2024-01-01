part of 'get_charged_cars_cubit.dart';

@immutable
abstract class GetChargedCarsState {}

class GetChargedCarsInitial extends GetChargedCarsState {}
class GetChargedCarsLoadingState extends GetChargedCarsState {}
class GetChargedCarsLoadedState extends GetChargedCarsState {
  final List<GetChargedCarsResponseEntity> getChargedCarsResponseEntity;
  GetChargedCarsLoadedState({required this.getChargedCarsResponseEntity});
}
class GetChargedCarsFailureState extends GetChargedCarsState {
  final String errorMsg;
  GetChargedCarsFailureState({required this.errorMsg});
}
