part of 'assets_images.dart';

const _IMAGES_PATH = "assets/images";

// this class will be the base of all types of image, icons for this application
sealed class AppAssetImage {
  final String _src;

  AppAssetImage(this._src);

  String get src => _src;

  bool get isSVG => runtimeType == _ImageSVG; //runtimeType is _IconSVG;
}

/// PNG type single Image holder class
class _ImagePNG extends AppAssetImage {
  _ImagePNG(String assetRoute) : super("$_IMAGES_PATH/png/$assetRoute.png");
}

/// SVG type single Image holder class
class _ImageSVG extends AppAssetImage {
  _ImageSVG(String assetRoute) : super("$_IMAGES_PATH/svg/$assetRoute.svg");
}
