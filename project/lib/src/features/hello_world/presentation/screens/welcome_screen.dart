import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/configs/lang_config/translations.g.dart';
import '../../../../core/configs/windows_config/responsive_view.dart';
import '../../../../core/shared/constants/assets_const.dart';
import '../../../../core/shared/constants/utils_const.dart';
import '../../../../core/shared/helpers/assets_helper.dart';

part '../widgets/greeting_widget.dart';
part '../widgets/info_widget.dart';

@RoutePage()
class WelcomeScreen extends ResponsiveView {
  WelcomeScreen({super.key});

  //*-- PHONE SCREEN --
  @override
  Widget? phone(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              AssetsHelper.getCachedImage(
                Assets.splash,
                builder: (file) {
                  return Image.file(
                    file,
                    width: 100.w,
                    height: 100.h,
                    fit: BoxFit.contain,
                  );
                },
              ),
              SizedBox(height: 30.0.h),
              _GreetingWidget(greeting: translate.welcome(status: 'dev')),
              SizedBox(height: 10.0.h),
              _InfoWidget(
                notice: translate.welcomeInfo(appName: Utils.appName),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //*-- TABLET SCREEN --
  // @override
  // Widget? tablet( BuildContext context) {
  //   // TODO: implement tablet
  //   return super.tablet();
  // }

  //*-- DESKTOP SCREEN --
  // @override
  // Widget? desktop( BuildContext context) {
  //   // TODO: implement desktop
  //   return super.desktop();
  // }

  //*-- WATCH SCREEN --
  // @override
  // Widget? watch( BuildContext context) {
  //   // TODO: implement watch
  //   return super.watch();
  // }
}
