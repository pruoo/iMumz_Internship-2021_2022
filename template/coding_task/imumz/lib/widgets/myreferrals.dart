import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MyReferrals extends StatelessWidget {
  const MyReferrals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: HexColor('#d9f2eb'),
        elevation: 0,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 10,
              top: 5,
              bottom: 5,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My referrals',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: HexColor('#1A1A1A')),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('2',style: TextStyle(
                          fontSize: 30,fontWeight: FontWeight.bold,
                        ),),
                        Text('SIGNED UP',style: TextStyle(color: Colors.grey.shade500),)
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('2',style: TextStyle(
                          fontSize: 30,fontWeight: FontWeight.bold,
                        ),),
                        Text('SUBSCRIBED',style: TextStyle(color: Colors.grey.shade500),)
                      ],
                    ),
                    OutlinedButton(onPressed: (){},child: const Text('View Details',style: TextStyle(color: Colors.black),),style: ButtonStyle(
                      shape: MaterialStateProperty.all<OutlinedBorder>(const StadiumBorder()),
                      side: MaterialStateProperty.all<BorderSide>(BorderSide(color: HexColor('#1A1A1A'),width: 1)),
                    ),)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
