import 'package:doan/resources/configs/config.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white, body: getBody());
  }

  Widget getBody() {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://thuthuatnhanh.com/wp-content/uploads/2019/07/anh-girl-xinh-facebook-tuyet-dep.jpg'),
                        fit: BoxFit.scaleDown,
                        repeat: ImageRepeat.repeatX),
                    shape: BoxShape.circle),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                children: const [
                  Text(
                    'Đinh Văn Tiến',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
                  ),
                  Text('0327688127')
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("My Oder", style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context,'');
                        },
                        icon: const Icon(Icons.account_balance_wallet_outlined),
                        iconSize: 30,
                        color: Colors.blue,
                        splashColor: Colors.blue),
                        const Text('To Pay'),
                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.archive_outlined),
                        iconSize: 30,
                        color: Colors.blue,
                        splashColor: Colors.blue),
                        const Text('To Ship'),

                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.directions_car_filled_outlined),
                        iconSize: 30,
                        color: Colors.blue,
                        splashColor: Colors.blue,
                    ),
                    const Text('To Receive'),

                  ],
                ),
                Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.star_outline),
                      iconSize: 30,
                      color: Colors.blue,
                      splashColor: Colors.blue,
                    ),
                    const Text('To Review'),
                  ],
                )
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("My Servide", style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.visibility),
                        iconSize: 30,
                        color: Colors.blue,
                        splashColor: Colors.blue),
                        const Text('History'),

                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite),
                        iconSize: 30,
                        color: Colors.blue,
                        splashColor: Colors.blue),
                        const Text('Favorite',),

                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.query_builder),
                        iconSize: 30,
                        color: Colors.blue,
                        splashColor: Colors.blue),
                        const Text('Buy later'),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 20),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text("Settings", style: TextStyle(fontSize: 20)),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.settings_applications),
                        iconSize: 30,
                        color: Colors.blue,
                        splashColor: Colors.blue),
                    const Text('Setting'),

                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/account_infomation');
                        },
                        icon: const Icon(Icons.person),
                        iconSize: 30,
                        color: Colors.blue,
                        splashColor: Colors.blue),
                    const Text('Account Info',),

                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.payment),
                        iconSize: 30,
                        color: Colors.blue,
                        splashColor: Colors.blue),
                    const Text('Payment Info'),

                  ],
                ),
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.room),
                        iconSize: 30,
                        color: Colors.blue,
                        splashColor: Colors.blue),
                    const Text('Address'),
                  ],
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
