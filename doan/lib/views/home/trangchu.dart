import 'package:doan/views/home/carousel_loading.dart';
import 'package:flutter/foundation.dart';
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
        appBar: getAppBar(),
        body: getBody(),
      ),
    );
  }

  List btnProType = [
    {"img": "icons/icon/seater-sofa.png", "name": "Nội thất"},
    {"img": "icons/icon/homee-decor.png", "name": "Trang trí nhà cửa"},
    {"img": "icons/icon/bath.png", "name": "Đồ dùng,-phòng tắm"},
    {"img": "icons/icon/kitchen.png", "name": "Đồ dùng nhà bếp,phòng ăn"},
    {
      "img": "icons/icon/electrical-appliance.png",
      "name": "Đồ dùng nhà bếp,phòng ăn"
    },
    {"img": "icons/icon/double-bed.png", "name": "Điện tử"},
    {"img": "icons/icon/coupon.png", "name": "Vourcher"},
    {"img": "icons/icon/more.png", "name": "Xem thêm"},
  ];
  List itemTab = [
    {"icon": Icons.home, "size": 28.0},
    {"icon": Icons.favorite, "size": 28.0},
    {"icon": Icons.notifications, "size": 28.0},
    {"icon": Icons.person, "size": 30.0},
  ];
  List itemPage = [
    {"title": "Trang Chủ"},
    {"title": "Flash Sale"},
    {"title": "Deal Hot"},
    {"title": "Mã giảm giá"},
  ];
  getAppBar() {
    switch (activeTab) {
      case 0:
        break;
      case 1:
        break;
      case 2:
        return AppBar(
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
      case 3:
        return AppBar(
          elevation: 0.8,
          backgroundColor: Colors.white,
          title: const Align(
            child: Text(
              "Cá nhân",
              style: TextStyle(color: Colors.black),
            ),
            alignment: Alignment.center,
          ),
        );

      default:
    }
  }

  getBody() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.menu,
                      size: 35,
                    )),
              ),
              Container(
                padding: const EdgeInsets.only(top: 10),
                width: 280,
                height: 50,
                child: TextField(
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
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart,
                      size: 35,
                    )),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 5,
        ),
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
                    child: _categoryItem(),
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

  Widget _categoryItem() {
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
}
