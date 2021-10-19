import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

String text =
    "Together we can create\nhappy, healthy and\nintelligent babies\n\n#SPREADTHELOVE\n\nGift your pregnant buddy \u{20B9}200/- off on iMUMz Baby\nCare Program + and get small token of \u{20B9}200/- paytm\ncashback. REFER NOW !";

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxisScrolled) => [
          const SliverAppBar(
            backgroundColor: Colors.white,
            leading: Icon(
              FontAwesomeIcons.chevronCircleLeft,
              color: Color.fromRGBO(180, 220, 210, 1),
            ),
          ),
        ],
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(180, 220, 210, 1),
                  ),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade900),
                      children: const <TextSpan>[
                        TextSpan(
                          text: 'Pending request from Divya!\n',
                        ),
                        TextSpan(
                            text:
                                'Divya has sent you \u{20B9}200/- off dicount on your\n'),
                        TextSpan(text: 'Baby Care Program plus plan.'),
                        TextSpan(
                            text: ' AVAIL IT NOW !',
                            style: TextStyle(color: Colors.orange))
                      ],
                    ),
                  )),
              Container(
                  margin: EdgeInsets.all(8),
                  child: Image.asset('assets/pic.png')),
              Container(
                margin: EdgeInsets.only(left: 15),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(
                          text:
                              'Together we can create\nhappy, healthy and\nintelligent babies\n\n',
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.grey.shade800,
                              fontWeight: FontWeight.bold)),
                      const TextSpan(
                          text: '#SPREADTHELOVE\n\n',
                          style: TextStyle(color: Colors.black)),
                      TextSpan(
                          text:
                              'Gift your pregnant buddy \u{20B9}200/- off on iMUMz Baby\nCare Program + and get small token of \u{20B9}200/- paytm\ncashback.',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: Colors.grey.shade600)),
                      TextSpan(
                          text: ' REFER NOW !\n',
                          style: TextStyle(
                              color: Colors.grey.shade700,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
                child: DottedBorder(
                  child: Container(
                    height: 45,
                    child: ListTile(
                      contentPadding: const EdgeInsets.only(
                          left: 10, right: 10, bottom: 10),
                      leading: const Text(
                        'IMUMZ1T3RN',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: IconButton(
                          onPressed: () {
                            //copy to clipboard
                          },
                          icon: const Icon(
                            Icons.copy,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(30),
                  dashPattern: const [3, 2, 3, 2],
                ),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 26, vertical: 8),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          // function goes here
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromRGBO(37, 211, 102, 1)),
                          height: 45,
                          width: 165,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Icon(
                                FontAwesomeIcons.whatsapp,
                                color: Colors.white,
                              ),
                              Text(
                                'WHATSAPP',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // function goes here
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.lightBlue.shade300,
                          ),
                          height: 45,
                          width: 165,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Icon(
                                Icons.share,
                                color: Colors.white,
                                size: 25,
                              ),
                              Text(
                                'OTHER',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              )
                            ],
                          ),
                        ),
                      )
                    ]),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                child: const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. sed',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                color: const Color.fromRGBO(180, 220, 210, 1),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                width: double.infinity,
                height: 45,
                child: Text(
                  'How Referral works?',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade900),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightBlue.shade300,
                      child: const Text(
                        '1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    title: const Text(
                      'Invite your buddies to iMumz',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightBlue.shade300,
                      child: const Text(
                        '2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    title: const Text(
                      'They will receive \u{20B9}200/- cashback on\npurcahse of Baby Care Program+ plan',
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.lightBlue.shade300,
                      child: const Text(
                        '3',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    title: RichText(
                        text: const TextSpan(
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            children: <TextSpan>[
                          TextSpan(
                            text: 'You get an ',
                          ),
                          TextSpan(
                              text: 'instant paytm cashback of \u{20B9}200/-',
                              style: TextStyle(
                                  color: Colors.lightBlue, fontSize: 18)),
                        ])),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                indent: 18,
                endIndent: 18,
                color: Colors.grey.shade300,
                thickness: 1.5,
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                margin: EdgeInsets.all(10),
                color: const Color.fromRGBO(180, 220, 210, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      child: const Text(
                        'My referrals',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.all(20),
                          child: RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              children: <TextSpan>[
                                const TextSpan(
                                    text: '2\n',
                                    style: TextStyle(
                                        fontSize: 45,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: 'SIGNED UP',
                                    style:
                                        TextStyle(color: Colors.grey.shade500)),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          child: RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                              children: <TextSpan>[
                                const TextSpan(
                                    text: '2\n',
                                    style: TextStyle(
                                        fontSize: 45,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold)),
                                TextSpan(
                                    text: 'SUBSCRIBED',
                                    style:
                                        TextStyle(color: Colors.grey.shade500)),
                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            // your function
                          },
                          child: Container(
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.transparent),
                              height: 45,
                              width: 140,
                              child: const Text(
                                'View Details',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15),
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                indent: 18,
                endIndent: 18,
                color: Colors.grey.shade300,
                thickness: 1.5,
              ),
              const ExpansionTile(
                title: Text(
                  'Terms and Conditions',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tincidunt finibus porta. Pellentesque consequat vitae metus eget feugiat. Donec urna augue, consequat id vestibulum tincidunt, porta id leo. Curabitur pretium blandit diam, id dignissim arcu.",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
              Divider(
                indent: 18,
                endIndent: 18,
                color: Colors.grey.shade300,
                thickness: 1.5,
              ),
              const ExpansionTile(
                title: Text(
                  'FAQ\'s',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
                ),
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tincidunt finibus porta. Pellentesque consequat vitae metus eget feugiat. Donec urna augue, consequat id vestibulum tincidunt, porta id leo. Curabitur pretium blandit diam, id dignissim arcu.",
                      style: TextStyle(fontWeight: FontWeight.w700),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
