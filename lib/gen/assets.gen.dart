/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsGifGen {
  const $AssetsGifGen();

  /// File path: assets/gif/fire.gif
  AssetGenImage get fire => const AssetGenImage('assets/gif/fire.gif');

  /// List of all assets
  List<AssetGenImage> get values => [fire];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/back.png
  AssetGenImage get back => const AssetGenImage('assets/icons/back.png');

  /// File path: assets/icons/bin_close.png
  AssetGenImage get binClose =>
      const AssetGenImage('assets/icons/bin_close.png');

  /// File path: assets/icons/bin_open.png
  AssetGenImage get binOpen => const AssetGenImage('assets/icons/bin_open.png');

  /// File path: assets/icons/danger.png
  AssetGenImage get danger => const AssetGenImage('assets/icons/danger.png');

  /// File path: assets/icons/history.png
  AssetGenImage get history => const AssetGenImage('assets/icons/history.png');

  /// File path: assets/icons/picker.png
  AssetGenImage get picker => const AssetGenImage('assets/icons/picker.png');

  /// File path: assets/icons/play.png
  AssetGenImage get play => const AssetGenImage('assets/icons/play.png');

  /// File path: assets/icons/restart.png
  AssetGenImage get restart => const AssetGenImage('assets/icons/restart.png');

  /// File path: assets/icons/satety.png
  AssetGenImage get satety => const AssetGenImage('assets/icons/satety.png');

  /// File path: assets/icons/sort.png
  AssetGenImage get sort => const AssetGenImage('assets/icons/sort.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        back,
        binClose,
        binOpen,
        danger,
        history,
        picker,
        play,
        restart,
        satety,
        sort
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/isFaceDown.png
  AssetGenImage get isFaceDown =>
      const AssetGenImage('assets/images/isFaceDown.png');

  /// List of all assets
  List<AssetGenImage> get values => [isFaceDown];
}

class Assets {
  Assets._();

  static const $AssetsGifGen gif = $AssetsGifGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
