class giohang {
  final int? id;
  final String makhachhang;
  final String masanpham;
  final int soluong ;
  final int dongia ;






  giohang(this.id, this.makhachhang, this.masanpham, this.soluong, this.dongia);

 giohang.fromJson(Map<String, dynamic> json) :
        this.id = json["idGH"],
        this.makhachhang = json["MAKHACHHANG"],
        this.masanpham = json["NOIDUNG"],
        this.soluong = json["BIETDANH"],
        this.dongia= json["TRANGTHAI"] ;

  Map<String, dynamic> toJson() =>{
    "idGH" : id,
    "MAKHACHHANG":makhachhang  ,
    "MASANPHAM":masanpham ,
    "SOLUONG":soluong ,
    "DONGIA":dongia
  };
}