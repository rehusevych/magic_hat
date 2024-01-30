import 'package:flutter/material.dart';

class AppColorSwatch extends ColorSwatch<int> {
  const AppColorSwatch(int primary, Map<int, Color> swatch)
      : super(primary, swatch);

  Color get shade100 => this[100]!;

  Color get shade200 => this[200]!;

  Color get shade300 => this[300]!;

  Color get shade400 => this[400]!;
}

class ExtendedAppColorSwatch extends AppColorSwatch {
  const ExtendedAppColorSwatch(int primary, Map<int, Color> swatch)
      : super(primary, swatch);

  Color get shade500 => this[500]!;
}

class AppColors {
  const AppColors._();

  //PRIMARY
  static const Color primary = Color(0xFFE3A97D);
  static const Color secondary = Color(0xFFF5EADA);

  static const Color lightGrey = Color(0xFFE5E5E5);
  static const Color brown = Color(0xFF341800);
  static const Color grey = Color(0xFF111010);

  static const Color redMarkerColor = Color(0xFFE50000);
  static const Color blueMarkerColor = Color(0xFF593EFF);

  static const Color pageBackground = Color(0xFFF4F4F4);

  static const Color bottomBarItemSelected = Color(0xFF12131A);
  static const Color bottomBarItemUnselected = Color(0xFFA8A8A8);

  static const Color error = Color(0xFFF44336);
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFF57C00);

  static const Color selectedStatusBackground = Color(0xFF262626);
  static const Color filterBackground = Color(0xFF0E0E0E);

  static const Color filterCardColor = Color(0xFF303030);

  static const Color cardBackground = Color(0xFFFAFAFA);
  static const Color invoicePendingLabelBackground = Color(0xFFF9F871);
  static const Color pendingStatusBackground = Color(0xFFFEF780);
  static const Color invoicePaidLabelBackground = Color(0xFF63FFAB);

  static const Color progressBorder = Color(0xFFDAD1C2);
  static const Color textFieldDivider = Color(0xFFF3F3F3);
  static const Color hintText = Color(0xFF696969);

  static const Color notificationBottomSheetText = Color(0xFF007AFF);

  static const Color priceText = Color(0xFF1A202C);

  static const Color red = Color(0xFFE50000);

  static const Color unwantedColor = Color(0xFFFF94A9);

  static const Color pink = Color(0xFFF4C3FB);
  //PURPLE
  static const int _purplePrimary = 0xFF593EFF;
  static const AppColorSwatch purple = AppColorSwatch(
    _purplePrimary,
    <int, Color>{
      500: Color(_purplePrimary),
      400: Color(0xFF715AFF),
      300: Color(0xFF8774FF),
      200: Color(0xFF9F8FFF),
      100: Color(0xFFC0B6FF),
    },
  );

  //CYAN
  static const int _cyanPrimary = 0xFF58E1FF;
  static const AppColorSwatch cyan = AppColorSwatch(
    _cyanPrimary,
    <int, Color>{
      500: Color(_cyanPrimary),
      400: Color(0xFF7CE7FF),
      300: Color(0xFF94ECFF),
      200: Color(0xFFACF0FF),
      100: Color(0xFFC8F5FF),
    },
  );

  //CYAN
  static const int _rosePrimary = 0xFFFFA8A9;
  static const AppColorSwatch rose = AppColorSwatch(
    _rosePrimary,
    <int, Color>{
      500: Color(_rosePrimary),
      400: Color(0xFFFFB6B7),
      300: Color(0xFFFFBDBE),
      200: Color(0xFFFFC7C7),
      100: Color(0xFFFFD3D4),
    },
  );

  //LIGHT GREEN
  static const int _lightGreenPrimary = 0xFF63FFAB;
  static const AppColorSwatch lightGreen = AppColorSwatch(
    _lightGreenPrimary,
    <int, Color>{
      500: Color(_lightGreenPrimary),
      400: Color(0xFF8BFFC0),
      300: Color(0xFFA7FFCF),
      200: Color(0xFFB9FFD9),
      100: Color(0xFFCFFFE5),
    },
  );

  //LIGHT GREEN
  static const int _darkBluePrimary = 0xFF0B132B;
  static const AppColorSwatch darkBlue = AppColorSwatch(
    _darkBluePrimary,
    <int, Color>{
      500: Color(_darkBluePrimary),
      400: Color(0xFF0F1938),
      300: Color(0xFF111E44),
      200: Color(0xFF142351),
      100: Color(0xFF172A64),
    },
  );

  //LIGHT GREEN
  static const int _silverPrimary = 0xFFFFFFFF;
  static const AppColorSwatch silver = AppColorSwatch(
    _silverPrimary,
    <int, Color>{
      500: Color(_silverPrimary),
      400: Color(0xFFF8F8F8),
      300: Color(0xFFECECEC),
      200: Color(0xFFDFDFDF),
      100: Color(0xFFD8D8D8),
    },
  );
}
