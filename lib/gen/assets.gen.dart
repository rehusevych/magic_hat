/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsBackgroundGen {
  const $AssetsBackgroundGen();

  /// File path: assets/background/auth_background.png
  AssetGenImage get authBackground =>
      const AssetGenImage('assets/background/auth_background.png');

  /// File path: assets/background/background_splash.png
  AssetGenImage get backgroundSplash =>
      const AssetGenImage('assets/background/background_splash.png');

  /// File path: assets/background/confirmation_background.png
  AssetGenImage get confirmationBackground =>
      const AssetGenImage('assets/background/confirmation_background.png');

  /// File path: assets/background/divider.png
  AssetGenImage get dividerPng =>
      const AssetGenImage('assets/background/divider.png');

  /// File path: assets/background/divider.svg
  String get dividerSvg => 'assets/background/divider.svg';

  /// File path: assets/background/leaves.png
  AssetGenImage get leaves =>
      const AssetGenImage('assets/background/leaves.png');

  /// File path: assets/background/leaves_first_style.png
  AssetGenImage get leavesFirstStyle =>
      const AssetGenImage('assets/background/leaves_first_style.png');

  /// File path: assets/background/leaves_second_style.png
  AssetGenImage get leavesSecondStyle =>
      const AssetGenImage('assets/background/leaves_second_style.png');

  /// File path: assets/background/light_divider.png
  AssetGenImage get lightDividerPng =>
      const AssetGenImage('assets/background/light_divider.png');

  /// File path: assets/background/light_divider.svg
  String get lightDividerSvg => 'assets/background/light_divider.svg';

  /// File path: assets/background/readings.svg
  String get readings => 'assets/background/readings.svg';

  /// File path: assets/background/splash_background.png
  AssetGenImage get splashBackground =>
      const AssetGenImage('assets/background/splash_background.png');

  /// File path: assets/background/splash_borders.png
  AssetGenImage get splashBorders =>
      const AssetGenImage('assets/background/splash_borders.png');

  /// File path: assets/background/summary_borders.png
  AssetGenImage get summaryBordersPng =>
      const AssetGenImage('assets/background/summary_borders.png');

  /// File path: assets/background/summary_borders.svg
  String get summaryBordersSvg => 'assets/background/summary_borders.svg';

  /// File path: assets/background/vertical_divider.svg
  String get verticalDivider => 'assets/background/vertical_divider.svg';

  /// List of all assets
  List<dynamic> get values => [
        authBackground,
        backgroundSplash,
        confirmationBackground,
        dividerPng,
        dividerSvg,
        leaves,
        leavesFirstStyle,
        leavesSecondStyle,
        lightDividerPng,
        lightDividerSvg,
        readings,
        splashBackground,
        splashBorders,
        summaryBordersPng,
        summaryBordersSvg,
        verticalDivider
      ];
}

class $AssetsIconGen {
  const $AssetsIconGen();

  /// File path: assets/icon/icon.png
  AssetGenImage get icon => const AssetGenImage('assets/icon/icon.png');

  /// File path: assets/icon/icon_foreground.png
  AssetGenImage get iconForeground =>
      const AssetGenImage('assets/icon/icon_foreground.png');

  /// File path: assets/icon/logo.png
  AssetGenImage get logoPng => const AssetGenImage('assets/icon/logo.png');

  /// File path: assets/icon/logo.svg
  String get logoSvg => 'assets/icon/logo.svg';

  /// List of all assets
  List<dynamic> get values => [icon, iconForeground, logoPng, logoSvg];
}

class Assets {
  Assets._();

  static const $AssetsBackgroundGen background = $AssetsBackgroundGen();
  static const $AssetsIconGen icon = $AssetsIconGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
