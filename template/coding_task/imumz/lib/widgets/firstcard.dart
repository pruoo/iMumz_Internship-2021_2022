import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FirstCard extends StatelessWidget {
  const FirstCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: HexColor('#d9f2eb'),
      elevation: 0,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 10,
            top: 5,
            bottom: 5,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pending request from Divya!',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: HexColor('#1A1A1A')),
              ),
              Text(
                'Divya has sent you ₹200/- off discount on your',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: HexColor('#1A1A1A')),
              ),
              RichText(
                text: TextSpan(
                  text: 'Baby Care Program plus plan.',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: HexColor('#1A1A1A')),
                  /*defining default style is optional */
                  children: <TextSpan>[
                    TextSpan(
                        text: ' AVAIL IT NOW!',
                        style: TextStyle(
                            fontSize: 16,
                            // fontWeight: FontWeight.bold,
                            color: HexColor('#f4985e'))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
