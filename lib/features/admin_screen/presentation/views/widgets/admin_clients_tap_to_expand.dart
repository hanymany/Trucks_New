import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/styles.dart';
import '../../../../../shared/last_address.dart';

class AdminClientsTapToExpand extends StatefulWidget {
  const AdminClientsTapToExpand({super.key});

  @override
  State<AdminClientsTapToExpand> createState() =>
      _AdminClientsTapToExpandState();
}

class _AdminClientsTapToExpandState extends State<AdminClientsTapToExpand> {
  bool isExpanded = true;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          highlightColor: Colors.transparent,
          splashColor: Colors.transparent,
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
          child: AnimatedContainer(
            margin: EdgeInsets.symmetric(
              horizontal: isExpanded ? 10.h : 0,
            ),
            padding: EdgeInsets.all(15.h),
            curve: Curves.fastLinearToSlowEaseIn,
            duration: const Duration(milliseconds: 1200),
            decoration: BoxDecoration(
              color: AppColors.primryColor2,
              border: Border.all(color: AppColors.borderColor),
              borderRadius: BorderRadius.all(
                Radius.circular(8.h),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      isExpanded
                          ? Icons.keyboard_arrow_down
                          : Icons.keyboard_arrow_up,
                      color: Colors.black,
                      size: 27.h,
                    ),
                    Text(
                      'أسم العميل كاملا',
                      style: Styles.textStyle18,
                    ),
                  ],
                ),
                isExpanded ? const SizedBox() : const SizedBox(height: 20),
                AnimatedCrossFade(
                  firstChild: const Text(
                    '',
                    style: TextStyle(
                      fontSize: 0,
                    ),
                  ),
                  secondChild:
                      Stack(alignment: Alignment.bottomCenter, children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: CarouselSlider(
                        items: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'الحالة',
                                    style: Styles.textStyle16
                                        .copyWith(color: Colors.green),
                                  ),
                                  const Spacer(),
                                  Text(
                                    'أسم و موديل السيارة',
                                    style: Styles.textStyle16
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                'نوع السيارة',
                                style: Styles.textStyle14,
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                'رقم الشاسيه',
                                style: Styles.textStyle14,
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                'أسم المستلم',
                                style: Styles.textStyle14,
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                'رقم الرحلة',
                                style: Styles.textStyle14,
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              Text(
                                'أسم السائق',
                                style: Styles.textStyle14,
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              const LastAddress(),
                            ],
                          ),
                          Text(
                            '(((((Second  Text)))))      ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.7.sp,
                            ),
                          ),
                          Text(
                            '(((((Third Text)))))     ',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.7.sp,
                            ),
                          ),
                        ],
                        options: CarouselOptions(
                          initialPage: 0,
                          height: 350.h,
                          enableInfiniteScroll: false,
                          reverse: false,
                          // autoPlay: true,
                          viewportFraction: 1,

                          onPageChanged: (index, reason) {
                            setState(() {
                              currentIndex = index;
                            });
                          },

                          //ssenlargeCenterPage: true,
                          //enlargeStrategy: CenterPageEnlargeStrategy.height
                        ),
                      ),
                    ),
                    AnimatedSmoothIndicator(
                      activeIndex: currentIndex,
                      count: 3,
                      effect: ExpandingDotsEffect(
                          dotColor: Colors.grey,
                          activeDotColor: Colors.black,
                          dotHeight: 6.h,
                          dotWidth: 17.w),
                    ),
                  ]),
                  crossFadeState: isExpanded
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(milliseconds: 1200),
                  reverseDuration: Duration.zero,
                  sizeCurve: Curves.fastLinearToSlowEaseIn,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
