import 'package:drugstore/src/settings/app_theme/app_theme.dart';
import 'package:drugstore/src/utils/utils.dart';
import 'package:flutter/material.dart';

class PhoneWidget extends StatelessWidget {
  const PhoneWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12 * w, vertical: 8 * h),
      height: 64 * h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppTheme.greyColor,
        borderRadius: BorderRadius.circular(10 * w),
        border: Border.all(
          color: AppTheme.greyText,
          width: 0.5 * w,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              "Номер телефона",
              style: TextStyle(
                color: AppTheme.greyText,
                fontSize: 11 * h,
                fontFamily: AppTheme.fontFamily,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: 2 * h,
            width: double.infinity,
          ),
          Expanded(
            flex: 1,
            child: TextFormField(
              style: TextStyle(
                color: AppTheme.blackColor,
                fontSize: 16 * h,
                fontFamily: AppTheme.fontFamily,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.25 * w,
              ),
              keyboardType: TextInputType.number,
              autofocus: true,
              decoration: InputDecoration(
                border: InputBorder.none,
                prefix: const Text("(+998) "),
                prefixStyle: TextStyle(
                  color: AppTheme.blackColor,
                  fontSize: 16 * h,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.25 * w,
                ),
              ),
              cursorHeight: 20 * h,
              cursorColor: AppTheme.blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
