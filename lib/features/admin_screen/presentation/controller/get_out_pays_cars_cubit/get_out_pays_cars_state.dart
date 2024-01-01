part of 'get_out_pays_cars_cubit.dart';

@immutable
abstract class GetOutPaysCarsState {}

class GetOutPaysCarsInitial extends GetOutPaysCarsState {}
class GetOutPaysCarsLoadingState extends GetOutPaysCarsState {}
class GetOutPaysCarsLoadedState extends GetOutPaysCarsState {
  final List<GetOutPaysCarsResponseEntity> getOutPaysCarsResponseEntity;
  GetOutPaysCarsLoadedState({required this.getOutPaysCarsResponseEntity});
}
class GetOutPaysCarsFailureState extends GetOutPaysCarsState {
  final String errorMsg;
  GetOutPaysCarsFailureState({required this.errorMsg});
}
