
part of 'assets_icons.dart';


const _ICONS_PATH = "assets/icons";

/// this class will be the base of all types of image, icons for this application
sealed class AppAssetIcon {
  final String _src;

  AppAssetIcon(this._src);

  String get src => _src;

  bool get isSVG => runtimeType == _IconSVG; //runtimeType is _IconSVG;
}

/// SVG type single icon holder class
class _IconSVG extends AppAssetIcon {
  _IconSVG(String assetName) : super("$_ICONS_PATH/svg/$assetName.svg");
}

/// PNG type single icon holder class
class _IconPNG extends AppAssetIcon {
  _IconPNG(String assetName) : super("$_ICONS_PATH/png/$assetName.png");
}