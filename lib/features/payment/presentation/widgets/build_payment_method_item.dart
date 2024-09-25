
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/constants.dart';
import '../../../../generated/assets.dart';

 import '../payment_screen.dart';

class BuildPaymentMethodItem extends StatelessWidget {
  BuildPaymentMethodItem({Key? key, required this.data, required this.activeIndex}) : super(key: key);
  final PaymentMethodModel data;
  final bool activeIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:   EdgeInsets.only(
        top: 5.h,bottom: 5.h
      ),
      // width: 350.w,
      // height: 70.h,
      decoration: BoxDecoration(
          color: checkDarkMode(context)
              ? AppColors.darkModeColor
              : AppColors.whiteColor,
          border: Border.all(
              width: 1,
              color: AppColors.goldColor.withOpacity(.31)),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 6.w,
          ),

          ///image
          Container(
            width: 43.w,
            height: 43.h,
            decoration: BoxDecoration(
              color: AppColors.deepBlueColor,
              borderRadius: BorderRadius.circular(5),

            ),
            child: Center(child: SvgPicture.asset(data.icon,width: 20.w,height: 20.w,)),
          ),
          SizedBox(
            width: 15.w,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ///title
              Text(data.title,
                  overflow: TextOverflow.ellipsis,
                  style:
                  AppTextStyles.s15DeepBlue().copyWith(
                      fontSize: 13.sp,
                      color: checkDarkMode(context)
                          ? Colors.white
                          : null)),
              SizedBox(
                height:5.h,
              ),

              ///body Of notifications
              Text(data.subTitle,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.s10gold()
                      .copyWith(
                      color: checkDarkMode(context)
                          ? Colors.white
                          : null)),
            ],
          ),
          const Spacer(),
          if(data.isSuffix)
            Image.asset(Assets.imagesCib),
          SizedBox(
            width: 15.w,
          ),
           SvgPicture.asset(Assets.imagesCheckSquare,
            color:activeIndex==true? null:Colors.grey,),
          SizedBox(
            width: 15.w,
          ),
        ],
      ),
    );
  }
}
