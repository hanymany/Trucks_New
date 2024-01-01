import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/assets_gen/assets.gen.dart';
import 'package:trucks/features/driver_location/domain/entities/upload_dirver_location_request_entity.dart';
import 'package:trucks/features/driver_location/presentation/controller/upload_driver_location_cubit/upload_driver_location_cubit.dart';
import 'package:trucks/features/driver_screen/presentation/controller/request_location_permission_cubit/request_location_permission_cubit.dart';

class RefreshWidget extends StatefulWidget {
  const RefreshWidget({
    super.key,
  });

  @override
  State<RefreshWidget> createState() => _RefreshWidgetState();
}

class _RefreshWidgetState extends State<RefreshWidget> {
  @override
  Widget build(BuildContext context) {
    void checkLocation() {
      context.read<RequestLocationPermissionCubit>().checkPermissions();
    }

    return BlocListener<RequestLocationPermissionCubit,
        RequestLocationPermissionState>(
      listener: (context, state) {
        if (state is RequestLocationPermissionSuccessState &&
            state.userLocation != null) {
          debugPrint('_location?.latitude ${state.userLocation!.latitude}');
          debugPrint('_location?.longitude ${state.userLocation!.longitude}');

          context.read<UploadDriverLocationCubit>().uploadDriverLocation(
                requestEntity: UploadDriverLocationRequestEntity(
                  driverId: 1,
                  lat: state.userLocation!.latitude.toString(),
                  lang: state.userLocation!.longitude.toString(),
                ),
              );
        }
      },
      child: InkWell(
        onTap: () => checkLocation(),
        child: CircleAvatar(
          backgroundColor: const Color(0xffFFCC86),
          radius: 60.r,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 55.r,
            child: MyAssets.images.refreshSymbol.image(),
          ),
        ),
      ),
    );
  }
}
