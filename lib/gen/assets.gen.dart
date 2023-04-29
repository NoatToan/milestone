/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsColorsGen {
  const $AssetsColorsGen();

  /// File path: assets/colors/colors.xml
  String get colors => 'assets/colors/colors.xml';

  /// List of all assets
  List<String> get values => [colors];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bg_1.jpg
  AssetGenImage get bg1 => const AssetGenImage('assets/images/bg_1.jpg');

  /// File path: assets/images/bg_2.jpg
  AssetGenImage get bg2 => const AssetGenImage('assets/images/bg_2.jpg');

  /// File path: assets/images/bg_3.jpg
  AssetGenImage get bg3 => const AssetGenImage('assets/images/bg_3.jpg');

  /// File path: assets/images/bg_4.jpg
  AssetGenImage get bg4 => const AssetGenImage('assets/images/bg_4.jpg');

  /// File path: assets/images/bg_5.jpg
  AssetGenImage get bg5 => const AssetGenImage('assets/images/bg_5.jpg');

  /// File path: assets/images/food_empty_image.svg
  SvgGenImage get foodEmptyImage =>
      const SvgGenImage('assets/images/food_empty_image.svg');

  /// File path: assets/images/ic_bookmark.svg
  SvgGenImage get icBookmark =>
      const SvgGenImage('assets/images/ic_bookmark.svg');

  /// File path: assets/images/ic_cta.svg
  SvgGenImage get icCta => const SvgGenImage('assets/images/ic_cta.svg');

  /// File path: assets/images/ic_heart.svg
  SvgGenImage get icHeart => const SvgGenImage('assets/images/ic_heart.svg');

  /// File path: assets/images/ic_home.svg
  SvgGenImage get icHome => const SvgGenImage('assets/images/ic_home.svg');

  /// File path: assets/images/ic_instagram.svg
  SvgGenImage get icInstagram =>
      const SvgGenImage('assets/images/ic_instagram.svg');

  /// File path: assets/images/ic_messenger.svg
  SvgGenImage get icMessenger =>
      const SvgGenImage('assets/images/ic_messenger.svg');

  /// File path: assets/images/ic_plane_share.svg
  SvgGenImage get icPlaneShare =>
      const SvgGenImage('assets/images/ic_plane_share.svg');

  /// File path: assets/images/ic_red_heart.svg
  SvgGenImage get icRedHeart =>
      const SvgGenImage('assets/images/ic_red_heart.svg');

  /// File path: assets/images/ic_rounded_add.svg
  SvgGenImage get icRoundedAdd =>
      const SvgGenImage('assets/images/ic_rounded_add.svg');

  /// File path: assets/images/ic_search.svg
  SvgGenImage get icSearch => const SvgGenImage('assets/images/ic_search.svg');

  /// File path: assets/images/ic_thinking_cloud.svg
  SvgGenImage get icThinkingCloud =>
      const SvgGenImage('assets/images/ic_thinking_cloud.svg');

  /// File path: assets/images/ic_user_account.svg
  SvgGenImage get icUserAccount =>
      const SvgGenImage('assets/images/ic_user_account.svg');

  /// List of all assets
  List<dynamic> get values => [
        bg1,
        bg2,
        bg3,
        bg4,
        bg5,
        foodEmptyImage,
        icBookmark,
        icCta,
        icHeart,
        icHome,
        icInstagram,
        icMessenger,
        icPlaneShare,
        icRedHeart,
        icRoundedAdd,
        icSearch,
        icThinkingCloud,
        icUserAccount
      ];
}

class $AssetsRivGen {
  const $AssetsRivGen();

  /// File path: assets/riv/icons.riv
  String get icons => 'assets/riv/icons.riv';

  /// List of all assets
  List<String> get values => [icons];
}

class Assets {
  Assets._();

  static const $AssetsColorsGen colors = $AssetsColorsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsRivGen riv = $AssetsRivGen();
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
