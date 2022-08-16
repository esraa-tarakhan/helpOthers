import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../data/data.dart';
import '../widget/draggable_widget.dart';

class ProfilePageWidget extends StatefulWidget {

  @override
  _ProfilePageWidgetState createState() => _ProfilePageWidgetState();
}

class _ProfilePageWidgetState extends State<ProfilePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
Image img=Image.network(
  'https://picsum.photos/seed/313/600',
  width: 100,
  height: 100,
  fit: BoxFit.cover,
);

List<Dragg> uuu=[
  Dragg(
      imageUrl:Image.network(
    'https://picsum.photos/seed/636/600',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),
  id:1
  ),
   Dragg( imageUrl:Image.network(
    'https://picsum.photos/seed/641/600',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),  id:2
  ),
   Dragg(  imageUrl:Image.network(
    'https://picsum.photos/seed/313/600',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),  id:3
  ),
  
  Dragg(  imageUrl:Image.network(
    'https://picsum.photos/seed/150/600',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),
     id:4


 ),
  Dragg(  imageUrl:Image.network(
    'https://picsum.photos/seed/426/600',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),  id:5
 ),
  Dragg(  imageUrl:Image.network(
    'https://picsum.photos/seed/781/600',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),  id:6
 ),
  Dragg(  imageUrl:Image.network(
    'https://picsum.photos/seed/347/600',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),  id:7
 ),
  Dragg(  imageUrl:Image.network(
    'https://picsum.photos/seed/907/600',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),  id:8
 ),
  Dragg(  imageUrl:Image.network(
    'https://picsum.photos/seed/228/600',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),  id:9
 ),
  Dragg(  imageUrl:Image.network(
    'https://picsum.photos/seed/110/600',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),  id:10
 ),
  Dragg(  imageUrl:Image.network(
    'https://picsum.photos/seed/947/600',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),  id:1
 ),
  Dragg(  imageUrl:Image.network(
    'https://picsum.photos/seed/413/600',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),  id:1
 ),
  Dragg(  imageUrl:Image.network(
    'https://picsum.photos/seed/18/600',
    width: 100,
    height: 100,
    fit: BoxFit.cover,
  ),  id:1
 )
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 38.0),
            child: Container(
              width:110,
              height: 110,
             color: Colors.blueAccent,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    color: Colors.red,
                  child:
                    DragTarget<Dragg>(
                      builder: (context, candidateData, rejectedData) {
                        return
                        Container(
                          color: Colors.green,
                            height: 200,
                            width: 150,
                            child: img);

                      },
                      onWillAccept: (data) => true,
                      onAccept: (data) {
                        return setState(() {
                          img=data.imageUrl;
                          print("id : ${data.id}" );
                          // animal2 = Animal as Animal;
                        });
                      },
                    )
                  )
                ],
              ),
            ),
          ),
SizedBox(height: 40,),
          Divider(height: 30,color: Colors.blueAccent,),
          //

          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              scrollDirection: Axis.vertical,
itemCount: uuu.length,
                itemBuilder: ((context, index) {
                  return DraggableWidget(img: uuu[index]);
                }),
            ),
          ),
        ],
      ),
    );
  }
}
