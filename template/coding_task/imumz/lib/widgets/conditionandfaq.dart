import 'package:flutter/material.dart';

class ConditionAndFAQs extends StatelessWidget {
  const ConditionAndFAQs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Terms & Conditions',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chevron_right),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Divider(
            thickness: 1,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'FAQs',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.chevron_right),
            )
          ],
        ),
        SizedBox(
          height: 20,
        )
      ],
    );
  }
}
