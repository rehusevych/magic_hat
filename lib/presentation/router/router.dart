import 'package:auto_route/auto_route.dart';
import 'package:magic_hat_task/presentation/navigation/navigation.dart';
import 'package:magic_hat_task/presentation/router/wrapper/authenticated_wrapper.dart';
import 'package:magic_hat_task/presentation/splash/splash_page.dart';

const int _fadeInDurationInMilliseconds = 500;

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage),
    CustomRoute(
        initial: true,
        page: AuthenticatedWrapperPage,
        name: 'AuthenticatedWrapperRouter',
        durationInMilliseconds: _fadeInDurationInMilliseconds,
        transitionsBuilder: TransitionsBuilders.fadeIn,
        children: [
          AutoRoute(
            page: NavigationPage,
            initial: true,
            children: [
              // AutoRoute(
              //   page: HomePage,
              //   initial: true,
              // ),
              // AutoRoute(page: ReadingsPage),
              // AutoRoute(page: ProfilePage),
            ],
          ),
        ])
  ],
)
class $AppRouter {}
