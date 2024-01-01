part of 'get_agents_cars_cubit.dart';

@immutable
abstract class GetAgentsState {}

class GetAgentsInitial extends GetAgentsState {}
class GetAgentsLoadingState extends GetAgentsState {}
class GetAgentsLoadedState extends GetAgentsState {
  final List<GetAgentsResponseEntity> getAgentsResponseEntity;
  GetAgentsLoadedState({required this.getAgentsResponseEntity});
}
class GetAgentsFailureState extends GetAgentsState {
  final String errorMsg;
  GetAgentsFailureState({required this.errorMsg});
}
