import 'package:dio/dio.dart';
import 'package:doan/api/apiservice.dart';
import 'package:doan/models/login_model.dart';
import 'package:doan/presenters/account/show.dart';
import 'package:doan/views/ForgotPassword/phonepage.dart';
import 'package:doan/views/Login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PassWordPage extends StatefulWidget {
  final String data;
  const PassWordPage({Key? key, required this.data}) : super(key: key);

  @override
  State<PassWordPage> createState() => _PassWordPageState(this.data);
}

bool isHiddenPassword = true;

class _PassWordPageState extends State<PassWordPage> {
  final ScaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> globalKey = new GlobalKey<FormState>();
  final data;
  _PassWordPageState(this.data);
  final password = TextEditingController();

  late LoginRequestModel loginRequestModel;
  @override
  void initState(){
    super.initState();
    loginRequestModel = new LoginRequestModel(phone: "", password:"" );
  }
  @override
  Widget build(BuildContext context) {   
    return GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.unfocus();
          }
        },
        
        child: Scaffold(
          key: globalKey,
          body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 30,
            ),
            iconBack(context),
            const SizedBox(
              height: 40,
            ),
            textPass,
            const SizedBox(
              height: 10,
            ),
            textdescription,
            const SizedBox(
              height: 5,
            ),
            textphone(data),
            const SizedBox(
              height: 35,
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                child: Column(
                  children: <Widget>[
                    TextField(
                      autocorrect: false,
                      obscureText: isHiddenPassword,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      decoration: InputDecoration(
                        suffixIcon: InkWell(
                          onTap: _togglePasswordView,
                          child: const Icon(Icons.visibility),
                        ),
                        hintText: "Mật khẩu",
                      ),
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.done,
                      controller: password,
                      onChanged: (input) => loginRequestModel.password = input,
                    ),
                  ],
                )),
            const SizedBox(
              height: 400,
            ),
            Column(
              children: <Widget>[
                const Padding(padding: EdgeInsets.only(left: 500)),
                ElevatedButton(
                  onPressed: () {
                    // var user = LoginRequestModel(phone: data,password:password.text);
                    APIservice.login( data, password.text);
                    print(data);
                  },
                  child: const Text(
                    'Đăng nhập',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                style: TextButton.styleFrom(
                  minimumSize: const Size(355, 40),
                  backgroundColor: Colors.red,
                ),
                ),
              ],
            ),
            
            const SizedBox(
              height: 10,
            ),
            textOption,
          ]),
        )));

        
  }
  
  // bool validateAndSave(){
  //   final form = globalKey.currentState; 
  //   if(form.validate()){
  //     form.save();
  //     return true;
  //   }
  //   return false;
  // }
  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  
}

Widget iconBack(BuildContext context) {
  return Column(
    children: [
      const Padding(padding: EdgeInsets.only(left: 70)),
      IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 30),
      )
    ],
  );
}

Widget textPass = Column(
  children: const [
    Padding(padding: EdgeInsets.only(left: 220)),
    Text(
      'Nhập mật khẩu',
      style: TextStyle(
        fontSize: 26,
      ),
    ),
  ],
);

Widget textdescription = Column(
  children: const [
    Padding(padding: EdgeInsets.only(left: 400)),
    Text(
      'Vui lòng nhập mật khẩu RealEState của số điện thoại',
      style: TextStyle(
        fontSize: 15,
      ),
    ),
  ],
);
Widget textphone(final data){
  return Column(
    children:  <Widget>[
    const Padding(padding: EdgeInsets.only(left: 150)),
    Text(
      '$data',
      style: const TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
    ),
  ],
  );
}
// Widget textphone = Column(
//   children: const <Widget>[
//     Padding(padding: EdgeInsets.only(left: 150)),
//     Text(
//       'sdt',
//       style: TextStyle(
//         fontSize: 18,
//         color: Colors.blue,
//       ),
//     ),
//   ],
// );

// Widget buttondangnhap = Column(
//   children: <Widget>[
//     const Padding(padding: EdgeInsets.only(left: 500)),
//     ElevatedButton(
//       onPressed: () {
//         if(validateAndSave)
//       },
//       child: const Text(
//         'Đăng nhập',
//         style: TextStyle(
//           fontSize: 15,
//           color: Colors.white,
//         ),
//       ),
//       style: TextButton.styleFrom(
//         minimumSize: const Size(355, 40),
//         backgroundColor: Colors.red,
//       ),
//     ),
//   ],
// );

Widget textOption = Padding(
  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      TextButton(
        onPressed: () {},
        child: const Text(
          "Quên mật khẩu?",
          style: TextStyle(fontSize: 13, color: Color(0xFF1565C0)),
        ),
      ),
      TextButton(
        onPressed: () {},
        child: const Text(
          "Đăng nhập bằng SMS",
          style: TextStyle(fontSize: 13, color: Color(0xFF1565C0)),
        ),
      ),
    ],
  ),
);
