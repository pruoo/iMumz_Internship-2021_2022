import 'package:coding_task/colorConstants.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'iMumz',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40,
                  child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(60)),
                      color: ColorConstants.lightGreen,
                      child: const Icon(
                        Icons.arrow_back,
                        size: 24,
                      )),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: ColorConstants.lightGreen,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Pending request from Divya !",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Divya has sent you ₹200/- off discount on your",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: const [
                            Text(
                              "Baby Care Program plus plan ",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "AVAIL IT NOW!",
                              style: TextStyle(color: Colors.orange),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Image.asset(
                  'assets/illustration.png',
                  fit: BoxFit.fitWidth,
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  "Together we can create happy, heathy and intelligent babies",
                  style: TextStyle(fontSize: 36),
                  maxLines: 3,
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                  "#SPREADTHELOVE",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 8,
                ),
                const Text(
                    "Gift your pregnant buddy ₹200/- off on iMumz Baby Care Program + and get small token of ₹200/- paytm cashback. REFER NOW!"),
                const SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2, right: 2),
                  child: DottedBorder(
                    color: Colors.black,
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(15),
                    strokeWidth: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: const [
                          Text(
                            "IMUMZ1NT3RN",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(Icons.copy),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Card(
                    color: ColorConstants.darkGreen,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 8,
                            ),
                            Icon(Icons.message, color: Colors.white),
                            SizedBox(
                              width: 12,
                            ),
                            Text(
                              "WHATSAPP",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Card(
                    color: ColorConstants.blue,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width / 3,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            SizedBox(
                              width: 12,
                            ),
                            Icon(
                              Icons.share,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Text(
                              "OTHER",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 8,
                ),
                const Text("some text", style: TextStyle(color: Colors.grey)),
                const SizedBox(
                  height: 8,
                ),
                const SizedBox(
                  width: double.infinity,
                  height: 36,
                  child: ColoredBox(
                    color: ColorConstants.lightGreen,
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text("How referal works?",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        )),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                const BulletPoint(
                  no: 1,
                  text: "Invite your buddies to iMumz",
                ),
                const BulletPoint(
                    no: 2,
                    text:
                        "They will recieve ₹200/- paytm cashback on purchase of Baby Care Program+ plan"),
                Row(
                  children: [
                    const DecoratedBox(
                        decoration: BoxDecoration(
                            color: ColorConstants.blue, shape: BoxShape.circle),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3'),
                        )),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: RichText(
                        text: const TextSpan(
                            text: 'you get an ',
                            style: TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'instant paytm cashback of ₹200/-',
                                style: TextStyle(
                                  color: ColorConstants.blue,
                                ),
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                const Divider(),
                Card(
                  color: ColorConstants.lightGreen,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "My Referrals",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    '2',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                  Text(
                                    'SIGNED UP',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              const SizedBox(
                                width: 8,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    '2',
                                    style: TextStyle(fontSize: 24),
                                  ),
                                  Text(
                                    'SUBSCRIBED',
                                    style: TextStyle(color: Colors.grey),
                                  )
                                ],
                              ),
                              const Spacer(),
                              DecoratedBox(
                                decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('View Details'),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                            ])
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 2,
                ),
                const Divider(),
                const SizedBox(
                  width: 2,
                ),
                Row(
                  children: const [
                    Text('Terms & Conditions',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
                const SizedBox(
                  width: 2,
                ),
                const Divider(),
                const SizedBox(
                  width: 2,
                ),
                Row(
                  children: const [
                    Text('FAQs', style: TextStyle(fontWeight: FontWeight.bold)),
                    Spacer(),
                    Icon(Icons.arrow_forward_ios)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BulletPoint extends StatelessWidget {
  const BulletPoint({
    Key? key,
    required this.no,
    required this.text,
  }) : super(key: key);

  final int no;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DecoratedBox(
            decoration: const BoxDecoration(
                color: ColorConstants.blue, shape: BoxShape.circle),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(no.toString()),
            )),
        const SizedBox(
          width: 12,
        ),
        Expanded(child: Text(text))
      ],
    );
  }
}
