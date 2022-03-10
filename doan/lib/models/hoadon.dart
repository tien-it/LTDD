class hoadon {
  final int? id;
  final String makhachhang;
  final String sdt;
  final String diachi ;
  final String ghichu ;
  final int giamgia;
  final int thanhtien ;
  final int trangthai;
  hoadon(this.id, this.makhachhang, this.sdt, this.diachi, this.ghichu, this.giamgia, this.thanhtien, this.trangthai,);

  hoadon.fromJson(Map<String, dynamic> json) :
        this.id = json["idHD"],
        this.makhachhang = json["MAKHACHHANG"],
        this.sdt = json["SDT"],
        this.diachi = json["DIACHI"],
        this.ghichu = json["GHICHU"],
        this.giamgia= json["GIAMGIA"],
        this.thanhtien= json["THANHTIEN"],
        this.trangthai= json["TRANGTHAI"];

  Map<String, dynamic> toJson() =>{
    "idGH" : id,
    "MAKHACHHANG":makhachhang  ,
    "SDT":sdt ,
    "DIACHI":diachi ,
    "GHICHU":ghichu,
    "GIAMGIA": giamgia ,
    "THANHTIEN":thanhtien ,
    "TRANGTHAI":trangthai
  };
}