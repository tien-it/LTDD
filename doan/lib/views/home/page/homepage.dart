

import 'package:doan/data_sources/app/appdata.dart';
import 'package:doan/views/home/widget/carousel_loading.dart';
import 'package:doan/views/home/widget/searchWidget.dart';
import 'package:doan/views/user/account_page.dart';
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
        appBar: getAppBar(activeTab),
        body: getBody(activeTab),
      ),
    );
  }
  getBody( var activeTab) {

    switch (activeTab) {
      case 0:
      //home
        return homepage();
      case 1:
      //favorite
        return favorite_appbar();
      case 2:
      //notification
        return notifivation_appbar();
      case 3:
      //account
        return AccountPage();
      default:
    }
  }
  homepage() {
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

  getAppBar( var activeTab) {

    switch (activeTab) {
      case 0:
      //home
        return home_appbar();
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
  Widget home_appbar(){
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.8,
      backgroundColor: Colors.white,
      title: SearchWidget(),
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

  categoryItem() {
    return  Padding(
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
}
