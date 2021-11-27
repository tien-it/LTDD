import 'package:doan/views/Login/password.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfirmPhoneNumberPage extends StatefulWidget {
  const ConfirmPhoneNumberPage({Key? key}) : super(key: key);
  @override
  State<ConfirmPhoneNumberPage> createState() => _ConfirmPhoneNumberPageState();
}

class _ConfirmPhoneNumberPageState extends State<ConfirmPhoneNumberPage> {
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
        appBar: AppBar(
          title: const Align(
            child: Text(
              'Xác minh số điện thoại',
              style: TextStyle(
              fontSize: 20,
              ),
            ),
            alignment: Alignment.center,
          ),                
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,         
        ),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(                
            crossAxisAlignment: CrossAxisAlignment.start,           
            children:<Widget> [   
              const SizedBox(height: 50,), 
              textcode,   
              const SizedBox(height: 10,),                              
              textdescription,
              const SizedBox(height: 10,),
              textfieldcode,
              const SizedBox(height: 50,),  
              buttonconfrim
            ]
          ),
        )
      ),
    );
  }
}

Widget textcode = Column(
  children: const <Widget>[
    Padding(padding: EdgeInsets.only(left: 255)),
    Text(
      'Nhập mã xác minh',
      style:TextStyle(
        fontSize: 26,       
      ),
    ),
  ],
);

Widget textdescription = Padding(
  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
  child: Column(
    children: const <Widget>[   
      Text(
        'Để xác minh số điện thoại của bạn, nhập mã gồm 6 chữ '
        'số vừa được gửi tới 0829912585',
        style:TextStyle(
          fontSize: 15,       
        ),
      ),
    ],
  ),
); 


Widget textfieldcode=  const Padding(   
    padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
    child: TextField(   
      cursorColor: Colors.blue,
      autocorrect: false,
      style: TextStyle
      (
        fontSize: 20,
        
      ),
      decoration: InputDecoration(         
        hintText:  "Mã xác nhận",             
      ),        
      keyboardType: TextInputType.number,     
      textInputAction: TextInputAction.done,     
      maxLength: 6,              
    ),     
);

Widget buttonconfrim =  Padding(
  padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
  child:  
    ElevatedButton(
      onPressed:() {}, 
      child: const Text(
        'Xác nhận',
      style: TextStyle(
        fontSize: 20,       
        color: Colors.white,
      ),
      ),
      style: TextButton.styleFrom(                     
        minimumSize: const Size(355,40),     
        backgroundColor: Colors.red,                
      ),
    ),         
);