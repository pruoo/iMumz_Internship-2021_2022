import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Referral extends StatelessWidget {
  const Referral({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(color: HexColor('#d9f2eb')),
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width,
          child: const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(
                "How referrals works?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.045,
                width: MediaQuery.of(context).size.height * 0.045,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: HexColor('#64c7e9')),
                child: Center(
                  child: Text(
                    '1',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text('Invite your buddies to iMumz',
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400)),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.045,
                width: MediaQuery.of(context).size.height * 0.045,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: HexColor('#64c7e9')),
                child: Center(
                  child: Text(
                    '2',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: Text('They will receive ₹200/- cashback on purchase of Baby Care Program+ plan',
                    style: TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400)),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.045,
                width: MediaQuery.of(context).size.height * 0.045,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: HexColor('#64c7e9')),
                child: Center(
                  child: Text(
                    '3',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: RichText(
                  text: TextSpan(
                    text: 'You get an',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: HexColor('#1A1A1A')),
                    /*defining default style is optional */
                    children: <TextSpan>[
                      TextSpan(
                          text: ' instant paytm cashback of ₹200/-',
                          style: TextStyle(
                              fontSize: 18,
                              // fontWeight: FontWeight.bold,
                              color: HexColor('#3fbfef'))),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
