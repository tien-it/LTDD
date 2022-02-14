import 'package:doan/data_sources/app/appdata.dart';
import 'package:flutter/material.dart';
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
