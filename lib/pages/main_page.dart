import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/pages/story_page.dart';
import 'package:food_app/utility/item_card.dart';
// import 'package:food_app/utility/modal.dart';
import 'package:food_app/utility/my_box.dart';
import 'package:food_app/utility/story_circles.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final TextEditingController _controller = TextEditingController();

  final myitems = [
    Image(image: AssetImage('assets/images/1.jpg')),
    Image(image: AssetImage('assets/images/2.jpg')),
    Image(image: AssetImage('assets/images/3.jpg')),
    Image(image: AssetImage('assets/images/4.jpg')),
    Image(image: AssetImage('assets/images/5.jpg')),
  ];

  int myCurrentIndex = 0;

  void _openStory() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => StoryPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(15),
                prefixIcon: Icon(Icons.search),
                hintText: 'Search for "cucumber" ',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Container(
            height: 100,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return StoryCircle(
                  function: _openStory,
                );
              },
            ),
          ),
          Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      height: 200,
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        setState(
                          () {
                            myCurrentIndex = index;
                          },
                        );
                      },
                    ),
                    items: myitems,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Text(
            "Buy Again",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            // child: Container(
            //   height: 1200,
            //   child: GridView.builder(
            //     // physics: NeverScrollableScrollPhysics(),
            //     itemCount: 4,
            //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //       crossAxisCount: 3,mainAxisSpacing: 150,  // Number of columns
            //     ),
            //     itemBuilder: (BuildContext context, int index) {
            //       // return GestureDetector(
            //       //   onTap: () {
            //       //     // do some task
            //       //   },
            //       //   child: Container(
            //       //     margin: EdgeInsets.all(10),
            //       //     child: Center(child: MyBox()),
            //       //   ),
            //       // );
            //       return ItemCard();
            //     },
            //   ),
            // ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ItemCard(),
              ItemCard(),
              ItemCard(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ItemCard(),
              ItemCard(),
              ItemCard(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ItemCard(),
              ItemCard(),
              ItemCard(),
            ],
          ),
          
        ],
      ),
    );
  }
}
