class Product {
  int? id;
  int? maloaisp;
  String? tensp;
  String? giaban;
  int? soluongton;
  int? trangthai;
  String? hinhanh;
  String? mota;
  String? createdAt;
  String? updatedAt;
  int? masanpham;
  int? machitietsanpham;
  String? thuonghieu;
  String? noisanxuat;
  String? chatlieu;
  String? phongcach;
  String? mausac;
  int? chieudai;
  int? chieurong;
  String? baohanh;

  Product({this.id, this.maloaisp, this.tensp, this.giaban, this.soluongton, this.trangthai, this.hinhanh, this.mota, this.createdAt, this.updatedAt, this.masanpham, this.machitietsanpham, this.thuonghieu, this.noisanxuat, this.chatlieu, this.phongcach, this.mausac, this.chieudai, this.chieurong, this.baohanh});

  Product.fromJson(Map<String, dynamic> json) {
    this.id = json["id"];
    this.maloaisp = json["MALOAISP"];
    this.tensp = json["TENSP"];
    this.giaban = json["GIABAN"];
    this.soluongton = json["SOLUONGTON"];
    this.trangthai = json["TRANGTHAI"];
    this.hinhanh = json["HINHANH"];
    this.mota = json["MOTA"];
    this.createdAt = json["created_at"];
    this.updatedAt = json["updated_at"];
    this.masanpham = json["MASANPHAM"];
    this.machitietsanpham = json["MACHITIETSANPHAM"];
    this.thuonghieu = json["THUONGHIEU"];
    this.noisanxuat = json["NOISANXUAT"];
    this.chatlieu = json["CHATLIEU"];
    this.phongcach = json["PHONGCACH"];
    this.mausac = json["MAUSAC"];
    this.chieudai = json["CHIEUDAI"];
    this.chieurong = json["CHIEURONG"];
    this.baohanh = json["BAOHANH"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data["id"] = this.id;
    data["MALOAISP"] = this.maloaisp;
    data["TENSP"] = this.tensp;
    data["GIABAN"] = this.giaban;
    data["SOLUONGTON"] = this.soluongton;
    data["TRANGTHAI"] = this.trangthai;
    data["HINHANH"] = this.hinhanh;
    data["MOTA"] = this.mota;
    data["created_at"] = this.createdAt;
    data["updated_at"] = this.updatedAt;
    data["MASANPHAM"] = this.masanpham;
    data["MACHITIETSANPHAM"] = this.machitietsanpham;
    data["THUONGHIEU"] = this.thuonghieu;
    data["NOISANXUAT"] = this.noisanxuat;
    data["CHATLIEU"] = this.chatlieu;
    data["PHONGCACH"] = this.phongcach;
    data["MAUSAC"] = this.mausac;
    data["CHIEUDAI"] = this.chieudai;
    data["CHIEURONG"] = this.chieurong;
    data["BAOHANH"] = this.baohanh;
    return data;
  }
}