import 'package:flutter/material.dart';

class ReferralWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget _listRefer(String num, Widget text) {
      return ListTile(
        contentPadding: const EdgeInsets.only(bottom: 10),
        leading: CircleAvatar(
          backgroundColor: Color(0xff65c6e9),
          radius: 25,
          child: Text(
            num,
            style: const TextStyle(
              color: Colors.white,
              fontFamily: 'Serif',
              fontSize: 18,
            ),
          ),
        ),
        title: text,
      );
    }

    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(vertical: 30),
          width: double.infinity,
          color: const Color(0xffc1ebe1),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: const Text(
            'How referral works?',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              _listRefer(
                '1',
                Text('Invite your buddies to iMumz'),
              ),
              _listRefer(
                '2',
                Text(
                    'They will receive ₹200/- cashback on purchase of Baby Care Program+ plan'),
              ),
              _listRefer(
                '3',
                RichText(
                  text: TextSpan(
                    text: 'You get an ',
                    style: const TextStyle(color: Colors.black, fontSize: 15),
                    children: <TextSpan>[
                      const TextSpan(
                        text: 'instant paytm cashback of ₹200/-',
                        style: const TextStyle(
                          color: Color(0xff65c6e9),
                          fontSize: 18,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Divider(thickness: 2),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                padding: const EdgeInsets.all(15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffc1ebe1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My referrals',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: ' 2\n ',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              height: 0.9,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'SIGNED UP',
                                style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: ' 2\n ',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              height: 0.9,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'SUBSCRIBED',
                                style: TextStyle(
                                    color: Colors.grey[500],
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 5),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'View Details',
                            style: const TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              const Divider(thickness: 2),
              const ListTile(
                contentPadding: EdgeInsets.only(right: 0),
                leading: const Text(
                  'Terms & Conditions',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const IconButton(
                  padding: const EdgeInsets.only(left: 25),
                  icon: const Icon(
                    Icons.chevron_right,
                    size: 30,
                    color: Colors.black,
                  ),
                  onPressed: null,
                ),
              ),
              const Divider(thickness: 2),
              const ListTile(
                contentPadding: EdgeInsets.only(right: 0),
                leading: const Text(
                  'FAQs',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: const IconButton(
                  padding: const EdgeInsets.only(left: 25),
                  icon: const Icon(
                    Icons.chevron_right,
                    size: 30,
                    color: Colors.black,
                  ),
                  onPressed: null,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
