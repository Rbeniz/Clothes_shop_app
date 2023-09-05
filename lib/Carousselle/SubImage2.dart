import '/Carousselle/HoverBtn.dart';
import 'package:flutter/material.dart';
import '../models/Pictures.dart';

class SubImage2 extends StatefulWidget {
  final int index;
  SubImage2({Key? key, required this.index}) : super(key: key);

  @override
  State<SubImage2> createState() => _SubImage2State();
}

class _SubImage2State extends State<SubImage2> {
  bool isTapped = false;
  bool isDoubleTapped = false;

 List<Picture> pictures = Picture.generatePicture();

  @override
  Widget build(BuildContext context) {
    return  Container(
          margin: EdgeInsets.all(30),
          height: 300,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 1), // changes position of shadow
            ),
          ],
          ),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(pictures[widget.index].imgUrl!,)
            ),
            
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                     Text(
                      pictures[widget.index].name!,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Colors.black
                      ),
                    ),
                     const SizedBox(height: 5),
                     Text(
                      pictures[widget.index].price!,
                      style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.black
                      ),
                    ),
                  ],
                ),
                
                Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(167, 245, 84, 73),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
             
          ]),
        
    );
  }
}
