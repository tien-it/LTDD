import 'package:doan/resources/configs/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfirmPhoneNumberPage extends StatefulWidget {
  final String data ;
  const ConfirmPhoneNumberPage({Key? key ,required this.data }) : super(key: key);
  @override
  State<ConfirmPhoneNumberPage> createState() => _ConfirmPhoneNumberPageState( this.data);
}

class _ConfirmPhoneNumberPageState extends State<ConfirmPhoneNumberPage> {
  final  String data ;
  _ConfirmPhoneNumberPageState(this.data);
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
          appBar: AppBar(
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
            title: const Align(
              child: Text(
                'Xác minh số điện thoại',
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
                children: <Widget>[
                  const SizedBox(
                    height: 50,
                  ),
                  textcode,
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Để xác minh số điện thoại của bạn, nhập mã gồm 6 chữ '
                              'số vừa được gửi tới ' + data,
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  textfieldcode,
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context,Routes.password , arguments: data.toString());
                        print(data);
                      },
                      child: const Text(
                        'Xác nhận',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      style: TextButton.styleFrom(
                        minimumSize: const Size(355, 40),
                        backgroundColor: Colors.red,
                      ),
                    ),
                  ),
                ]),
          )),
    );
  }
}

Widget textcode = Column(
  children: const <Widget>[
    Padding(padding: EdgeInsets.only(left: 255)),
    Text(
      'Nhập mã xác minh',
      style: TextStyle(
        fontSize: 26,
      ),
    ),
  ],
);
Widget textfieldcode = const Padding(
  padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
  child: TextField(
    cursorColor: Colors.blue,
    autocorrect: false,
    style: TextStyle(
      fontSize: 20,
    ),
    decoration: InputDecoration(
      hintText: "Mã xác nhận",
    ),
    keyboardType: TextInputType.number,
    textInputAction: TextInputAction.done,
    maxLength: 6,
  ),
);
