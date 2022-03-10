class diachi {
  final int? id;
  final String makhachhang;
  final String noidung ;
  final String bietdanh ;
  final int trangthai ;






  diachi(this.id, this.makhachhang, this.noidung, this.bietdanh, this.trangthai);

  diachi.fromJson(Map<String, dynamic> json) :
        this.id = json["idBL"],
        this.makhachhang = json["MAKHACHHANG"],
        this.noidung = json["NOIDUNG"],
        this.bietdanh = json["BIETDANH"],
        this.trangthai = json["TRANGTHAI"] ;

  Map<String, dynamic> toJson() =>{
    "idBL" : id,
    "MAKHACHHANG":makhachhang  ,
    "NOIDUNG":noidung ,
    "BIETDANH":bietdanh ,
    "TRANGTHAI":trangthai
  };
}