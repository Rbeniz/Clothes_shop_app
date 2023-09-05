import '/Carousselle/Image1.dart';
import '/Carousselle/Image2.dart';
import '/Carousselle/SubImage2.dart';
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';




class Carousselle extends StatelessWidget {
   Carousselle({Key? key}) : super(key: key);

  final List tiktokItems =  [
     Image1(),
     Image2(),
     Image1(),
     Image1(),
   
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: double.infinity,
        scrollDirection: Axis.vertical,
        viewportFraction: 1.0,
      ),
      items: tiktokItems.map((index) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              color: const Color(0xFF141518),
              child: Stack(
                children: [
                  index,
                  
                  // const PostContent()
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}