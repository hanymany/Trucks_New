import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trucks/core/base/base_use_case.dart';
import 'package:trucks/features/get_received_cars/domain/entities/get_received_cars_response_entity.dart';
import 'package:trucks/features/get_received_cars/domain/ues_case/get_received_cars_use_case.dart';

part 'get_received_cars_state.dart';
class GetReceivedCarsCubit extends Cubit<GetReceivedCarsState> {
  final GetReceivedCarsUseCase useCase;

  GetReceivedCarsCubit({required this.useCase})
      : super(GetReceivedCarsInitial());

  Future<void> getAllReceivedCars() async {
    emit(GetReceivedCarsLoadingState());
    final result = await useCase(NoParams());
    result.fold(
      (l) => emit(
        GetReceivedCarsFailureState(errorMsg: l.errMessage),
      ),
      (r) => emit(
        GetReceivedCarsLoadedState(getReceivedCarsResponseEntity: r),
      ),
    );
  }
}
