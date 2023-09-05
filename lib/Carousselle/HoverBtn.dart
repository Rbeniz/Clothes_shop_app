import '/Carousselle/SubImage2.dart';
import 'package:flutter/material.dart';

class HoverBtn extends StatefulWidget {
  final int index;
  const HoverBtn({Key? key, required this.index}) : super(key: key);

  @override
  State<HoverBtn> createState() => _HoverBtnState();
}

class _HoverBtnState extends State<HoverBtn> {
  bool isTapped = false;
  bool isDoubleTapped = false;

  @override
  Widget build(BuildContext context) {
    /* final hoveredTransform= Matrix4.identity()..scale(1.5);
    final transform =isHovered ? hoveredTransform : Matrix4.identity(); */

    return GestureDetector(
        onTap: () {
          setState(() {
            isTapped = !isTapped;
          });
        },
        onDoubleTap: () {
          setState(() {
            isDoubleTapped = !isDoubleTapped;
          });
        },
        child: isTapped ? 
          Positioned(
            top: 100,
            left: 50,
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
            : SubImage2(index: widget.index,),
          );

    /* MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (event) => onEntered(true),
      onExit: (event) => onEntered(false) ,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: isHovered ? 400 : 200,
        decoration: BoxDecoration(
          color: isHovered ? Colors.blueAccent : Colors.amber,
          borderRadius: BorderRadius.circular(35)
        ),
        
        child: widget.child)
      );
  }

void onEntered( bool isHovered)=> setState(() {
  this.isHovered = isHovered;
}); */
  }
}
