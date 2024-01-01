import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trucks/core/base/base_use_case.dart';
import 'package:trucks/features/get_charged_cars/domain/entities/get_charged_cars_response_entity.dart';
import 'package:trucks/features/get_charged_cars/domain/ues_case/get_charged_cars_use_case.dart';

part 'get_charged_cars_state.dart';
class GetChargedCarsCubit extends Cubit<GetChargedCarsState> {
  final GetChargedCarsUseCase useCase;

  GetChargedCarsCubit({required this.useCase})
      : super(GetChargedCarsInitial());

  Future<void> getAllChargedCars() async {
    emit(GetChargedCarsLoadingState());
    final result = await useCase(NoParams());
    result.fold(
      (l) => emit(
        GetChargedCarsFailureState(errorMsg: l.errMessage),
      ),
      (r) => emit(
        GetChargedCarsLoadedState(getChargedCarsResponseEntity: r),
      ),
    );
  }
}
