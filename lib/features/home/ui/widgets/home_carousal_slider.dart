import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:xgenious_assignment/app/assets_path.dart';

class SliderModel {
  final String? photoUrl;
  final String? description;

  SliderModel({required this.photoUrl, required this.description});
}

class HomeCarousalSlider extends StatefulWidget {
  const HomeCarousalSlider({super.key});

  @override
  State<HomeCarousalSlider> createState() => _HomeCarousalSliderState();
}

class _HomeCarousalSliderState extends State<HomeCarousalSlider> {
  final List<SliderModel> dummySliderList = [
    SliderModel(
      photoUrl: AssetsPath.bannerImage, // Wide image for banner
      description: 'SUMMER SALES ☀️\nUp to 50% Off Everything!',
    ),
    SliderModel(
      photoUrl: AssetsPath.bannerImage,
      description: 'NEW ARRIVALS 📦\nShop the Latest Collection!',
    ),
    SliderModel(
      photoUrl: AssetsPath.bannerImage,
      description: 'FREE SHIPPING! 🚚\nOrders Over \$50',
    ),
  ];
  final ValueNotifier<int> _selectedIndex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            CarouselSlider(
              items: dummySliderList.map((banner) {
                return Builder(
                  builder: (context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(image: AssetImage(banner.photoUrl ?? ''),
                        fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
              options: CarouselOptions(
                height: 180.0,
                viewportFraction: 1.0,
                onPageChanged: (currentIndex, reason) {
                  _selectedIndex.value = currentIndex;
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
