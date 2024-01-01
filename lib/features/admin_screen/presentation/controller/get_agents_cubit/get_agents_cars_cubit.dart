import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trucks/core/base/base_use_case.dart';
import 'package:trucks/features/get_agents/domain/entities/get_agents_response_entity.dart';
import 'package:trucks/features/get_agents/domain/ues_case/get_agents_cars_use_case.dart';

part 'get_agents_cars_state.dart';
class GetAgentsCubit extends Cubit<GetAgentsState> {
  final GetAgentsUseCase useCase;

  GetAgentsCubit({required this.useCase})
      : super(GetAgentsInitial());

  Future<void> getAllAgents() async {
    emit(GetAgentsLoadingState());
    final result = await useCase(NoParams());
    result.fold(
      (l) => emit(
        GetAgentsFailureState(errorMsg: l.errMessage),
      ),
      (r) => emit(
        GetAgentsLoadedState(getAgentsResponseEntity: r),
      ),
    );
  }
}
