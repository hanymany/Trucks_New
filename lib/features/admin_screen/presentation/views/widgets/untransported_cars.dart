import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/component/shimmer_effect/reports_shimmer_effect.dart';
import 'package:trucks/core/di/index.dart';
import 'package:trucks/core/styles.dart';
import 'package:trucks/features/admin_screen/presentation/controller/get_uncharged_cars_cubit/get_uncharged_cars_cubit.dart';
import 'package:trucks/features/get_uncharged_cars/domain/ues_case/get_uncharged_cars_use_case.dart';
import 'package:trucks/shared/cars_info_form.dart';

class UnTransportedCars extends StatelessWidget {
  const UnTransportedCars({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetUnChargedCarsCubit>(
      create: (context) => GetUnChargedCarsCubit(
        useCase: di<GetUnChargedCarsUseCase>(),
      )..getAllUnChargedCars(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: const SizedBox(),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_forward_outlined,
                  size: 32.h,
                ),
              ),
            ),
          ],
          title: Text(
            "السيارات غير المشحونة",
            style: Styles.textStyle22,
          ),
        ),
        body: BlocBuilder<GetUnChargedCarsCubit, GetUnChargedCarsState>(
          builder: (context, state) {
            if (state is GetUnChargedCarsLoadingState) {
              return const ReportsShimmerEffect();
            } else if (state is GetUnChargedCarsLoadedState) {
              return ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 10.h,
                ),
                padding: EdgeInsets.all(12.0.h),
                itemBuilder: (context, index) => CarsInfoForm(
                  getUnChargedCarsResponseEntity:
                      state.getUnChargedCarsResponseEntity[index],
                ),
                itemCount: state.getUnChargedCarsResponseEntity.length,
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
