import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:magic_hat_task/data/core/http.dart';
import 'package:magic_hat_task/data/hive_module.dart';
import 'package:magic_hat_task/presentation/core/theme/theme.dart';
import 'package:magic_hat_task/presentation/router/router.gr.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

part 'dependencies.dart';

final appRouter = AppRouter();

class App extends StatelessWidget {
  final SharedPreferences sharedPreferences;

  const App({
    Key? key,
    required this.sharedPreferences,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate
          ],
          onGenerateTitle: (context) => "Magic Hat",
          supportedLocales: const [Locale('en')],
          routeInformationParser: appRouter.defaultRouteParser(
            includePrefixMatches: true,
          ),
          routerDelegate: appRouter.delegate(
            initialRoutes: [
              const SplashRoute(),
            ],
          ),
          builder: (context, child) => AnnotatedRegion(
            value: SystemUiOverlayStyle.dark,
            child: _ProvideDependencies(
              sharedPreferences: sharedPreferences,
              child: _ProvideBlocProviders(
                child: AppTheme(
                  data: AppThemeData(),
                  child: child,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
