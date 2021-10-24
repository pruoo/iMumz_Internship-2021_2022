import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/services.dart';
import 'package:share/share.dart';

class ShareCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Together we can create happy, healthy and intelligent babies',
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 28,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            '#SPREADTHELOVE',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            'Gift your pregnant buddy ₹200/- off on iMumz Baby Care Program + and get small token of ₹200/- paytm cashback. REFER NOW!',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25),
            height: 46,
            width: double.infinity,
            child: DottedBorder(
              padding: const EdgeInsets.only(left: 20, right: 10),
              borderType: BorderType.RRect,
              radius: const Radius.circular(23),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'IMUMZ1NT3RN',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: 'IMUMZ1NT3RN'));
                      ScaffoldMessenger.of(context).hideCurrentSnackBar();
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: const Text('Copied!'),
                          duration: const Duration(milliseconds: 500),
                        ),
                      );
                    },
                    icon: const Icon(Icons.copy),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 15),
                  height: 46,
                  width: MediaQuery.of(context).size.width * 0.43,
                  decoration: BoxDecoration(
                    color: Color(0xff25D366),
                    borderRadius: BorderRadius.circular(23),
                  ),
                  child: TextButton.icon(
                    onPressed: () async {
                      await launch("https://wa.me/?text=IMUMZ1NT3RN");
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.whatsapp,
                      size: 30,
                      color: Colors.white,
                    ),
                    label: const Text(
                      ' WHATSAPP',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.only(right: 35),
                  height: 46,
                  width: MediaQuery.of(context).size.width * 0.43,
                  decoration: BoxDecoration(
                    color: const Color(0xff65c6e9),
                    borderRadius: BorderRadius.circular(23),
                  ),
                  child: TextButton.icon(
                    onPressed: () {
                      Share.share("IMUMZ1NT3RN");
                    },
                    icon: const Icon(
                      Icons.share,
                      size: 30,
                      color: Colors.white,
                    ),
                    label: const Text(
                      '    OTHER',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. sed',
              style: TextStyle(
                fontSize: 11,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
