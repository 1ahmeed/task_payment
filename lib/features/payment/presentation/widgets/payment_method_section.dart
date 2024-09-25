import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_payment/features/payment/presentation/cubit/payment_cubit.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/constants.dart';
import '../../../../generated/assets.dart';
import '../../../../generated/l10n.dart';

import '../payment_screen.dart';

import 'build_payment_method_item.dart';

class PaymentMethodSections extends StatefulWidget {
  PaymentMethodSections({
    super.key,
  });

  @override
  State<PaymentMethodSections> createState() => _PaymentMethodSectionsState();
}

class _PaymentMethodSectionsState extends State<PaymentMethodSections> {
  @override
  Widget build(BuildContext context) {
    final List<PaymentMethodModel> data = [
      PaymentMethodModel(
          icon: Assets.imagesWalletCheck,
          title: S.of(context).walletBalance,
          subTitle: "1220 جنيه",
          isSuffix: false),
      PaymentMethodModel(
          icon: Assets.imagesCard,
          title: S.of(context).electronicPaymentCard,
          subTitle: "1245 **** **** ****",
          isSuffix: true),
    ];
    return BlocBuilder<PaymentCubit, PaymentState>(
      builder: (context, state) {
        var cubit=context.read<PaymentCubit>();
        return Column(
          children: [
            ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: data.length,
                separatorBuilder: (context, index) => SizedBox(
                      height: 10.h,
                    ),
                itemBuilder: (context, index) => InkWell(
                  borderRadius: BorderRadius.circular(15),
                    onTap: () async {
                      setState(() {
                        if (cubit.activeIndex != index) {
                          cubit.activeIndex = index;
                        }
                      });
                    },
                    child: BuildPaymentMethodItem(
                        data: data[index], activeIndex: cubit.activeIndex == index))),
            Align(
              alignment: Alignment.centerLeft,
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(15),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "+ اضافة بطاقة جديدة",
                    style: AppTextStyles.s12gold(),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              padding: EdgeInsets.only(top: 5.h, bottom: 8.h),
              // width: 350.w,
              // height: 75.h,
              decoration: BoxDecoration(
                  color: checkDarkMode(context)
                      ? AppColors.darkModeColor
                      : AppColors.whiteColor,
                  border: Border.all(
                      width: 1, color: AppColors.goldColor.withOpacity(.31)),
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
                    child: Center(
                        child: SvgPicture.asset(
                      Assets.imagesMoneySend,
                      width: 20.w,
                      height: 20.w,
                    )),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ///title of notifications
                      Text(S.of(context).electronicWallet,
                          overflow: TextOverflow.ellipsis,
                          style: AppTextStyles.s15DeepBlue().copyWith(
                              fontSize: 13.sp,
                              height: 0,
                              color: checkDarkMode(context)
                                  ? Colors.white
                                  : null)),

                      ///body Of notifications
                      Row(
                        children: [
                          Image.asset(Assets.imagesCib),
                          SizedBox(
                            width: 5.w,
                          ),
                          Image.asset(Assets.imagesCib),
                          SizedBox(
                            width: 5.w,
                          ),
                          Image.asset(Assets.imagesCib),
                          SizedBox(
                            width: 5.w,
                          ),
                          Image.asset(Assets.imagesCib),
                          SizedBox(
                            width: 5.w,
                          ),
                          Image.asset(Assets.imagesCib),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    Assets.imagesCheckSquare,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 15.w,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
