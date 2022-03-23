class giohang {
  final int id;
  final String makhachhang;
  final int masanpham;
  final int soluong ;
  final int dongia ;
  final String createAt;
  final String updateAt;





  giohang(this.id, this.makhachhang, this.masanpham, this.soluong, this.dongia , this.createAt, this.updateAt);

 giohang.fromJson(Map<String, dynamic> json) :
        this.id = json["idGH"],
        this.makhachhang = json["MAKHACHHANG"],
        this.masanpham = json["MACHITIETSANPHAM"],
        this.soluong = json["SOLUONG"],
        this.dongia= json["GIA"] ,
        this.createAt = json["created_at"],
        this.updateAt = json["updated_at"];

  Map<String, dynamic> toJson() =>{
    "idGH" : id,
    "MAKHACHHANG":makhachhang  ,
    "MACHITIETSANPHAM":masanpham ,
    "SOLUONG":soluong ,
    "DONGIA":dongia
  };
}