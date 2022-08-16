import 'package:draggable_example/data/data.dart';
import 'package:flutter/material.dart';

class DraggableWidget extends StatelessWidget {
  // final  animal;
  //
  // const DraggableWidget({
  //   Key key,
  //   @required this.animal,
  // }) : super(key: key);
    final  Dragg img;
    final id;

  const DraggableWidget({
    Key key,
     this.img,
     this.id,
  }) : super(key: key);


  static double size = 80;

  @override
  Widget build(BuildContext context) => Draggable(
        data: img,
        feedback: buildImage(),
        child: buildImage(),
        childWhenDragging: Container(height: size),
      );

  Widget buildImage() => Column(
    children: [
      Container(
            height: size,
            width: size,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.white,
            ),
            child: img.imageUrl,
          ),
      SizedBox(height:10)
    ],
  );
}
