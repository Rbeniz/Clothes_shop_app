
import 'package:flutter/material.dart';


class Image1 extends StatefulWidget {
  const Image1({Key? key}) : super(key: key);

  @override
  State<Image1> createState() => _Image1State();
}

class _Image1State extends State<Image1> {
  @override
  Widget build(BuildContext context) {
    return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      
                      child: Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: [
                          Image.asset("assets/images/img1.jpg",),

                          Positioned(
                            top: 200,
                            left: 150,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(149, 54, 244, 184),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          ),

                          Positioned(
                            bottom: 50,
                            left: 150,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(149, 54, 244, 184),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 15,
                              ),
                            ),
                          )

                        ],
                      ),
                    ),
   ],
    );
  }
}