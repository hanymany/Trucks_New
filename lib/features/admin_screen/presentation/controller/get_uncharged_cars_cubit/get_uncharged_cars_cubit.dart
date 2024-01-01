import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trucks/core/base/base_use_case.dart';
import 'package:trucks/features/get_uncharged_cars/domain/entities/get_uncharged_cars_response_entity.dart';
import 'package:trucks/features/get_uncharged_cars/domain/ues_case/get_uncharged_cars_use_case.dart';

part 'get_uncharged_cars_state.dart';
class GetUnChargedCarsCubit extends Cubit<GetUnChargedCarsState> {
  final GetUnChargedCarsUseCase useCase;

  GetUnChargedCarsCubit({required this.useCase})
      : super(GetUnChargedCarsInitial());

  Future<void> getAllUnChargedCars() async {
    emit(GetUnChargedCarsLoadingState());
    final result = await useCase(NoParams());
    result.fold(
      (l) => emit(
        GetUnChargedCarsFailureState(errorMsg: l.errMessage),
      ),
      (r) => emit(
        GetUnChargedCarsLoadedState(getUnChargedCarsResponseEntity: r),
      ),
    );
  }
}
