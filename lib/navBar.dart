//
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:sports/mainScreens/main_screen.dart';
//
// import 'DetailsPage.dart';
//
// class EventScreen extends StatefulWidget {
//   const EventScreen({Key? key}) : super(key: key);
//
//   @override
//   State<EventScreen> createState() => _EventScreenState();
// }
//
// class _EventScreenState extends State<EventScreen> {
//   whenPageChange(int pageIndex) {
//     setState(() {
//       this.getPageIndex = pageIndex;
//     });
//   }
//   //bool facebookSighned = false;
//   int getPageIndex = 0;
//   PageController? _pageController;
//   onTapChangePage(int pageIndex) {
//     _pageController!.animateToPage(pageIndex,
//         duration: Duration(microseconds: 400), curve: Curves.bounceInOut);
//   }
//   // _logOut() async {
//   //   await FacebookAuth.instance.logOut();
//   //
//   //   setState(
//   //           () {
//   //             facebookSighned=false;
//   //             // _userData = null;
//   //           print("_userData $_userData");
//   //           isSignedIn=false;
//   //           }
//   //   );
//   //
//   // }
//   @override
//   void initState() {
//     _pageController = PageController();
//     super.initState();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //  appBar: header(context,strTitle:"homePage"),
//       body: PageView(
//         //scrollable
//         children: [
//           // Stack(
//           //   children: [
//           //     ProfilePage(
//           //       userProfileId:
//           //       //  facebooklogined ? myUser.uid :
//           //       currentUser.id,
//           //     ),
//           //     Container(
//           //       width: MediaQuery.of(context).size.width,
//           //       alignment: Alignment.topRight,
//           //       child: Padding(
//           //         padding: const EdgeInsets.only(top: 11.0, right: 8),
//           //
//           //         child: IconButton(
//           //           icon: Icon(
//           //             Icons.menu,
//           //             color: Colors.black,
//           //           ),
//           //           onPressed: showSimpleDia,
//           //         ),
//           //       ),
//           //     ),
//           //   ],
//           // ),
//
//           // PostsPage(
//           //     userProfileId:
//           //     //   facebooklogined ? myUser.uid :
//           //     currentUser.id),
//           // // // // //  SearchPage(),
//           // UploadPage(
//           //   gCurrentUser: currentUser,
//           // ),
//           MainScreen(),
//           // TimeLinePage(
//           //     userProfileId:
//           //     // facebooklogined ? myUser.uid :
//           //     currentUser.id),
//
//         ],
//         controller: _pageController,//transition between pages
//         onPageChanged: whenPageChange,//give the icon active color
//         // physics: NeverScrollableScrollPhysics(),// non scrollable
//       ),
//       bottomNavigationBar: CupertinoTabBar(
//         currentIndex: getPageIndex,
//         onTap: onTapChangePage,
//         activeColor: Colors.white,
//         inactiveColor: Colors.blueGrey,
//         backgroundColor:
//         //Colors.yellow,
//         Theme.of(context).accentColor,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.person)),
//
//           BottomNavigationBarItem(icon: Icon(Icons.search)),
//           BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.photo_camera,
//                 size: 37,
//               )),
//           BottomNavigationBarItem(icon: Icon(Icons.favorite)),
//           BottomNavigationBarItem(icon: Icon(Icons.home)),
//
//         ],
//       ),
//     );
//   }
// }


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavBarV2 extends StatefulWidget {
  @override
  _BottomNavBarV2State createState() => _BottomNavBarV2State();
}

class _BottomNavBarV2State extends State<BottomNavBarV2> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white.withAlpha(55),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: 80,
              child: Stack(
                // overflow: Overflow.visible,
                children: [
                  CustomPaint(
                    size: Size(size.width, 80),
                    painter: BNBCustomPainter(),
                  ),
                  Center(
                    heightFactor: 0.6,
                    child: FloatingActionButton(backgroundColor: Colors.orange, child: const Icon(Icons.add), elevation: 0.1, onPressed: () {selectOption( context);}),
                  ),
                  Container(
                    width: size.width,
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.add,
                            color: currentIndex == 0 ? Colors.orange : Colors.grey.shade400,
                          ),
                          onPressed: () {
                            setBottomBarIndex(0);
                          },
                          splashColor: Colors.white,
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.restaurant_menu,
                              color: currentIndex == 1 ? Colors.orange : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(1);
                            }),
                        Container(
                          width: size.width * 0.20,
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.bookmark,
                              color: currentIndex == 2 ? Colors.orange : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(2);
                            }),
                        IconButton(
                            icon: Icon(
                              Icons.notifications,
                              color: currentIndex == 3 ? Colors.orange : Colors.grey.shade400,
                            ),
                            onPressed: () {
                              setBottomBarIndex(3);
                            }),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  selectOption( BuildContext mContext) {



    return


      showDialog(//dialog and snackBar need context
          context: mContext,
          builder: (context) {
            return SimpleDialog(
                backgroundColor: Colors.grey[100],
                // title: Text(
                //   "New Post",
                //   style:
                //   TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                // ),
                children: [
                  SimpleDialogOption(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.read_more,color: Colors.grey,)),
                        Spacer(),
                        Text(
                          "اضاقة فعالية",
                          style: TextStyle(color: Colors.black,fontSize: 16),
                        ),
                      ],
                    ),
                    // onPressed: captureImageWithCamera,
                  ),    SimpleDialogOption(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        IconButton(onPressed: (){



                        }, icon: Icon(Icons.read_more,color: Colors.grey,)),
                        Spacer(),
                        Text(
                          "انشاء مجموعة",
                          style: TextStyle(color: Colors.black,fontSize: 16),
                        ),
                      ],
                    ),
                    // onPressed: captureImageWithCamera,
                  ),
                  SimpleDialogOption(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "الغاء",
                          style: TextStyle(color: Colors.black,fontSize: 16),
                        ),
                      ],
                    ),
                    // onPressed: captureImageWithCamera,
                  ),


                ]
            );
          }

      );

  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.moveTo( size.width,20 ); // Start

    // path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    // path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    // path.arcToPoint(
    //     Offset(size.width * 0.60, 20), radius: const Radius.circular(20.0),
    //     clockwise: false);
    // path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.0, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}