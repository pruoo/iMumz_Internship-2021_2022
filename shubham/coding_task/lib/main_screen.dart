import 'package:coding_task/widgets/referral_work.dart';
import 'package:coding_task/widgets/share_code.dart';
import 'package:flutter/material.dart';

import 'package:coding_task/widgets/request_box.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20, left: 20),
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
              RequestBox(),
              Image.asset('assets/img1.png'),
              SizedBox(height: 30),
              ShareCode(),
              ReferralWork(),
            ],
          ),
        ),
      ),
    );
  }
}
