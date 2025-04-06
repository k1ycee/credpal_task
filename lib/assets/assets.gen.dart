/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/svg
  $AssetsImagesSvgGen get svg => const $AssetsImagesSvgGen();
}

class $AssetsImagesSvgGen {
  const $AssetsImagesSvgGen();

  /// File path: assets/images/svg/Notification dot.svg
  SvgGenImage get notificationDot =>
      const SvgGenImage('assets/images/svg/Notification dot.svg');

  /// File path: assets/images/svg/casper.svg
  SvgGenImage get casper => const SvgGenImage('assets/images/svg/casper.svg');

  /// File path: assets/images/svg/dreamworks.svg
  SvgGenImage get dreamworks =>
      const SvgGenImage('assets/images/svg/dreamworks.svg');

  /// File path: assets/images/svg/hubmart.svg
  SvgGenImage get hubmart => const SvgGenImage('assets/images/svg/hubmart.svg');

  /// File path: assets/images/svg/imatestores.svg
  SvgGenImage get imatestores =>
      const SvgGenImage('assets/images/svg/imatestores.svg');

  /// File path: assets/images/svg/iphone.svg
  SvgGenImage get iphone => const SvgGenImage('assets/images/svg/iphone.svg');

  /// File path: assets/images/svg/iphone12.svg
  SvgGenImage get iphone12 =>
      const SvgGenImage('assets/images/svg/iphone12.svg');

  /// File path: assets/images/svg/just_used.svg
  SvgGenImage get justUsed =>
      const SvgGenImage('assets/images/svg/just_used.svg');

  /// File path: assets/images/svg/justrite.svg
  SvgGenImage get justrite =>
      const SvgGenImage('assets/images/svg/justrite.svg');

  /// File path: assets/images/svg/nokia.svg
  SvgGenImage get nokia => const SvgGenImage('assets/images/svg/nokia.svg');

  /// File path: assets/images/svg/ogabassey.svg
  SvgGenImage get ogabassey =>
      const SvgGenImage('assets/images/svg/ogabassey.svg');

  /// File path: assets/images/svg/okayfones.svg
  SvgGenImage get okayfones =>
      const SvgGenImage('assets/images/svg/okayfones.svg');

  /// File path: assets/images/svg/orile.svg
  SvgGenImage get orile => const SvgGenImage('assets/images/svg/orile.svg');

  /// File path: assets/images/svg/pointek.svg
  SvgGenImage get pointek => const SvgGenImage('assets/images/svg/pointek.svg');

  /// File path: assets/images/svg/scan.svg
  SvgGenImage get scan => const SvgGenImage('assets/images/svg/scan.svg');

  /// File path: assets/images/svg/search-normal.svg
  SvgGenImage get searchNormal =>
      const SvgGenImage('assets/images/svg/search-normal.svg');

  /// File path: assets/images/svg/slot.svg
  SvgGenImage get slot => const SvgGenImage('assets/images/svg/slot.svg');

  /// File path: assets/images/svg/soundcore.svg
  SvgGenImage get soundcore =>
      const SvgGenImage('assets/images/svg/soundcore.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    notificationDot,
    casper,
    dreamworks,
    hubmart,
    imatestores,
    iphone,
    iphone12,
    justUsed,
    justrite,
    nokia,
    ogabassey,
    okayfones,
    orile,
    pointek,
    scan,
    searchNormal,
    slot,
    soundcore,
  ];
}

class CredpalAssets {
  const CredpalAssets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
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
    _svg.SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
