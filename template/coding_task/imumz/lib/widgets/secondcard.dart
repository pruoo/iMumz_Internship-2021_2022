import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SecondCard extends StatelessWidget {
  const SecondCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.circular(10),
      // ),
      color: Colors.white,
      //elevation: 0,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.12,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 10,
            top: 5,
            bottom: 5,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Together we can create',
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: HexColor('#595752')),
              ),
              Text(
                'happy, healthy and',
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: HexColor('#595752')),
              ),
              Text(
                'intelligent babies',
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: HexColor('#595752')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
