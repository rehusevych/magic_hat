part of 'theme.dart';

class AppTextTheme {
  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle h4;
  final TextStyle h5;
  final TextStyle caption;
  final TextStyle dataLegend;
  final TextStyle label;

  const AppTextTheme({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.h5,
    required this.caption,
    required this.dataLegend,
    required this.label,
  });

  static const String _ralewayFamily = 'Raleway';
  static const String _maghfireafamily = 'Maghfirea';
  static const String _laishaFamily = 'Laisha';

  static AppTextTheme main(Color baseColor) => AppTextTheme(
        h1: TextStyle(
            fontSize: 48.sp,
            fontFamily: _maghfireafamily,
            fontWeight: FontWeight.normal,
            color: baseColor),
        h2: TextStyle(
            fontSize: 32.sp,
            fontFamily: _maghfireafamily,
            fontWeight: FontWeight.normal,
            color: baseColor),
        h3: TextStyle(
            fontSize: 24.sp,
            fontFamily: _maghfireafamily,
            fontWeight: FontWeight.normal,
            color: baseColor),
        h4: TextStyle(
            fontSize: 20.sp,
            fontFamily: _maghfireafamily,
            fontWeight: FontWeight.normal,
            color: baseColor),
        h5: TextStyle(
            fontSize: 15.sp,
            fontFamily: _maghfireafamily,
            fontWeight: FontWeight.normal,
            color: baseColor),
        caption: TextStyle(
            fontSize: 14.sp,
            fontFamily: _ralewayFamily,
            fontWeight: FontWeight.normal,
            color: baseColor),
        dataLegend: TextStyle(
            fontSize: 12.sp,
            fontFamily: _ralewayFamily,
            fontWeight: FontWeight.normal,
            color: baseColor),
        label: TextStyle(
            fontSize: 40.sp,
            fontFamily: _laishaFamily,
            fontWeight: FontWeight.normal,
            color: baseColor),
      );

  AppTextTheme copyWith({
    TextStyle? h1,
    TextStyle? h2,
    TextStyle? h3,
    TextStyle? h4,
    TextStyle? h5,
    TextStyle? caption,
    TextStyle? dataLegend,
    TextStyle? label,
  }) {
    return AppTextTheme(
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
      h3: h3 ?? this.h3,
      h4: h4 ?? this.h4,
      h5: h5 ?? this.h5,
      caption: caption ?? this.caption,
      dataLegend: dataLegend ?? this.dataLegend,
      label: label ?? this.label,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AppTextTheme &&
        other.h1 == h1 &&
        other.h2 == h2 &&
        other.h3 == h3 &&
        other.h4 == h4 &&
        other.h5 == h5 &&
        other.caption == caption &&
        other.dataLegend == dataLegend &&
        other.label == label;
  }

  @override
  int get hashCode {
    return h1.hashCode ^
        h2.hashCode ^
        h3.hashCode ^
        h4.hashCode ^
        h5.hashCode ^
        caption.hashCode ^
        dataLegend.hashCode ^
        label.hashCode;
  }
}

extension TextStyleBoldEx on TextStyle {
  TextStyle bold() => copyWith(fontWeight: FontWeight.bold);
}

extension TextStyleColorEx on TextStyle {
  TextStyle paint(Color? color) => copyWith(color: color);
}

extension TextStyleSizeEx on TextStyle {
  TextStyle size(double? fontSize) => copyWith(fontSize: fontSize);
}

extension TextStyleAlignEx on TextStyle {
  TextStyle align({double height = 1.6}) => copyWith(height: height);
}

extension AppTextThemeContextEx on BuildContext {
  AppTextTheme get appTextTheme => appTheme.textTheme;
}

extension AppTextThemeEx on AppTextTheme {
  TextTheme toMaterial() => TextTheme(
        headlineSmall: h3,
        bodyMedium: h5,
        labelLarge: h4,
        titleLarge: h4,
      );
}
