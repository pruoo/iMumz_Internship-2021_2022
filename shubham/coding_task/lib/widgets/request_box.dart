import 'package:flutter/material.dart';

class RequestBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.symmetric(horizontal: 19, vertical: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffc1ebe1),
      ),
      child: RichText(
        text: const TextSpan(
          text:
              'Pending request from Divya!\nDivya has sent you ₹200/- off discount on your Baby Care Program plus plan.',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.black,
            height: 1.3,
          ),
          children: <TextSpan>[
            const TextSpan(
              text: ' AVAIL IT NOW!',
              style: TextStyle(color: Colors.orange),
            ),
          ],
        ),
      ),
    );
  }
}
