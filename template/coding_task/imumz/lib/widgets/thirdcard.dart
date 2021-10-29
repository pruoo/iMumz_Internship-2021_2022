import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ThirdCard extends StatelessWidget {
  const ThirdCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(10),
      // ),
      color: Colors.white,
      //elevation: 0,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.11,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 10,
            top: 5,
            bottom: 5,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '#SPREADTHELOVE',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: HexColor('#1A1A1A')),
              ),
              Text(
                'Gift your pregnant buddy ₹200/- off on iMumz Baby Care Program + and get small token of ₹200/- paytm cashback. REFER NOW!',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                    color: HexColor('#595752')),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
