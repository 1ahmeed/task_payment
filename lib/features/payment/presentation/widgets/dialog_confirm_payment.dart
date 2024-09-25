import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';

import '../../../../generated/l10n.dart';
import 'dialog_confirm_successfully.dart';

void dialogToConfirmPayment(BuildContext context) {
  showDialog(
    context: context,  builder: (context) => AlertDialog(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
    ),
    insetPadding: const EdgeInsets.symmetric(horizontal: 20),
    content:Wrap(
      spacing: 50,
      children: [
        Center(child: Text("تاكيد الدفع",style: AppTextStyles.s20DeepBlue(),)),
        SizedBox(height: 20.h,),
        const Divider(),
        SizedBox(height: 40.h,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0.w),
          child: RichText(
            text: TextSpan(
              text: 'سيتم خصم مبلغ ',
              style: AppTextStyles.s12gold().copyWith(
                  fontSize: 18.sp
              ),
              children:  <TextSpan>[
                TextSpan(text: '500 جنية', style:AppTextStyles.s18DeepBlue(), ),
                TextSpan(text: 'من رصيد المحفظة!',style: AppTextStyles.s12gold()
                    .copyWith(
                    height: 1.5,
                    fontSize: 18.sp
                ),),
              ],
            ),
          ),
        ),
        SizedBox(height: 40.h,),

        InkWell(
          onTap: () {
            Navigator.pop(context);
            buildConfirmSuccessfully(context);
            //
          },
          child: Container(
            width: double.infinity,
            height: 45.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: AppColors.primaryGradient.colors,
                ),
                boxShadow: [
                  BoxShadow(
                      blurRadius:30,
                      offset: const Offset(0, 15),
                      // color: const Color(0xffD1B06B26).withOpacity(.50),
                      color: const Color(0xffB92E37).withOpacity(.14),
                      // color: Colors.black.withOpacity(.50),
                      spreadRadius: 0)

                ]
            ),
            child:   Center(
              child: Text(
                  S.of(context).confirmPayment,
                  style: AppTextStyles.s14White().copyWith(
                      height: 0
                  )),
            ),
          ),
        ),

      ],
    ),
    backgroundColor: Colors.white,
  ),);
}
