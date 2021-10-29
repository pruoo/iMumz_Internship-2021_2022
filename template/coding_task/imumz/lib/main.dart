import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:imumz/widgets/conditionandfaq.dart';
import 'package:imumz/widgets/firstcard.dart';
import 'package:imumz/widgets/myreferrals.dart';
import 'package:imumz/widgets/refferral.dart';
import 'package:imumz/widgets/secondcard.dart';
import 'package:imumz/widgets/sharereferral.dart';
import 'package:imumz/widgets/thirdcard.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Imumz Internship',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: HexColor('#fefffe'),
        primarySwatch: Colors.teal,

      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //toolbarOpacity: 0.5,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: HexColor('#c0eae1')),
            child: IconButton(
              alignment: Alignment.center,
              onPressed: () {},
              icon: Icon(
                Icons.chevron_left,
                color: HexColor('#1A1A1A'),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: const [
            Padding(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: FirstCard(),
            ),
            Card(
              elevation: 0,
              child: Image(image: AssetImage('assets/images/img1.png')),
            ),
            SecondCard(),
            ThirdCard(),
            ShareReferral(),
            Referral(),
            SizedBox(),
             Padding(
               padding: EdgeInsets.all(8.0),
               child: Divider(
               thickness: 1,
            ),
             ),
            MyReferrals(),
            Padding(
               padding: EdgeInsets.all(8.0),
               child: Divider(
               thickness: 1,
            ),
             ),
             ConditionAndFAQs()
          ],
        ),
      ),
    );
  }
}
