import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:carousel_slider/carousel_slider.dart';

class carouselLoading extends StatefulWidget {
  const carouselLoading({Key? key}) : super(key: key);

  @override
  _carouselLoadingState createState() => _carouselLoadingState();
}

class _carouselLoadingState extends State<carouselLoading> {
  @override
  Widget build(BuildContext context) {
    return _slideBar();
  }
}

int? _current;
List imgList = [
  'https://media.istockphoto.com/photos/aerial-view-of-notredame-cathedral-basilica-of-saigon-picture-id918767152?b=1&k=20&m=918767152&s=170667a&w=0&h=hLc4-OR1EG8zWWpX0C5TSrIKzM50uNKSwJXIQ71_rDs=',
  'https://media.istockphoto.com/photos/aerial-view-of-the-golden-bridge-is-lifted-by-two-giant-hands-and-two-picture-id1279735021?b=1&k=20&m=1279735021&s=170667a&w=0&h=t7H8-cP55jrr0SoKRIIoLKyQJoVZWDGUD7WtnOL7Feg=',
  'https://media.istockphoto.com/photos/vietnamese-woman-rowing-a-boat-mekong-river-delta-vietnam-picture-id1143533885?b=1&k=20&m=1143533885&s=170667a&w=0&h=g1X41_cFCUph7So-FTj0itWIsQaJRX1p0wfrlopfMjk=',
];
_slideBar() {
  return Shimmer.fromColors(
    baseColor: Colors.grey,
    highlightColor: Colors.white,
    child: Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              //height: 200.0,
              initialPage: 0,
              aspectRatio: 16 / 8,
              //enlargeCenterPage: true,
              autoPlayInterval: const Duration(seconds: 3),
              onPageChanged: (index, _) {}),
          items: imgList.map((imgURL) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Image.network(imgURL, fit: BoxFit.fill));
              },
            );
          }).toList(),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 8,
              width: 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            Container(
              height: 8,
              width: 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            Container(
              height: 8,
              width: 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              width: 3,
            ),
          ],
        ),
      ],
    ),
  );
  _slideBar() {
    return Column(
      children: [
        Container(
          child: CarouselSlider(
            items: imgList
                .map((item) => Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Center(
                        child: Image.network(
                          item,
                          fit: BoxFit.cover,
                          width: 1000,
                        ),
                      ),
                    ))
                .toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              aspectRatio: 16 / 9,
              autoPlay: true,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) => _current,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 8,
              width: 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            Container(
              height: 8,
              width: 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              width: 3,
            ),
            Container(
              height: 8,
              width: 8,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              width: 3,
            ),
          ],
        ),
      ],
    );
  }
}
