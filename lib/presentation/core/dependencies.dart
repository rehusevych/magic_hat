part of 'app.dart';

class _ProvideBlocProviders extends StatelessWidget {
  final Widget child;

  const _ProvideBlocProviders({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [],
      child: child,
    );
  }
}

class _ProvideDependencies extends StatelessWidget {
  final SharedPreferences sharedPreferences;
  final Widget child;

  const _ProvideDependencies({
    Key? key,
    required this.sharedPreferences,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<SharedPreferences>(
          create: (c) => sharedPreferences,
        ),
        Provider<FlutterSecureStorage>(
          create: (c) => const FlutterSecureStorage(),
        ),
        Provider<Dio>(
          create: (c) => createDio(baseUrl),
        ),
        Provider<Dio>(
          create: (c) => createAuthenticatedDio(
            baseUrl,
            additionalInterceptors: [],
          ),
        ),
        ...createLazyBoxProviders(),
      ],
      child: child,
    );
  }
}
