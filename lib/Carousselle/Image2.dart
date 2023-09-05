
import 'package:flutter/material.dart';
import 'HoverBtn.dart';

class Image2 extends StatefulWidget {
  const Image2({Key? key}) : super(key: key);

  @override
  State<Image2> createState() => _Image2State();
}

class _Image2State extends State<Image2> {
  @override
  Widget build(BuildContext context) {
    return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      
                      child: Stack(
                        alignment: AlignmentDirectional.topStart,
                        children: [
                          Image.asset("assets/images/img2.jpg",
                          height: MediaQuery.of(context).size.height,),

                          const Positioned(
                            top: 250,
                            left: 150,
                            child: HoverBtn( index: 2,),
                          ),

                          Positioned(
                            bottom: 50,
                            left: 150,
                            child: Container(
                              padding: const EdgeInsets.all(2),
                              decoration: BoxDecoration(
                                color: Color.fromARGB(167, 245, 84, 73),
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