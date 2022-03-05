

class taikhoan {
  int uid ;
  String id; //ma khach hang
  String image_url;
  //String name; //ho va ten
  String username; //ten dang nhap
  String password; //ten dang nhap
  String email; //email
  //String address; //dia chi
  String phone; //so dien thoai
  int status; // trang thai
  //String gender; // gioi tinh
  //String social_media_account; //tai khoan mang xa hoi
  //DateTime birthday;
  String created; //ngay tao
  String? updated; //ngay sua
  //String? deleted;


  taikhoan({
    required this.uid,
    required this.id,
    required this.image_url,
    //required this.name,
    required this.username,
    required this.email,
    required this.password,
   // required this.address,
    required this.phone,
    required this.status, // trang thai
    //required this.gender, // gioi tinh
    //required this.social_media_account, //tai khoan mang xa hoi
    //required this.birthday,
    required this.created, //ngay tao
    required this.updated, //ngay sua
    //required this.deleted, //ngay xoa

  });

  taikhoan.fromJson(Map<String, dynamic> json)
  :     uid= json['id'],
        id = json['MAKHACHHANG'],
        username = json['TENHIENTHI'],
        image_url=json['ANH'],
        password = json['MATKHAU'],
        phone = json['SODIENTHOAI'],
        email = json['EMAIL'],
        status = json['TRANGTHAI'],

        created = json['created_at'],
        updated = json['updated_at'];

         // name = json['HOVATEN'],
         // address =json['DIACHI'],
         // gender = json['GIOITINH'],
         //
         // birthday = json['NGAYSINH'],
         //
         // deleted = json['NGAYXOA'] ;



   Map<String, dynamic> toJson() {
     final Map<String, dynamic> data = <String, dynamic>{};
     data['id_customer'] = id;
     //data['name'] = name;
     data['username'] = username;
     data['email'] = email;
     //data['address'] = address;
     data['phone'] = phone;
     return data;
   }
}
