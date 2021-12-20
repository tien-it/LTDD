
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateNewPassPage extends StatefulWidget {
  const CreateNewPassPage({Key? key}) : super(key: key);
  @override
  State<CreateNewPassPage> createState() => _CreateNewPassPageState();
}
bool isHiddenPassword1 = true;
bool isHiddenPassword2 = true;

class _CreateNewPassPageState extends State<CreateNewPassPage> {
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
              'Tạo mật khẩu mới',
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
              const SizedBox(height: 80,),
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
              const SizedBox(height: 30,),
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
                      textInputAction: TextInputAction.done,                             
                    ),    
                  ],
                ),
              ),
              const SizedBox(height: 100,),
              buttondangki(context)
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
        'Tạo mật khẩu',
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
        'Vui lòng nhập mới mật khẩu',
        style: TextStyle(
          fontSize: 15,
          color: Colors.red,
        ),
      ),
    ],
  ),
);
Widget buttondangki(BuildContext  context){
  return Column(
    children:<Widget> [
      const Padding(
        padding: EdgeInsets.only(left: 500)
      ),
      ElevatedButton(
        onPressed:() {       
        }, 
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
    ],
  );
}
