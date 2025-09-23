import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:toastification/toastification.dart';

import 'src/core/configs/initial_config/init_config.dart';
import 'src/core/configs/initial_config/injector.dart';
import 'src/core/configs/lang_config/translations.g.dart';
import 'src/core/shared/constants/utils_const.dart';
import 'src/core/themes/theme_app.dart';
import 'src/routes/app_router.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await InitConfig.initialize(
    onComplete: () {
      runApp(TranslationProvider(child: MyApp()));
      FlutterNativeSplash.remove();
    },
    onProgress: (progress) {
      debugPrint('Loading: ${(progress * 100).toStringAsFixed(0)}%');
    },
  );
}

class MyApp extends StatelessWidget {
  var _router = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      // Wrap your material app with MultiProvider
      child: MaterialApp.router(
        debugShowCheckedModeBanner: kDebugMode,
        title: Utils.appName,
        routerConfig: _router.config(),
        locale: TranslationProvider.of(context).flutterLocale,
        supportedLocales: AppLocaleUtils.supportedLocales,
        localizationsDelegates: [...GlobalMaterialLocalizations.delegates],
        builder: (context, child) {
          ScreenUtil.init(
            context,
            designSize: Utils.sizeInit(context),
            minTextAdapt: true,
            splitScreenMode: true,
          );
          return Theme(data: ThemeApp.light, child: child!);
        },
      ),
    );
  }
}
