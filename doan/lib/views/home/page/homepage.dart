
import 'package:doan/data_sources/app/appdata.dart';
import 'package:doan/presenters/home/bloc.dart';
import 'package:doan/resources/configs/config.dart';
import 'package:doan/views/Love/lovepage.dart';
import 'package:doan/views/home/widget/carousel_loading.dart';
import 'package:doan/views/home/widget/searchWidget.dart';
import 'package:doan/views/user/account_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      child:Scaffold(
          backgroundColor: Colors.white,
          bottomNavigationBar: getFooter(),
          appBar: getAppBar(activeTab),
          body: getBody(activeTab),
        ));

  }

  getBody(var activeTab) {
    switch (activeTab) {
      case 0:
        //home
        return homepage();
      case 1:
        //favorite
        return LovePage();
      case 2:
        //notification
        return notifivation_appbar();
      case 3:
        //account
        return AccountPage();
      default:
    }
  }

// /* home page */
  homepage() {
    return ListView(
      children: [
        // slide
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
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: _carousel(),
        ),
        //loại sản phẩm
        Padding(
          padding: const EdgeInsets.all(5),
          child: _productType(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Padding(
                padding: const EdgeInsets.only(bottom: 5, top: 5),
                child: Text(
                  'Sản Phẩm mới',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: <Widget>[
                  Text(
                    'đến xem',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.grey,
                    size: 16,
                  ),
                ],
              ),
            ],
          ),
        ),  
        Container(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(Images.KeSach),
                        fit: BoxFit.fitWidth)),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(categories.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    width: 180,
                    height: 220,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      categories[index].imgUrl.toString()),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        Positioned(
                          bottom: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              categories[index].title.toString(),
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
               const Padding(
                padding: EdgeInsets.only(bottom: 5),
                child: Text(
                  'Phòng Ngủ',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: <Widget>[
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'all',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.grey,
                    size: 16,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://salt.tikicdn.com/cache/w1200/ts/product/07/98/df/544ad89036ed33da95246bdfcda8b872.jpg'),
                        fit: BoxFit.fitWidth)),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Positioned(
                    bottom: 20,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         const  Text(
                            'Giường Đơn',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                         const  SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const  [
                               Text(
                                'Đến xem',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 18,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(phongngu.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    width: 180,
                    height: 220,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      phongngu[index].imgUrl.toString()),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        Positioned(
                          bottom: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              phongngu[index].title.toString(),
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  'Phòng Khách',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.allproduct);
                    },
                    child: const Text(
                      'all',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.grey,
                    size: 16,
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 5,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://salt.tikicdn.com/cache/w1200/ts/product/d2/85/84/48836d558dfa7d5d11f167d8453704db.png'),
                        fit: BoxFit.fitWidth)),
              ),
              Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Positioned(
                    bottom: 20,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Tủ Tivi',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: const [
                              Text(
                                'Đến xem',
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                                size: 18,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ))
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(phongngu.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    width: 180,
                    height: 220,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      phongkhach[index].imgUrl.toString()),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                        Positioned(
                          bottom: 5,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              phongkhach[index].title.toString(),
                              style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
            ))
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

  getAppBar(var activeTab) {
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

  Widget home_appbar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.8,
      backgroundColor: Colors.white,
      title: SearchWidget(),
      actions: [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.cart);
          },
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
  Widget favorite_appbar() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0.8,
      title: const Align(
        child: Text(
          'Yêu thích',
          style: TextStyle(fontSize: 22, color: Colors.black),
        ),
        alignment: Alignment.center,
      ),
      backgroundColor: Colors.white,
      foregroundColor: Colors.white,
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.pinkAccent,
            ))
      ],
    );
  }

//notification appBar
  Widget notifivation_appbar() {
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
  Widget user_appbar() {
    return AppBar(
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

  Widget default_appbar() {
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
}

class category {
  String? title;
  String? imgUrl;

  category({this.title, this.imgUrl});
}

final List<category> categories = [
  category(
    title: 'Mới',
    imgUrl:
        'https://salt.tikicdn.com/cache/400x400/ts/product/79/16/50/bd2a98ea86bb9564a0ccb6db077130ab.jpg.webp',
  ),
  category(
    title: 'Kệ Đứng',
    imgUrl:
        'https://salt.tikicdn.com/cache/w1200/ts/product/e0/d3/3b/c6845f3b7a36e94921609cf3abd86c9f.jpg',
  ),
  category(
    title: 'Kệ Nằm',
    imgUrl:
        'https://salt.tikicdn.com/cache/400x400/ts/product/15/34/b4/0e39ca1785ee389d4d23fd9b6df3cab5.png.webp',
  ),
  category(
    title: 'Kệ Mini',
    imgUrl:
        'https://salt.tikicdn.com/cache/400x400/ts/product/30/6f/f3/d436d13473481e3f3cee5928befbb1f3.jpg.webp',
  ),
  category(
    title: 'Khác',
    imgUrl:
        'https://salt.tikicdn.com/cache/w1200/ts/product/b6/69/77/047718dda146161bbb897a6886cbaa19.jpg',
  ),
];
final List<category> phongngu = [
  category(
    title: 'Mới',
    imgUrl:
        'https://salt.tikicdn.com/cache/w1200/ts/product/33/79/07/1a9831f35807205ff38ca2fcfe5977bb.jpg',
  ),
  category(
    title: 'Nệm',
    imgUrl:
        'https://salt.tikicdn.com/cache/400x400/ts/product/09/6b/5b/e17a31fdf3015d3c54ea20c92e40dd3f.jpg.webp',
  ),
  category(
    title: 'Giường',
    imgUrl:
        'https://salt.tikicdn.com/cache/w1200/ts/product/70/99/b1/709900a5d81804546aef738b8dd84606.jpg',
  ),
  category(
    title: 'Tủ Đầu Giuong',
    imgUrl:
        'https://salt.tikicdn.com/cache/400x400/ts/product/f3/4f/57/dc33befbbc14f1a0f61cf4cdbf16a6a5.jpg.webp',
  ),
  category(
    title: 'Đèn Ngủ',
    imgUrl:
        'https://salt.tikicdn.com/cache/w1200/ts/product/60/22/26/5b3eb3cb986f22c461251290cd64b7c3.jpg',
  ),
];
final List<category> phongkhach = [
  category(
    title: 'Mới',
    imgUrl:
        'https://salt.tikicdn.com/cache/400x400/ts/product/c0/bd/84/c592a519cdd2e577dabf7857ef6623ac.jpg.webp',
  ),
  category(
    title: 'Combo Bàn Ghế',
    imgUrl:
        'https://salt.tikicdn.com/cache/400x400/ts/product/62/ab/43/fc3b8873821f931ed9eac3218f2c4485.jpg.webp',
  ),
  category(
    title: 'Ấm trà',
    imgUrl:
        'https://salt.tikicdn.com/cache/w1200/ts/product/2b/e7/bf/ec860e3914ea70cb0772ec4e44beed7c.jpg',
  ),
  category(
    title: 'Tủ Giày',
    imgUrl:
        'https://salt.tikicdn.com/cache/w1200/ts/product/6e/d9/cb/cd1b3a9a1b9d4d8e5756442de30f1f9e.jpg',
  ),
  category(
    title: 'Khác',
    imgUrl:
        'https://salt.tikicdn.com/cache/400x400/ts/product/d5/77/67/703b496808c80995f97897076b343cda.jpg.webp',
  ),
];
