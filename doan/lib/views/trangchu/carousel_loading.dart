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
  'https://media.istockphoto.com/photos/luxurious-master-bedroom-interior-picture-id1266155645?b=1&k=20&m=1266155645&s=170667a&w=0&h=4MO7xShoFyq1pZczWmZy8YQmVh4atZIXF9xXmoPLkeA=',
  'https://media.istockphoto.com/photos/modern-living-room-interior-3d-render-picture-id1293762741?b=1&k=20&m=1293762741&s=170667a&w=0&h=2RI8SmBN4MrEZuTvdwRzaeB887x-dukFcQBpyQ-qwS4=',
  'https://media.istockphoto.com/photos/coastal-bedroom-interior-mockup-3d-render-picture-id1284744586?b=1&k=20&m=1284744586&s=170667a&w=0&h=q1Z0Jq5UBoRYeenScMxyV-VdSX_ds0ooTODrsvVMd1U=',
];
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
