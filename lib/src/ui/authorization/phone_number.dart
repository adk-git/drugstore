import 'package:drugstore/src/settings/app_theme/app_theme.dart';
import 'package:drugstore/src/utils/utils.dart';
import 'package:drugstore/src/widgets/authorization/phone_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PhonePage extends StatefulWidget {
  const PhonePage({Key? key}) : super(key: key);

  @override
  State<PhonePage> createState() => _PhonePageState();
}

class _PhonePageState extends State<PhonePage> {
  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Scaffold(
      backgroundColor: AppTheme.whiteColor,
      body: Column(
        children: [
          SizedBox(
            height: 64 * h,
            width: double.infinity,
          ),
          SizedBox(
            height: 80 * h,
            width: 80 * w,
            child: SvgPicture.asset(
              "assets/icons/logo.svg",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 16 * h),
          SizedBox(
            height: 18 * h,
            width: 188 * w,
            child: SvgPicture.asset(
              "assets/icons/grand.svg",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 16 * h),
          Text(
            "Аптечная сеть",
            style: TextStyle(
              fontFamily: AppTheme.fontFamily,
              fontWeight: FontWeight.w400,
              color: AppTheme.greyText,
              fontSize: 13 * h,
            ),
          ),
          SizedBox(height: 24 * h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16 * w),
            child: const PhoneWidget(),
          ),
          Expanded(
              child: Text(
            "Продолжая вы соглашаетесь с политикой обработки",
            maxLines: 2,
            style: TextStyle(
              fontFamily: AppTheme.fontFamily,
              fontWeight: FontWeight.w400,
              fontSize: 12 * h,
              color: AppTheme.greyText,
              letterSpacing: 0.5 * w,
            ),
          ))
        ],
      ),
    );
  }
}
