import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trucks/features/driver_location/domain/entities/upload_dirver_location_request_entity.dart';
import 'package:trucks/features/driver_location/domain/entities/upload_driver_location_response_entity.dart';
import 'package:trucks/features/driver_location/domain/use_case/upload_driver_location_use_case.dart';

part 'upload_driver_location_state.dart';

class UploadDriverLocationCubit extends Cubit<UploadDriverLocationState> {
  final UploadDriverLocationUseCase useCase;

  UploadDriverLocationCubit({required this.useCase})
      : super(UploadDriverLocationInitial());

  Future<void> uploadDriverLocation({
    required UploadDriverLocationRequestEntity requestEntity,
  }) async {
    emit(UploadDriverLocationLoadingState());
    final result = await useCase(requestEntity);
    result.fold(
      (l) => emit(
        UploadDriverLocationFailureState(errorMsg: l.errMessage),
      ),
      (r) => emit(
        UploadDriverLocationLoadedState(responseEntity: r),
      ),
    );
  }
}
