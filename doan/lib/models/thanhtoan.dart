class thanhtoan {
  final int? id;
  final String makhachhang;
  final String? momo;
  final String? zalo ;
  final String? vnpay ;
  final String? createdit;

  thanhtoan(this.id, this.makhachhang, this.momo, this.zalo, this.vnpay, this.createdit);

  thanhtoan.fromJson(Map<String, dynamic> json) :
        this.id = json["idTT"],
        this.makhachhang = json["MAKHACHHANG"],
        this.momo = json["MOMO"],
        this.zalo = json["ZALO"],
        this.vnpay = json["VNPAY"],
        this.createdit= json["CREATEDIT"];

  Map<String, dynamic> toJson() =>{
    "idTT" : id,
    "MAKHACHHANG":makhachhang  ,
    "MOMO":momo ,
    "ZALO":zalo ,
    "VNPAY":vnpay,
    "CREATEDIT": createdit
  };
}