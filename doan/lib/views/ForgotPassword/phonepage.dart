import 'package:doan/views/ForgotPassword/confirmphonenumber2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgotPassWordPage extends StatefulWidget {
  const ForgotPassWordPage({Key? key}) : super(key: key);
  @override
  State<ForgotPassWordPage> createState() => _ForgotPassWordPageState();
}

  bool isHiddenPassWord = true;
  
class _ForgotPassWordPageState extends State<ForgotPassWordPage> {
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
              const SizedBox(height: 35,),
              textphone,
              const SizedBox(height: 35,),
              phone,
              const SizedBox(height: 350,),
              buttongetpass(context),
              const SizedBox(height: 10,),
              textOption,
            ]
          ),
        )
      )
   );  
  }
  void _togglePassWordView(){
    setState((){
      isHiddenPassWord = !isHiddenPassWord;
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
    Padding(padding: EdgeInsets.only(left: 240)),
    Text(
      'Qu??n m???t kh???u ?',
      style:TextStyle(
        fontSize: 26,
        
      ),
    ),
  ],
);
Widget phone = Padding(
  padding: const EdgeInsets.fromLTRB(25,0,25,0),
    child: Column(
      children: const  <Widget> [
        TextField(   
          autocorrect: false,
          style: TextStyle
            (
              fontSize: 20,                     
            ),
          decoration: InputDecoration(              
            hintText:  "S??? ??i???n tho???i / Email",             
          ),        
          keyboardType: TextInputType.number,     
          textInputAction: TextInputAction.done,
          maxLength: 10,
        )
      ]     
   )
);
Widget textdescription = Column(
  children: const [
    Padding(padding: EdgeInsets.only(left: 400)),
    Text(
      'Vui l??ng nh???p th??ng tin t??i kho???n ????? l???y l???i m???t kh???u',
      style:TextStyle(
        fontSize: 15,       
      ),
    ),
  ],
);
Widget textphone = Column(
  children: const <Widget>[
    Padding(padding: EdgeInsets.only(left: 220)),
    Text(
      'S??? ??i???n tho???i / Email',
      style:TextStyle(
        fontSize: 18,
        color: Colors.blue,
      ),
    ),
  ],
);
Widget buttongetpass(BuildContext context){
  return Column(
    children:<Widget> [
      const Padding(
       padding: EdgeInsets.only(left: 500)
      ),
      ElevatedButton(
        onPressed:() {  
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context) => const ConfirmPhoneNumberSecondPage()),
          );  
        }, 
        child: const Text(       
          'L???y l???i m???t kh???u',
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
}

Widget textOption= Padding(
  padding:const  EdgeInsets.fromLTRB(20, 0, 20, 0),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      TextButton(
      onPressed: (){}, 
      child: const Text(
        "?????i s??? ??i???n tho???i?",
        style: TextStyle(        
          fontSize: 13 ,         
          color: Color(0xFF1565C0)
        ),
      ),
    ),
    TextButton(
      onPressed: (){}, 
      child: const Text(
        "Li??n h??? Hotline 1900-6035",
        style: TextStyle(        
          fontSize: 13 ,         
          color: Color(0xFF1565C0)
        ),
      ),
    ),
    ],
  ),
);
  