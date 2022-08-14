import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import 'navBar.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:  HomePageWidget(),
    );
  }
}
// import '../flutter_flow/flutter_flow_util.dart';


class HomePageWidget extends StatefulWidget {

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFE2E2EC),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  height: 200,
                  child: Stack(
                    children: [
                      Image.network(
                        'https://picsum.photos/seed/951/600',
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.fill,
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, -1.03),
                        child: Container(
                          width: double.infinity,
                          height: 200,
                          decoration: BoxDecoration(
                            color: Color(0x881A866A),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.48, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    FaIcon(
                                      FontAwesomeIcons.gripHorizontal,
                                      color: Color(0xFFF1F2F5),
                                      size: 24,
                                    ),
                                    Text(
                                      'Task Management System',
                                      style:
                                      TextStyle(
                                        fontFamily: 'Poppins',
                                        color: Color(0xFFF1F2F5),
                                      ),
                                    ),
                                    Container(
                                      width: 40,
                                      height: 40,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://picsum.photos/seed/390/600',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                                child: Text(
                                  'Agenda',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFF9F2F2),
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              TextFormField(
                                controller: textController,
                                autofocus: true,
                                obscureText: false,
                                decoration: InputDecoration(
                                  hintText: '    search',
                                  // hintStyle: FlutterFlowTheme.of(context).bodyText2,
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(32),
                                  ),
                                  filled: true,
                                  fillColor: Color(0xFFF1F2F5),
                                  suffixIcon: Icon(
                                    Icons.search,
                                    color: Color(0xFF757575),
                                    size: 22,
                                  ),
                                ),
                                // style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Material(
elevation: 3,                child: Container(
                    width: 100,
                    height: 75,


                    decoration: BoxDecoration(

                      color: Colors.grey[100],
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(-0.85, 0.05),
                      child: Text(
                        'Due Today',
                        style:TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.solidDotCircle,
                                  color: Color(0xA036861A),
                                  size: 24,
                                ),
                                Text(
                                  '    Talking with MR ED',
                                  // style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding:
                                    EdgeInsetsDirectional.fromSTEB(67, 0, 0, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.gripHorizontal,
                                      color: Color(0xFF323131),
                                      size: 24,
                                    ),
                                  ),
                                ),
                                FaIcon(
                                  FontAwesomeIcons.gripHorizontal,
                                  color: Color(0xFF323131),
                                  size: 24,
                                ),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Text(
                                  'learn more with me pleasw  connect.....orld',
                                  textAlign: TextAlign.start,
                                  style:TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0.05),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.calendar_today,
                                      color: Color(0xA036861A),
                                      size: 24,
                                    ),
                                    Text(
                                      '14/23/2022 |',
                                      // style: FlutterFlowTheme.of(context).bodyText1,
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            67, 0, 0, 0),
                                        child: FaIcon(
                                          FontAwesomeIcons.gripHorizontal,
                                          color: Color(0xFF323131),
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.gripHorizontal,
                                      color: Color(0xFF323131),
                                      size: 24,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.solidDotCircle,
                                  color: Color(0xA036861A),
                                  size: 24,
                                ),
                                Text(
                                  '    Talking with MR ED',
                                  // style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding:
                                    EdgeInsetsDirectional.fromSTEB(67, 0, 0, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.gripHorizontal,
                                      color: Color(0xFF323131),
                                      size: 24,
                                    ),
                                  ),
                                ),
                                FaIcon(
                                  FontAwesomeIcons.gripHorizontal,
                                  color: Color(0xFF323131),
                                  size: 24,
                                ),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Text(
                                  'learn more with me pleasw  connect.....orld',
                                  textAlign: TextAlign.start,
                                  style:TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0.05),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.calendar_today,
                                      color: Color(0xA036861A),
                                      size: 24,
                                    ),
                                    Text(
                                      '14/23/2022 |',
                                      // style: FlutterFlowTheme.of(context).bodyText1,
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            67, 0, 0, 0),
                                        child: FaIcon(
                                          FontAwesomeIcons.gripHorizontal,
                                          color: Color(0xFF323131),
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.gripHorizontal,
                                      color: Color(0xFF323131),
                                      size: 24,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                         color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.solidDotCircle,
                                  color: Color(0xA036861A),
                                  size: 24,
                                ),
                                Text(
                                  '    Talking with MR ED',
                                  // style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0),
                                  child: Padding(
                                    padding:
                                    EdgeInsetsDirectional.fromSTEB(67, 0, 0, 0),
                                    child: FaIcon(
                                      FontAwesomeIcons.gripHorizontal,
                                      color: Color(0xFF323131),
                                      size: 24,
                                    ),
                                  ),
                                ),
                                FaIcon(
                                  FontAwesomeIcons.gripHorizontal,
                                  color: Color(0xFF323131),
                                  size: 24,
                                ),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Text(
                                  'learn more with me pleasw  connect.....orld',
                                  textAlign: TextAlign.start,
                                  style:TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0.05),
                              child: Padding(
                                padding:
                                EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.calendar_today,
                                      color: Color(0xA036861A),
                                      size: 24,
                                    ),
                                    Text(
                                      '14/23/2022 |',
                                      // style: FlutterFlowTheme.of(context).bodyText1,
                                    ),
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            67, 0, 0, 0),
                                        child: FaIcon(
                                          FontAwesomeIcons.gripHorizontal,
                                          color: Color(0xFF323131),
                                          size: 24,
                                        ),
                                      ),
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.gripHorizontal,
                                      color: Color(0xFF323131),
                                      size: 24,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            BottomNavBarV2(),
          ],
        ),
      ),
    );
  }
}

