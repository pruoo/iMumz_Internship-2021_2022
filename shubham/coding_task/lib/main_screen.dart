import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: Container(
        margin: EdgeInsets.only(top: 20, left: 5),
        height: 32,
        width: 32,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Color(0xffc1ebe1),
            child: Icon(
              Icons.chevron_left_sharp,
              size: 40,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 130),
          Container(
            width: double.infinity,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.symmetric(horizontal: 19, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffc1ebe1),
            ),
            child: RichText(
              text: TextSpan(
                text:
                    'Pending request from Divya!\nDivya has sent you ₹200/- off discount on your Baby Care Program plus plan.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black,
                  height: 1.3,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: ' AVAIL IT NOW!',
                      style: TextStyle(color: Colors.orange)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
