part of 'theme.dart';

const double _buttonTextSize = 17.0;

class AppThemeData {
  final Color primaryColor;
  final Color backgroundColor;
  final Color cardColor;
  final Color errorColor;
  final Color successColor;
  final AppTextTheme textTheme;
  final ColorScheme colorScheme;
  final AppButtonTheme primaryButtonTheme;
  final AppButtonTheme secondaryButtonTheme;
  final double bottomNavBarHeight;

  AppTextTheme get primaryTextTheme => textTheme;

  factory AppThemeData({
    Color? primaryColor,
    Color? backgroundColor,
    Color? cardColor,
    Color? errorColor,
    Color? successColor,
    AppTextTheme? textTheme,
    ColorScheme? colorScheme,
    AppButtonTheme? primaryButtonTheme,
    AppButtonTheme? secondaryButtonTheme,
    double? bottomNavBarHeight,
  }) {
    primaryColor ??= AppColors.primary;
    cardColor ??= primaryColor;
    backgroundColor ??= Colors.white;
    textTheme ??= AppTextTheme.main(Colors.black);
    errorColor ??= AppColors.error;
    successColor ??= AppColors.success;
    bottomNavBarHeight ??= defaultNavBarHeight;

    colorScheme ??= ColorScheme(
      primary: primaryColor,
      primaryContainer: primaryColor,
      secondary: AppColors.secondary,
      secondaryContainer: AppColors.secondary,
      surface: primaryColor,
      background: primaryColor,
      error: errorColor,
      onPrimary: AppColors.secondary,
      onSecondary: AppColors.secondary,
      onSurface: AppColors.secondary,
      onBackground: AppColors.secondary,
      onError: errorColor,
      brightness: Brightness.light,
    );

    primaryButtonTheme ??= AppButtonTheme(
      elevatedButtonStyle: AppButtonTheme.elevatedButton(
        textTheme.h4.copyWith(
          color: colorScheme.onSecondary,
          fontSize: _buttonTextSize,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
        colorScheme.primary,
        AppColors.secondary,
      ),
      outlinedButtonStyle: AppButtonTheme.outlinedButton(
        textTheme.h4.copyWith(
          color: colorScheme.onSecondary,
          fontSize: _buttonTextSize,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
        colorScheme.primary,
      ),
      textButtonStyle: AppButtonTheme.textButton(
        textTheme.h4.copyWith(
          color: colorScheme.onSecondary,
          fontSize: _buttonTextSize,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
        colorScheme.primary,
      ),
    );

    secondaryButtonTheme ??= AppButtonTheme(
      elevatedButtonStyle: AppButtonTheme.elevatedButton(
        textTheme.h4.copyWith(
          color: colorScheme.onSecondary,
          fontSize: _buttonTextSize,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
        colorScheme.onSecondary,
        colorScheme.primary,
      ),
      outlinedButtonStyle: AppButtonTheme.outlinedButton(
        textTheme.h4.copyWith(
          color: colorScheme.onSecondary,
          fontSize: _buttonTextSize,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
        colorScheme.onSecondary,
      ),
      textButtonStyle: AppButtonTheme.textButton(
        textTheme.h4.copyWith(
          color: colorScheme.onSecondary,
          fontSize: _buttonTextSize,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
        colorScheme.onSecondary,
      ),
    );

    return AppThemeData.raw(
      textTheme: textTheme,
      backgroundColor: backgroundColor,
      cardColor: cardColor,
      errorColor: errorColor,
      successColor: successColor,
      primaryColor: primaryColor,
      colorScheme: colorScheme,
      primaryButtonTheme: primaryButtonTheme,
      secondaryButtonTheme: secondaryButtonTheme,
      bottomNavBarHeight: bottomNavBarHeight,
    );
  }

  const AppThemeData.raw({
    required this.primaryColor,
    required this.backgroundColor,
    required this.cardColor,
    required this.errorColor,
    required this.successColor,
    required this.textTheme,
    required this.colorScheme,
    required this.primaryButtonTheme,
    required this.secondaryButtonTheme,
    required this.bottomNavBarHeight,
  });
}

extension AppThemeDataExtension on AppThemeData {
  ThemeData toMaterial() => ThemeData(
        primaryColor: primaryColor,
        textTheme: textTheme.toMaterial(),
        primaryTextTheme: primaryTextTheme.toMaterial(),
        bottomAppBarTheme: const BottomAppBarTheme(
          elevation: defaultBottomBarElevation,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: primaryButtonTheme.elevatedButtonStyle,
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: primaryButtonTheme.outlinedButtonStyle,
        ),
        textButtonTheme: TextButtonThemeData(
          style: primaryButtonTheme.textButtonStyle,
        ),
        dividerTheme: const DividerThemeData(
          thickness: 1,
        ),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.blue,
          selectionColor: Colors.blue.withOpacity(0.5),
          selectionHandleColor: Colors.blue.withOpacity(0.5),
        ),
        colorScheme: colorScheme.copyWith(background: backgroundColor),
      );
}
