import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'SliderCard.dart';

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
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 60),
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
            CarouselSlider(
              carouselController: _controller,
              items: _slides,
              options: CarouselOptions(
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: 1,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayAnimationDuration: Duration(milliseconds: 100),
                onPageChanged: (index,reason){
                  _currentSlideIndex = index;
                  setState(() {

                  });
                }
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(_slides.length, (index){
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.fastOutSlowIn,
                    width: index==_currentSlideIndex? 14: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color:index==_currentSlideIndex? Colors.redAccent: Colors
                          .grey.shade300,
                      borderRadius: BorderRadius.circular(16)
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: 20,),
            HomeTitleWidget(title: 'Recommendation'),
            SizedBox(height: 20,),
          ],
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
