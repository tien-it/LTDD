import 'package:doan/resources/configs/routes.dart';
import 'package:doan/views//Login/password.dart';
import 'package:doan/views/SignUp/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 23),
                child: imageHead,
              ),
              const SizedBox(
                height: 5,
              ),
              texthelo,
              const SizedBox(
                height: 3,
              ),
              textlogin,
              const SizedBox(
                height: 10,
              ),
              textPhone,
              const SizedBox(
                height: 1,
              ),
              const SizedBox(
                height: 10,
              ),
              buttoncontineu(context),
              const SizedBox(
                height: 1,
              ),
              textSignUp(context),
              const SizedBox(
                height: 70,
              ),
              textcontineu,
              iconLoginAnother,
              textRules
            ],
          ),
        ),
      ),
    );
  }
}

Widget buttoncontineu(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(30, 0, 30, 20),
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PassWordPage()),
        );
      },
      child: const Text(
        'Ti???p t???c',
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
  );
}

Widget imageHead = Stack(
  children: [
    Image.asset(
      "icons/logo02.jpg",
    ),
    Positioned(
      top: 10,
      left: 10,
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.clear, color: Colors.black, size: 30),
      ),
    ),
  ],
);

Widget texthelo = Column(
  children: const [
    Padding(padding: EdgeInsets.only(left: 180)),
    Text(
      "Xin ch??o,",
      style: TextStyle(
        fontSize: 30,
      ),
    ),
  ],
);

Widget textlogin = Column(
  children: const [
    Padding(padding: EdgeInsets.only(left: 260)),
    Text(
      "????ng nh???p ho???c t???o t??i kho???n",
      style: TextStyle(
        fontSize: 15,
      ),
    ),
  ],
);

Widget textPhone = const Padding(
  padding: EdgeInsets.fromLTRB(30, 0, 30, 20),
  child: TextField(
    cursorColor: Colors.blue,
    style: TextStyle(
      fontSize: 20,
    ),
    decoration: InputDecoration(
      hintText: "S??? ??i???n tho???i",
    ),
    keyboardType: TextInputType.number,
    textInputAction: TextInputAction.done,
    maxLength: 10,
  ),
);

Widget textSignUp(BuildContext context) {
  return TextButton(
    onPressed: () {
      Navigator.pushNamed(context, Routes.home);
    },
    child: Column(
      children: const [
        Padding(padding: EdgeInsets.only(left: 420)),
        Text(
          "T???o t??i kho???n",
          style: TextStyle(
            fontSize: 15,
            color: Colors.blue,
          ),
        ),
      ],
    ),
  );
}

Widget textcontineu = Column(
  children: const [
    Padding(padding: EdgeInsets.only(left: 420)),
    Text(
      "Ho???c ti???p t???c b???ng",
      style: TextStyle(
        fontSize: 15,
        color: Colors.black38,
      ),
    ),
  ],
);

Widget iconLoginAnother = Container(
  alignment: Alignment.center,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      const Padding(padding: EdgeInsets.only(left: 125)),
      IconButton(
        onPressed: () {},
        icon: Image.asset(
          "icons/facebook.png",
        ),
        iconSize: 40,
      ),
      IconButton(
        onPressed: () {},
        icon: Image.asset(
          "icons/icons8-google-48.png",
        ),
        iconSize: 40,
      ),
      IconButton(
        onPressed: () {},
        icon: Image.asset(
          "icons/icons8-zalo-48.png",
        ),
        iconSize: 40,
      ),
    ],
  ),
);

Widget textRules = Row(
  children: [
    const Padding(padding: EdgeInsets.only(left: 40)),
    const Text(
      "B???ng vi???c ti???p t???c, b???n ???? ch???p nh???n",
      style: TextStyle(
        fontSize: 13,
        color: Colors.black45,
      ),
    ),
    TextButton(
      onPressed: () {},
      child: const Text(
        "??i???u kho???n s??? d???ng",
        style: TextStyle(
          fontSize: 13,
          color: Color(0xFF90CAF9),
        ),
      ),
    ),
  ],
);
