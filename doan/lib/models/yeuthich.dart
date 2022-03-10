class yeuthich {
  final int? id;
  final String makhachhang;
  final String masanpham;

  yeuthich(this.id, this.makhachhang, this.masanpham,);

  yeuthich.fromJson(Map<String, dynamic> json) :
        this.id = json["idTT"],
        this.makhachhang = json["MAKHACHHANG"],
        this.masanpham =json["MASANPHAM"];

  Map<String, dynamic> toJson() =>{
    "idTT" : id,
    "MAKHACHHANG":makhachhang  ,
    "MASANPHAM":masanpham
  };
}