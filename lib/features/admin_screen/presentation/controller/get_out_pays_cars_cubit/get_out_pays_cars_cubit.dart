import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trucks/core/base/base_use_case.dart';
import 'package:trucks/features/get_out_pays/domain/entities/get_out_pays_cars_response_entity.dart';
import 'package:trucks/features/get_out_pays/domain/ues_case/get_out_pays_cars_use_case.dart';

part 'get_out_pays_cars_state.dart';
class GetOutPaysCarsCubit extends Cubit<GetOutPaysCarsState> {
  final GetOutPaysCarsUseCase useCase;

  GetOutPaysCarsCubit({required this.useCase})
      : super(GetOutPaysCarsInitial());

  Future<void> getAllOutPaysCars() async {
    emit(GetOutPaysCarsLoadingState());
    final result = await useCase(NoParams());
    result.fold(
      (l) => emit(
        GetOutPaysCarsFailureState(errorMsg: l.errMessage),
      ),
      (r) => emit(
        GetOutPaysCarsLoadedState(getOutPaysCarsResponseEntity: r),
      ),
    );
  }
}
