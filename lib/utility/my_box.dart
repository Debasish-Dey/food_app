import 'package:flutter/material.dart';
// import 'package:food_app/utility/modal.dart';

class MyBox extends StatefulWidget {
  const MyBox({super.key});

  @override
  State<MyBox> createState() => _MyBoxState();
}

class _MyBoxState extends State<MyBox> {
  // final List _photos = [
  //   Data(image: "assets/images/6.avif", text: "Burger"),
  //   Data(image: "assets/images/7.avif", text: "Butter Chicken"),
  //   Data(image: "assets/images/8.avif", text: "Butter Paneer"),
  //   Data(image: "assets/images/9.avif", text: "Full Plate"),
  //   Data(image: "assets/images/10.avif", text: "Poori"),
  //   Data(image: "assets/images/11.avif", text: "Idli"),
  //   Data(image: "assets/images/6.avif", text: "Burger"),
  //   Data(image: "assets/images/7.avif", text: "Butter Chicken"),
  //   Data(image: "assets/images/8.avif", text: "Butter Paneer"),
  //   Data(image: "assets/images/9.avif", text: "Full Plate"),
  //   Data(image: "assets/images/10.avif", text: "Poori"),
  //   Data(image: "assets/images/11.avif", text: "Idli"),
  //   Data(image: "assets/images/6.avif", text: "Burger"),
  //   Data(image: "assets/images/7.avif", text: "Butter Chicken"),
  //   Data(image: "assets/images/8.avif", text: "Butter Paneer"),
  //   Data(image: "assets/images/9.avif", text: "Full Plate"),
  //   Data(image: "assets/images/10.avif", text: "Poori"),
  //   Data(image: "assets/images/11.avif", text: "Idli"),
  //   Data(image: "assets/images/6.avif", text: "Burger"),
  //   Data(image: "assets/images/7.avif", text: "Butter Chicken"),
  //   Data(image: "assets/images/8.avif", text: "Butter Paneer"),
  //   Data(image: "assets/images/9.avif", text: "Full Plate"),
  //   Data(image: "assets/images/10.avif", text: "Poori"),
  //   Data(image: "assets/images/11.avif", text: "Idli"),
  // ];

   
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15)
            // color: Colors.white
            ),
        child: Column(
          children: [
            Image.asset(
              "assets/images/1.jpg",
              height: 70,
            ),
            Text("name"),
          ],
        ),
      ),
    );
  }
}