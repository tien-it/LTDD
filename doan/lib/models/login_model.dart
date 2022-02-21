class LoginReponseModel{
  final String token;
  final String message;

  LoginReponseModel({required this.token,required this.message});

  factory LoginReponseModel.fromJson(Map<String , dynamic> json){
    return LoginReponseModel(token: json["token"] != null ? json["token"]: "", message: json["message"] != null ? json["message"]:"");
  }
}
class LoginRequestModel{
  String? phone;
  String? password;

  LoginRequestModel(String body, {
     this.phone,
     this.password,
  });

  Map<String ,dynamic> toJson(){
    final Map<String ,dynamic> map = <String, dynamic>{};

      map['phone'] = phone;
      map['password'] = password;
      return map;
    }  
}
   


// class LoginResponseModel {
//   final String token;
//   final String message;

//   LoginResponseModel({required this.token,required this.message});

//   factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
//     return LoginResponseModel(
//       token: json["token"] != null ? json["token"] : "",
//       message: json["message"] != null ? json["message"] : "",
//     );
//   }
// }

// class LoginRequestModel {
//   String phone;
//   String password;

//   LoginRequestModel({
//     required this.phone,
//     required this.password,
//   });

//   Map<String, dynamic> toJson() {
//     Map<String, dynamic> map = {
//       'phone': phone.trim(),
//       'password': password.trim(),
//     };

//     return map;
//   }
// }

