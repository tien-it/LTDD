

import 'package:doan/data_sources/app/appdata.dart';
import 'package:doan/views/home/widget/carousel_loading.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var activeTab = 0;
  var menu = 0;
  var underline = 0;
  var searchtxt =TextEditingController();
  AppBar? appbar = null;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) currentFocus.unfocus();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: getFooter(),
        appBar: getAppBar(activeTab , searchtxt),
        body: getBody(),
      ),
    );
  }

  getBody() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {});
                    },
                    child: categoryItem(),
                  ),
                ],
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: _carousel(),
        ),
        Padding(
          padding: const EdgeInsets.all(5),
          child: _productType(),
        ),
      ],
    );
  }

  Widget categoryItem() {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          itemPage.length,
          (index) => Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: () {
                    setState(() {
                      menu = index;
                    });
                  },
                  child: Column(
                    children: [
                      Text(
                        itemPage[index]['title'],
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: menu == index ? Colors.blue : Colors.grey,
                          //decorationStyle: TextDecorationStyle.double,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        height: 3,
                        width: 70,
                        decoration: menu == index
                            ? BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(10),
                              )
                            : const BoxDecoration(),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
  Widget getFooter() {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          border: Border(top: BorderSide(color: Colors.grey))),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
                itemTab.length,
                (index) => IconButton(
                      onPressed: () {
                        setState(() {
                          activeTab = index;
                        });
                      },
                      icon: Icon(itemTab[index]['icon'],
                          size: itemTab[index]['size']),
                      color: activeTab == index ? Colors.blue : Colors.black,
                    ))),
      ),
    );
  }

  Widget _carousel() {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(0),
          child: carouselLoading(),
        )
      ],
    );
  }
  Widget _productType() {
    return Center(
      child: Wrap(
          children: List.generate(
        btnProType.length,
        (index) =>
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 15, 0),
            child: Column(
              children: [
                SizedBox(
                  width: 35,
                  height: 35,
                  child: Image.asset(btnProType[index]['img']),
                ),
                const SizedBox(
                  height: 5,
                ),
                Wrap(children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: SizedBox(
                        height: 35,
                        width: 80,
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                btnProType[index]['name'],
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 12),
                              )
                            ]),
                      ))
                ])
              ],
            ),
          )
        ]),
      )),
    );
  }
  Widget searchWidget( TextEditingController searchtxt) {
    return TextField(
      decoration: InputDecoration(
          hintText: 'Tìm kiếm trong shop',
          prefixIcon: const Icon(Icons.search, size: 30),
          filled: true,
          fillColor: Colors.grey.shade200,
          contentPadding: const EdgeInsets.all(15),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              color: Colors.grey,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: Colors.grey.shade200,
            ),
          ),
          suffixIcon:
          searchtxt.text !="" ?InkWell(
              onTap: () { setState(() {
                searchtxt.text ="";
              }); },
              child: const Icon(Icons.close)):const SizedBox()
      ),
      controller: searchtxt,
      onChanged: (_){
        setState(() {

        });
      },
    );
  }
  getAppBar( var activeTab, TextEditingController searchtxt) {

    switch (activeTab) {
      case 0:
      //home
        return home_appbar(searchtxt);
      case 1:
      //favorite
        return favorite_appbar();
      case 2:
      //notification
        return notifivation_appbar();
      case 3:
      //account
        return user_appbar();
      default:
    }
  }
  Widget home_appbar(TextEditingController searchtxt){
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.8,
      backgroundColor: Colors.white,
      title: searchWidget(searchtxt),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_cart,
            size: 25,
            color: Colors.pinkAccent,
          ),
          splashRadius: 25,
        ),
      ],
    );
  }
//favorite appBar
  Widget favorite_appbar(){
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.8,
      backgroundColor: Colors.white,
      title: const Align(
        child: Text(
          "Thông báo",
          style: TextStyle(color: Colors.black),
        ),
        alignment: Alignment.center,
      ),
    );
  }
//notification appBar
  Widget notifivation_appbar(){
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.8,
      backgroundColor: Colors.white,
      title: const Align(
        child: Text(
          "Thông báo",
          style: TextStyle(color: Colors.black),
        ),
        alignment: Alignment.center,
      ),
    );
  }
//user appBar
  Widget user_appbar(){
    return
      AppBar(
        automaticallyImplyLeading: false,
        elevation: 0.8,
        backgroundColor: Colors.white,
        title: const Align(
          child: Text(
            "My Account",
            style: TextStyle(color: Colors.black),
          ),
          alignment: Alignment.center,
        ),
      );
  }
  Widget default_appbar(){
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.8,
      backgroundColor: Colors.white,
      title: const Align(
        child: Text(
          "Null",
          style: TextStyle(color: Colors.black),
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
