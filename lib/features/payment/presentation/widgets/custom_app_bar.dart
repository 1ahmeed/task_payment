import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/constants.dart';
import 'back_arrow_widget.dart';

class CustomAppBarWithText extends StatelessWidget {
  const CustomAppBarWithText({
    super.key,   required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      automaticallyImplyLeading: false,
      actions:    [
        const Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: BackArrowWidget(),
        ),
        SizedBox(width: 20.w,),
      ],
      title:Text(
          text,
          style:AppTextStyles.s20DeepBlue().copyWith(
            color: checkDarkMode(context)?Colors.white:null,

          )

      ) ,
      centerTitle: true,
    );
  }
}