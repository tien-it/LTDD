
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreatePassPage extends StatefulWidget {
  const CreatePassPage({Key? key}) : super(key: key);
  @override
  State<CreatePassPage> createState() => _CreatePassPageState();
}
bool isHiddenPassword1 = true;
bool isHiddenPassword2 = true;

class _CreatePassPageState extends State<CreatePassPage> {
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
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            }
          ),
          title: const Align(
            child: Text(
              'Điền thông tin',
              style: TextStyle(
              fontSize: 20,
              ),
            ),
            alignment: Alignment.centerLeft,
          ),                
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,   
          automaticallyImplyLeading: false,      
        ),
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(                
            crossAxisAlignment: CrossAxisAlignment.start,                  
            children:<Widget> [   
              textSignUp,
              const SizedBox(height: 5,),
              textDescription,
              const SizedBox(height: 35,),
              textfieldSignUpName,
              const SizedBox(height: 15,),
              textfieldEmail,
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Column(
                  children:  <Widget>[
                    TextField(   
                      autocorrect: false,
                      obscureText: isHiddenPassword1,
                      style: const TextStyle
                        (
                          fontSize: 20,                     
                        ),
                      decoration: InputDecoration(   
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon:InkWell(
                        onTap: _togglePasswordView1,
                        child: const  Icon(Icons.visibility),
                        ),
                        labelText:  "Nhập mật khẩu",     
                        border: const OutlineInputBorder( 
                          borderRadius:  BorderRadius.all(Radius.circular(20.0)),
                        ),        
                      ),        
                      keyboardType: TextInputType.text,     
                      textInputAction: TextInputAction.next,                             
                    ),    
                  ],
                ),
              ),
              const SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 30),
                child: Column(
                  children:  <Widget>[
                    TextField(   
                      autocorrect: false,
                      obscureText: isHiddenPassword2,
                      style: const TextStyle
                        (
                          fontSize: 20,                     
                        ),
                      decoration: InputDecoration(   
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon:InkWell(
                        onTap: _togglePasswordView2,
                        child: const  Icon(Icons.visibility),
                        ),
                        labelText:  "Nhập lại mật khẩu",     
                        border: const OutlineInputBorder( 
                          borderRadius:  BorderRadius.all(Radius.circular(20.0)),
                        ),        
                      ),        
                      keyboardType: TextInputType.text,     
                      textInputAction: TextInputAction.next,                             
                    ),    
                  ],
                ),
              ),
              const SizedBox(height: 100,),
              buttondangki
            ]
          ),
        )
      ),
    );
  }
  void _togglePasswordView1(){
    setState((){
      isHiddenPassword1 = !isHiddenPassword1;
    });
  }
  void _togglePasswordView2(){
    setState((){
      isHiddenPassword2 = !isHiddenPassword2;
    });
  }
}
Widget textSignUp = Padding(
  padding: const EdgeInsets.only(left: 30,top: 30),
  child: Column(
    children: const <Widget>[
      Text(
        'Đăng kí tài khoản',
        style: TextStyle(
          fontSize: 30,
          color: Colors.red,
        ),
      ),
    ],
  ),
);

Widget textDescription = Padding(
  padding: const EdgeInsets.only(left: 30),
  child: Column(
    children: const <Widget>[
      Text(
        'Vui lòng điền thông tin đăng kí',
        style: TextStyle(
          fontSize: 15,
          color: Colors.red,
        ),
      ),
    ],
  ),
);

Widget textfieldSignUpName = Padding(
  padding: const EdgeInsets.only(left: 30,right: 30),
  child: Column(
    children: const <Widget>[
      TextField(   
        cursorColor: Colors.blue,
        style: TextStyle(
          fontSize: 20
        ),
        decoration: InputDecoration(   
          prefixIcon:Icon(Icons.person),      
          labelText: 'Tên đăng nhập',
          border: OutlineInputBorder( 
            borderRadius:  BorderRadius.all(Radius.circular(20.0)),
          ),
        ),        
        keyboardType: TextInputType.text,     
        textInputAction: TextInputAction.next,                 
    ),     
    ],
  ),
);

Widget textfieldEmail = Padding(
  padding: const EdgeInsets.only(left: 30,right: 30),
  child: Column(
    children: const <Widget>[
      TextField(   
        cursorColor: Colors.blue,
        style: TextStyle(
          fontSize: 20
        ),
        decoration: InputDecoration(         
          labelText: 'Email',
          prefixIcon:Icon(Icons.email),
          border: OutlineInputBorder(          
            borderRadius:  BorderRadius.all(Radius.circular(20.0)),
            
          ),
        ),        
        keyboardType: TextInputType.emailAddress,     
        textInputAction: TextInputAction.next,                  
    ),     
    ],
  ),
);

Widget buttondangki =  Column(
  children:<Widget> [
    const Padding(
      padding: EdgeInsets.only(left: 500)
    ),
    ElevatedButton(
      onPressed:() {       
      }, 
      child: const Text(       
        'Tạo tài khoản',
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
  ],        
);