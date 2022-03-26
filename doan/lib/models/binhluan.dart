class binhluan {
  final int id;
  final String makhachhang;
  final String masanpham ;
  final String noidung ;
  final int trangthai ;






  binhluan(this.makhachhang, this.masanpham, this.noidung, this.trangthai,this.id);

  binhluan.fromJson(Map<String, dynamic> json) :
        this.id = json["idBL"],
        this.makhachhang = json["MAKHACHHANG"],
        this.masanpham = json["MASANPHAM"],
        this.noidung = json["NOIDUNG"],
        this.trangthai = json["TRANGTHAI"];

  Map<String, dynamic> toJson() =>{
    "idBL" : id,
    "MAKHACHHANG":makhachhang ,
    "MASANPHAM":masanpham ,
    "NOIDUNG":noidung ,
    "TRANGTHAI":trangthai
  };
}