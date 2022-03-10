class danhmuc {
  final int? id;
  final String ten;
  final int trangthai;
  danhmuc(this.id, this.trangthai,this.ten);

  danhmuc.fromJson(Map<String, dynamic> json) :
        this.id = json["idLSP"],
        this.ten = json["TENLOAISP"],
        this.trangthai= json["TRANGTHAI"];

  Map<String, dynamic> toJson() =>{
    "idLSP" : id,
    "TENLOAISP":ten  ,
    "TRANGTHAI":trangthai
  };
}