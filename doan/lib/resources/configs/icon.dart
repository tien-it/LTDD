class MyIcons {
  static const String seater_sofa = "assets/icons/seater-sofa.png";
  static const String home_detor = "assets/icons/home-decor.png";
  static const String bath = "assets/icons/bath.png";
  static const String kitchen = "assets/icons/kitchen.png";
  static const String electrical = "assets/icons/electrical-appliance.png";
  static const String double_bed = "assets/icons/double-bed.png";
  static const String coupon = "assets/icons/coupon.png";
  static const String more = "assets/icons/more.png";
  ///Singleton factory
  static final MyIcons _instance = MyIcons._internal();

  factory MyIcons() {
    return _instance;
  }

  MyIcons._internal();
}
