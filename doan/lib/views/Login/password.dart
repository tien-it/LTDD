import 'package:doan/views/ForgotPassword/phonepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PassWordPage extends StatefulWidget {
  const PassWordPage({Key? key}) : super(key: key);
  @override
  State<PassWordPage> createState() => _PassWordPageState();
}

  bool isHiddenPassword = true;
  
class _PassWordPageState extends State<PassWordPage> {
  @override
  Widget build(BuildContext context){
  return GestureDetector(
      onTap: (){
        FocusScopeNode currentFocus = FocusScope.of(context);
        if(!currentFocus.hasPrimaryFocus){
            currentFocus.unfocus();
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(                
            crossAxisAlignment: CrossAxisAlignment.start,           
            children: [             
              const SizedBox(height: 30,),
              iconBack(context),
              const SizedBox(height: 40,),
              textPass,
              const SizedBox(height: 10,),
              textdescription,
              const SizedBox(height: 5,),
              textphone,
              const SizedBox(height: 35,),
              Padding(
                padding: const EdgeInsets.fromLTRB(25,0,25,0),
                child: Column(
                children: <Widget> [
                  TextField(   
                  autocorrect: false,
                  obscureText: isHiddenPassword,
                  style: const TextStyle
                    (
                      fontSize: 20,                     
                    ),
                  decoration: InputDecoration(   
                    suffixIcon:InkWell(
                      onTap: _togglePasswordView,
                      child: const  Icon(Icons.visibility),
                    ),
                  hintText:  "Mật khẩu",             
                  ),        
                  keyboardType: TextInputType.text,     
                  textInputAction: TextInputAction.done,                             
                  ), 
                ],  
              ) 
             ),
             const SizedBox(height: 400,),
             buttondangnhap,
             const SizedBox(height: 10,),
             textOption(context),
            ]
          ),
        )
      )
   );  
  }
  void _togglePasswordView(){
    setState((){
      isHiddenPassword = !isHiddenPassword;
    });
  }
}
Widget iconBack(BuildContext context){
  return Column(
    children:[
    const Padding(padding: EdgeInsets.only(left: 70)),
    IconButton(
      onPressed: (){
        Navigator.pop(context);
      }, 
      icon: const Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
        size: 30
      ),
    )
  ], 
  );
}

Widget textPass = Column(
  children: const [
    Padding(padding: EdgeInsets.only(left: 220)),
    Text(
      'Nhập mật khẩu',
      style:TextStyle(
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
      style:TextStyle(
        fontSize: 15,
        
      ),
    ),
  ],
);
Widget textphone = Column(
  children: const <Widget>[
    Padding(padding: EdgeInsets.only(left: 150)),
    Text(
      '0829912585',
      style:TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
    ),
  ],
);

Widget buttondangnhap =  Column(
  children:<Widget> [
    const Padding(
      padding: EdgeInsets.only(left: 500)
    ),
    ElevatedButton(
      onPressed:() {       
      }, 
      child: const Text(       
        'Đăng nhập',
      style: TextStyle(      
        fontSize: 15,       
        color: Colors.white,
      ),
      ),
      style: TextButton.styleFrom(                     
        minimumSize: const Size(355,40),     
        backgroundColor: Colors.red,                
      ),
      
    ), 
  ],        
);
Widget textOption(BuildContext context){
  return Padding(
    padding:const  EdgeInsets.fromLTRB(20, 0, 20, 0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        TextButton(
        onPressed: (){
          Navigator.push(context,  MaterialPageRoute(builder: (context) => const ForgotPassWordPage()));
        }, 
        child: const Text(
          "Quên mật khẩu?",
          style: TextStyle(        
            fontSize: 13 ,         
            color: Color(0xFF1565C0)
          ),
        ),
      ),
        TextButton(
          onPressed: (){}, 
          child: const Text(
            "Đăng nhập bằng SMS",
            style: TextStyle(        
              fontSize: 13 ,         
              color: Color(0xFF1565C0)
            ),
          ),
        ),
      ],
    ),
  );
} 

  