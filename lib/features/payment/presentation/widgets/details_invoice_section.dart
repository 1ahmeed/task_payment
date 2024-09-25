
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

import '../../../../generated/l10n.dart';



class DetailsInvoiceSection extends StatelessWidget {
  const DetailsInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Color(0xff000000).withOpacity(.03),
                  offset: Offset(0, 25),
                  blurRadius: 40,
                  spreadRadius: 0)
            ],
          ),
          width: 350.w,
          height: 230 ,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.0.w),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,

              children: [
                  SizedBox(
                  // width: double.infinity,
                  height: 25.h,
                ),
                Text(
                  S.of(context).invoiceDetails,
                  // "تفاصيل الفاتورة",
                  style:
                  AppTextStyles.s12gold().copyWith(fontSize: 15.sp,),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).generalTypeOfConsultation,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.s13Grey().copyWith(
                          fontSize: 12.sp
                      ),
                    ),
                    SizedBox(
                      width: 15.w,
                    ),
                    Container(
                      width: 100.w,
                      height: 1,
                      color: AppColors.goldColor,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    Text(
                      "قانون جنائي",
                      style: AppTextStyles.s15DeepBlue().copyWith(
                          fontSize: 12.sp
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).consultationSubtype,
                      style: AppTextStyles.s13Grey(),
                    ),
                    SizedBox(
                      width: 21.w,
                    ),
                    Container(
                      width: 100.w,
                      height: 1,
                      color: AppColors.goldColor,
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                    Text(
                      " تحرش",
                      style: AppTextStyles.s15DeepBlue().copyWith(
                          fontSize: 12.sp
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 103.h,
                )
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -20.h,
          child: Container(
            width: 100.w,
            height: 50.h,
            decoration: BoxDecoration(
                color: AppColors.deepBlueColor,
                borderRadius: BorderRadius.circular(15)),
            child: Center(
                child: Text(
                  "500 جنيه",
                  style: AppTextStyles.s10gold().copyWith(fontSize: 12.sp),
                )),
          ),
        )
      ],
    );
  }
}
