import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import '../../../../config/route/app_router.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/constants.dart';
import '../../../../injector.dart';



class BackArrowWidget extends StatelessWidget {
  const BackArrowWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        getIt<AppRouter>().pop();
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: Container(
          width: 55.w,
          height: 55.h,
          decoration: BoxDecoration(
              border: Border.all(
                  color: AppColors.goldColor.withOpacity(.31)
              ),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
            child:checkArabic()
                ?   Icon(
              IconlyLight.arrow_left_2,
              color: checkDarkMode(context)?null:AppColors.deepBlueColor,
              size: 25,
            )
                :   Icon(
              IconlyLight.arrow_right_2,
              size: 25,
              color: checkDarkMode(context)?null:AppColors.deepBlueColor,
            ),
          ),
        ),
      ),
    );
  }
}