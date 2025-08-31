abstract class Assets {
  static final svgIcons = _SvgIcons();
  static final pngIcons = _PngIcons();

  static final pngImages = _PngImages();
}

class _PngImages {
  final String avatar = "assets/images/avatar.png";
}

class _SvgIcons {
  final String foruiLight = "assets/icons/forui-light.svg";
  final String googleGLogo = "assets/icons/google-g-logo.svg";
}

class _PngIcons {
  final String icon = "assets/icons/icon.png";
  final String defaultImagePlaceholder =
      "assets/icons/default-image-placeholder.png";
}
