class Product {
   final int id;
  final int maloaisp;
   final String tensp;
   final int giaban;
   final int soluongton;
   final int trangthai;
   final String hinhanh;
   final String mota;
   final String createdAt;
   final String updatedAt;
   final int masanpham;
   final int machitietsanpham;
   final String thuonghieu;
   final String noisanxuat;
   final String chatlieu;
   final String phongcach;
   final String mausac;
   final int chieudai;
   final int chieurong;
   final String baohanh;

  Product({ required this.id, required this.maloaisp,required this.tensp,required this.giaban, required this.soluongton,required this.trangthai,required this.hinhanh,required this.mota,required this.createdAt,required this.updatedAt,required this.masanpham,required this.machitietsanpham, required this.thuonghieu, required this.noisanxuat,required this.chatlieu, required this.phongcach,required this.mausac,required this.chieudai,required this.chieurong, required  this.baohanh});

  Product.fromJson(Map<String, dynamic> json) :
    this.id = json["id"],
    this.maloaisp = json["MALOAISP"],
    this.tensp = json["TENSP"],
    this.giaban = json["GIABAN"],
    this.soluongton = json["SOLUONGTON"],
    this.trangthai = json["TRANGTHAI"],
    this.hinhanh = json["HINHANH"],
    this.mota = json["MOTA"],
    this.createdAt = json["created_at"],
    this.updatedAt = json["updated_at"],
    this.masanpham = json["MASANPHAM"],
    this.machitietsanpham = json["MACHITIETSANPHAM"],
    this.thuonghieu = json["THUONGHIEU"],
    this.noisanxuat = json["NOISANXUAT"],
    this.chatlieu = json["CHATLIEU"],
    this.phongcach = json["PHONGCACH"],
    this.mausac = json["MAUSAC"],
    this.chieudai = json["CHIEUDAI"],
    this.chieurong = json["CHIEURONG"],
    this.baohanh = json["BAOHANH"];


  Map<String, dynamic> toJson() =>{
    "id" : id,
    "MALOAISP" : maloaisp,
    "TENSP" : tensp,
    "GIABAN"  : giaban,
   "SOLUONGTON" : soluongton,
   "TRANGTHAI" : trangthai,
   "HINHANH" : hinhanh,
   "MOTA": mota,
    "created_at" : createdAt,
   "updated_at" : updatedAt,
   "MASANPHAM" :masanpham,
    "MACHITIETSANPHAM" : machitietsanpham,
    "THUONGHIEU": thuonghieu,
   "NOISANXUAT": noisanxuat,
    "CHATLIEU"  :chatlieu,
    "PHONGCACH" : phongcach,
    "MAUSAC": mausac,
    "CHIEUDAI" : chieudai,
    "CHIEURONG" : chieurong,
    "BAOHANH" :baohanh,
  };
}