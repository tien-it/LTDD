class Icons {
  static const String Logo = "icons/logo02.jpg";

  ///Singleton factory
  static final Icons _instance = Icons._internal();

  factory Icons() {
    return _instance;
  }

  Icons._internal();
}
