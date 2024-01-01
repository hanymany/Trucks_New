import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/component/shimmer_effect/reports_shimmer_effect.dart';
import 'package:trucks/core/di/index.dart';
import 'package:trucks/core/styles.dart';
import 'package:trucks/features/admin_screen/presentation/controller/get_charged_cars_cubit/get_charged_cars_cubit.dart';
import 'package:trucks/features/get_charged_cars/domain/ues_case/get_charged_cars_use_case.dart';
import 'package:trucks/shared/loaded_cars_form.dart';

class TransportedCars extends StatelessWidget {
  const TransportedCars({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetChargedCarsCubit>(
      create: (context) =>
          GetChargedCarsCubit(useCase: di<GetChargedCarsUseCase>())
            ..getAllChargedCars(),
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
            "السيارات المشحونة",
            style: Styles.textStyle22,
          ),
        ),
        body: BlocBuilder<GetChargedCarsCubit, GetChargedCarsState>(
          builder: (context, state) {
            if (state is GetChargedCarsLoadingState) {
              return const ReportsShimmerEffect();
            } else if (state is GetChargedCarsLoadedState) {
              return ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 10.h,
                ),
                padding: const EdgeInsets.all(12.0),
                itemBuilder: (context, index) => TruckLoadsForm(
                  getChargedCarsResponseEntity:
                      state.getChargedCarsResponseEntity[index],
                ),
                itemCount: state.getChargedCarsResponseEntity.length,
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
