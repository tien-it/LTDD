

class taikhoan {
  String id; //ma khach hang
  String image_url;
  String name; //ho va ten
  String username; //ten dang nhap
  String password; //ten dang nhap
  String email; //email
  String address; //dia chi
  String phone; //so dien thoai
  int status; // trang thai
  String gender; // gioi tinh
  String social_media_account; //tai khoan mang xa hoi
  DateTime birthday;
  DateTime created; //ngay tao
  DateTime? updated; //ngay sua
  DateTime? deleted;


  taikhoan({
    required this.id,
    required this.image_url,
    required this.name,
    required this.username,
    required this.email,
    required this.password,
    required this.address,
    required this.phone,
    required this.status, // trang thai
    required this.gender, // gioi tinh
    required this.social_media_account, //tai khoan mang xa hoi
    required this.birthday,
    required this.created, //ngay tao
    required this.updated, //ngay sua
    required this.deleted, //ngay xoa

  });

  taikhoan.fromJson(Map<String, dynamic> json)
  :
        id = json['MAKHACHHANG'],
        image_url=json['ANHDAIDIEN'],
        name = json['HOVATEN'],
        username = json['TENDANGNHAP'],
        password = json['MATKHAU'],
        email = json['EMAIL'],
        address =json['DIACHI'],
        phone = json['SODIENTHOAI'],
        status = json['TRANGTHAI'],
        gender = json['GIOITINH'],
        social_media_account = json['TAIKHOANMXH'],
        birthday = json['NGAYSINH'],
        created = json['NGAYTAO'],
        updated = json['NGAYSUA'],
        deleted = json['NGAYXOA'] ;

   Map<String, dynamic> toJson() {
     final Map<String, dynamic> data = <String, dynamic>{};
     data['id_customer'] = id;
     data['name'] = name;
     data['username'] = username;
     data['email'] = email;
     data['address'] = address;
     data['phone'] = phone;
     return data;
   }
}
