import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  RawMaterialButton(
                    onPressed: () => SystemNavigator.pop(),
                    elevation: 2.0,
                    fillColor: Color(0xFFC1EBE1),
                    child: Icon(
                      Icons.chevron_left_sharp,
                      color: Color(0xFF3A3D3C),
                      size: 25.0,
                    ),
                    padding: EdgeInsets.all(10.0),
                    shape: CircleBorder(),
                  )
//                  IconButton(
                  //                  color: Color(0xFFC1EBE1),
                  //                icon: Icon(
                  //                Icons.chevron_left_sharp,
                  //              color: Color(0xFF3A3D3C),
                  //            size: 25,
                  //        ),
                  //      onPressed: () {
                  //      print('IconButton pressed');
                  //  },
                  //)
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9F3EA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 15, 15, 15),
                    child: Text(
                      'Pending request from Divya!\nDivya has sent you \$200/- off discount on your Baby Care Program plus plan. AVAIL IT NOW',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Color(0xFF0D0F0F),
                        fontSize: 13.5,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Image.asset(
                'assets/images/lol.bmp',
                width: double.infinity,
                height: 250,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                child: Text(
                  'Together we can create happy, healthy and intelligent babies',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF3F3C37),
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                child: Text(
                  'Gift your pregnant buddy 200/- off on Mumz Baby Care Program + and get small token of 200/- paytm cashback. REFER NOW!',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    color: Color(0xFF7B7975),
                    fontSize: 13,
                  ),
                ),
              ),
              InkWell(
                  onTap: () {
                    Clipboard.setData(new ClipboardData(text: "IMUMZINT3RN"))
                        .then((_) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("Code Copied!"),
                      ));
                      ;
                    });
                  },
                  child: new Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Color(0x5E4A4A4A),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'IMUMZINT3RN',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color(0xFF141414),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.content_copy,
                            color: Colors.black,
                            size: 24,
                          )
                        ],
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 15),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Share.share('IMUMZINT3RN');
                      },
                      child: new Container(
                        width: 150,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF39C04C),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            FaIcon(
                              FontAwesomeIcons.whatsapp,
                              color: Colors.white,
                              size: 24,
                            ),
                            Text(
                              'Whatsapp',
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Share.share('IMUMZINT3RN');
                        },
                        child: new Container(
                          width: 150,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.share_rounded,
                                color: Colors.white,
                                size: 24,
                              ),
                              Text(
                                'Other',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFFD9F3EA),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'How referral works?',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Image.asset(
                'assets/images/lol2.bmp',
                width: double.infinity,
                height: 190,
                fit: BoxFit.contain,
              ),
              Divider(
                thickness: 2,
                color: Color(0xFFD9D9D9),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: Container(
                  width: double.infinity,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFFD9F3EA),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 10, 0, 0),
                        child: Text(
                          'My Referrals',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 0),
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 0, 10, 0),
                                child: Text(
                                  'Signed Up',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFB3BBB7),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 10, 10, 0),
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 0, 10, 0),
                                child: Text(
                                  'Subscribed',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFFB3BBB7),
                                  ),
                                ),
                              )
                            ],
                          ),
                          Container(
                            width: 100,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Color(0xFF232725),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'View Deatils',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 2,
                color: Color(0xFFD9D9D9),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Terms & Conditions',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right_sharp,
                      color: Colors.black,
                      size: 24,
                    )
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: Color(0xFFD9D9D9),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'FAQs',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Icon(
                      Icons.chevron_right_sharp,
                      color: Colors.black,
                      size: 24,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
