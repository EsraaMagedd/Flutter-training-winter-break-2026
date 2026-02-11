import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:third_session/recommendation_list.dart';
import 'SliderCard.dart';
import 'custom_carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = [
    'assets/news1.jpg',
    'assets/news2.jpg',
    'assets/news3.jpg',
  ];

  List<Widget> get _slides => images.map((e) => SliderCard(image: e)).toList();
final CarouselSliderController _controller = CarouselSliderController();
 int _currentSlideIndex =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10,right: 10, top: 60),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  HomeIconButton(icon: Icons.menu),
                  Spacer(),
                  HomeIconButton(icon: Icons.search),
                  SizedBox(width: 5),
                  HomeIconButton(icon: Icons.notifications),
                ],
              ),
              SizedBox(height: 20),
              HomeTitleWidget(title: 'Breaking News'),
              SizedBox(height: 20),
              const CustomCarouselSlider(),
              SizedBox(height: 20,),
              HomeTitleWidget(title: 'Recommendation'),
              SizedBox(height: 20,),
              RecommendationItem()
            ],
          ),
        ),
      ),
    );
  }
}

class HomeTitleWidget extends StatelessWidget {
  const HomeTitleWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        Text('View all', style: TextStyle(fontSize: 18, color: Colors.red)),
      ],
    );
  }
}

class HomeIconButton extends StatelessWidget {
  const HomeIconButton({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 25,
      backgroundColor: Colors.grey.shade200,
      child: Icon(icon),
    );
  }
}
