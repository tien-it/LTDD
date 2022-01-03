class Images {
  static const String Logo = "icons/logo02.jpg";
  static const String Icon = "assets/images/icon.png";
  ///Singleton factory
  static final Images _instance = Images._internal();

  factory Images() {
    return _instance;
  }

  Images._internal();
}
