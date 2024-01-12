/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  $AssetsImagesBannerGen get banner => const $AssetsImagesBannerGen();

  /// File path: assets/images/hand.png
  AssetGenImage get hand => const AssetGenImage('assets/images/hand.png');

  $AssetsImagesIconGen get icon => const $AssetsImagesIconGen();

  /// File path: assets/images/idea.png
  AssetGenImage get idea => const AssetGenImage('assets/images/idea.png');

  $AssetsImagesLogoGen get logo => const $AssetsImagesLogoGen();
  $AssetsImagesOnboardingGen get onboarding =>
      const $AssetsImagesOnboardingGen();

  /// List of all assets
  List<AssetGenImage> get values => [hand, idea];
}

class $AssetsImagesBannerGen {
  const $AssetsImagesBannerGen();

  /// File path: assets/images/banner/banner1.png
  AssetGenImage get banner1 =>
      const AssetGenImage('assets/images/banner/banner1.png');

  /// File path: assets/images/banner/banner2.png
  AssetGenImage get banner2 =>
      const AssetGenImage('assets/images/banner/banner2.png');

  /// List of all assets
  List<AssetGenImage> get values => [banner1, banner2];
}

class $AssetsImagesIconGen {
  const $AssetsImagesIconGen();

  /// File path: assets/images/icon/hand.png
  AssetGenImage get hand => const AssetGenImage('assets/images/icon/hand.png');

  /// File path: assets/images/icon/lamp.png
  AssetGenImage get lamp => const AssetGenImage('assets/images/icon/lamp.png');

  /// File path: assets/images/icon/money.png
  AssetGenImage get money =>
      const AssetGenImage('assets/images/icon/money.png');

  /// File path: assets/images/icon/task.png
  AssetGenImage get task => const AssetGenImage('assets/images/icon/task.png');

  /// List of all assets
  List<AssetGenImage> get values => [hand, lamp, money, task];
}

class $AssetsImagesLogoGen {
  const $AssetsImagesLogoGen();

  /// File path: assets/images/logo/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo/logo.png');

  /// List of all assets
  List<AssetGenImage> get values => [logo];
}

class $AssetsImagesOnboardingGen {
  const $AssetsImagesOnboardingGen();

  /// File path: assets/images/onboarding/onboarding1.png
  AssetGenImage get onboarding1 =>
      const AssetGenImage('assets/images/onboarding/onboarding1.png');

  /// File path: assets/images/onboarding/onboarding2.png
  AssetGenImage get onboarding2 =>
      const AssetGenImage('assets/images/onboarding/onboarding2.png');

  /// File path: assets/images/onboarding/onboarding3.png
  AssetGenImage get onboarding3 =>
      const AssetGenImage('assets/images/onboarding/onboarding3.png');

  /// List of all assets
  List<AssetGenImage> get values => [onboarding1, onboarding2, onboarding3];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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
