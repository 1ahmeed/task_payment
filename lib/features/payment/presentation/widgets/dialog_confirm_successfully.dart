import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconly/iconly.dart';
import 'package:task_payment/generated/assets.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/constants.dart';
import '../../../../generated/l10n.dart';



void buildConfirmSuccessfully(BuildContext context) {
  showDialog(
    context: context,  builder: (context) => AlertDialog(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
    ),
    insetPadding: const EdgeInsets.symmetric(horizontal: 20),
    content:Wrap(
      // runAlignment: WrapAlignment.center,
      children: [
        const SizedBox(height: 75,),
        Padding(
          padding: const EdgeInsets.only(right: 70.0),
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(Assets.imagesBigCircle),
              Positioned(
                  left: 10,
                  child: SvgPicture.asset(Assets.imagesDollarSquare)),
              Positioned(
                  left: 120,
                  top: 80,
                  child: SvgPicture.asset(Assets.imagesSmallCircle)),
              Positioned(
                  left: 140,
                  top: 102,
                  child: SvgPicture.asset(Assets.imagesCheckSquare,
                    color: AppColors.deepBlueColor,)),
            ],
          ),
        ),
        SizedBox(height: 190.h ),
        Center(
          child: RichText(
            text: TextSpan(
              text: 'تم تاكيد الدفع ',
              style: AppTextStyles.s18DeepBlue().copyWith(fontWeight: FontWeight.w400),
              children:  <TextSpan>[
                TextSpan(text: 'بنجاح ', style:AppTextStyles.s12gold().copyWith(
                    fontSize: 18.sp,fontWeight: FontWeight.w700
                ), ),

              ],
            ),
          ),
        ),
        const SizedBox(height: 30 ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.0.w),
          child: RichText(textAlign: TextAlign.center,
            text: TextSpan(
                text: 'يمكنك الاطلاع والتحكم في كافة ',
                style: AppTextStyles.s13Grey().copyWith(
                    fontSize: 14.sp
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'استشاراتك ',
                    style: AppTextStyles.s13Grey().copyWith(
                        fontSize: 14.sp
                    ),),
                ]
            ),
          ),
        ),
        const SizedBox(height: 60 ),
        Center(
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: 138.w,
              height: 40.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: AppColors.primaryGradient.colors,
                  ),
                  boxShadow: [
                    BoxShadow(
                        blurRadius:15,
                        offset: const Offset(0, 5),
                        color: const Color(0xffF13945).withOpacity(.3),
                        // color: Colors.black.withOpacity(.50),
                        spreadRadius: 0)

                  ]
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      S.of(context).Consulting,
                      style: AppTextStyles.s14White().copyWith(
                          height: 0
                      )),
                  SizedBox(
                    width: 10.w,
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                    child: Icon(
                      color:AppColors.deepRedColor,
                      checkArabic()
                          ? IconlyLight.arrow_left_2
                          : IconlyLight.arrow_right_2,
                      size: 10,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 75,)

      ],
    ),
    backgroundColor: Colors.white,
  ),);
}
