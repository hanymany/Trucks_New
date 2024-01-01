import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trucks/core/component/shimmer_effect/reports_shimmer_effect.dart';
import 'package:trucks/core/di/index.dart';

import 'package:trucks/core/styles.dart';
import 'package:trucks/features/admin_screen/presentation/controller/get_out_pays_cars_cubit/get_out_pays_cars_cubit.dart';
import 'package:trucks/features/get_out_pays/domain/ues_case/get_out_pays_cars_use_case.dart';
import 'package:trucks/shared/maintance_form.dart';

class PhoneBilling extends StatelessWidget {
  const PhoneBilling({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<GetOutPaysCarsCubit>(
      create: (context) =>
          GetOutPaysCarsCubit(useCase: di<GetOutPaysCarsUseCase>())
            ..getAllOutPaysCars(),
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
            'فواتير التليفونات',
            style: Styles.textStyle22,
          ),
        ),
        body: BlocBuilder<GetOutPaysCarsCubit, GetOutPaysCarsState>(
          builder: (context, state) {
            if (state is GetOutPaysCarsLoadingState) {
              return const ReportsShimmerEffect();
            } else if (state is GetOutPaysCarsLoadedState) {
              return ListView.separated(
                padding: EdgeInsets.all(12.0.h),
                separatorBuilder: (context, index) =>
                    SizedBox(
                      height: 10.h,
                    ),
                itemBuilder: (context, index) =>
                    MaintanceForm(
                      getOutPaysCarsResponseEntity:
                      state.getOutPaysCarsResponseEntity[index],
                    ),
                itemCount: state.getOutPaysCarsResponseEntity.length,
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
