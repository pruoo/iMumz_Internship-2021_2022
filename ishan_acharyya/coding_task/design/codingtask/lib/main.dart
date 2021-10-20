import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'package:dotted_border/dotted_border.dart';

void main() {
  runApp(mockup());
}

class mockup extends StatefulWidget {
  const mockup({Key? key}) : super(key: key);

  @override
  _mockupState createState() => _mockupState();
}

class _mockupState extends State<mockup> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "iMumz coding task",
      home: Scaffold(
          appBar: AppBar(
            leading: Padding(
              padding: const EdgeInsets.only(left: 30, top: 5),
              child: RawMaterialButton(
                onPressed: () {},
                elevation: 2.0,
                fillColor: greenAccent,
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 20.0,
                  color: Color(0xff3f4342),
                ),
                padding: EdgeInsets.only(left: 5),
                shape: CircleBorder(),
              ),
            ),
            backgroundColor: whiteBackground,
            elevation: 0.0,
          ),
          body: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: paddingHorizontal,vertical: 10),
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8,horizontal: 15),
                        decoration: BoxDecoration(
                          color: greenAccent,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style.copyWith(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),
                            children: const <TextSpan>[
                              TextSpan(text: "Pending request from Divya!\n"),
                              TextSpan(text: "Divya has sent you ₹200/- off discount on your Baby Care Program Plus plan. "),
                              TextSpan(text: "AVAIL IT NOW!",style: TextStyle(color: orangeText)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Image.asset('assets/images/pic1.png'),
                    SizedBox(height: 10,),

                    Padding(
                      padding: const EdgeInsets.only(left: paddingHorizontal,right:paddingHorizontal+30,top: 10,bottom:10),
                      child: Text("Together we can create happy, healthy and intelligent babies",style: TextStyle(fontSize: 27,fontWeight: FontWeight.w500),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: paddingHorizontal,vertical: 10),
                      child: Text("#SPREADTHELOVE",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: paddingHorizontal,vertical: 10),
                      child: RichText(
                          text: TextSpan(
                            style: DefaultTextStyle.of(context).style.copyWith(fontSize: 15,color: Colors.grey[600],fontWeight: FontWeight.w800),
                            children: const <TextSpan>[
                              TextSpan(text: "Gift your pregnant buddy ₹200/- off on iMumz Baby Care Program + and get small token of ₹200/- paytm cashback."),
                              TextSpan(text: " REFER NOW!",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic))
                            ],
                          )),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: paddingHorizontal,vertical: 10),
                      child: DottedBorder(
                        color: Colors.black,
                        strokeWidth: 1,
                        padding: EdgeInsets.all(10),
                        borderType: BorderType.RRect,
                        radius: Radius.circular(100),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 15),
                              child: Text("IMUMZ1NT3RN",style: TextStyle(fontWeight: FontWeight.w900),),
                            ),
                            GestureDetector(
                                onTap: ()=>doSomething(),
                                child: Icon(Icons.copy)
                            ),
                          ],
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: ()=>doSomething(),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.green[500],
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              padding: EdgeInsets.symmetric(vertical: 8,horizontal: 25),
                              child: Row(
                                children: [
                                  Image.asset('assets/images/whatsapp.png',height: 25,),
                                  SizedBox(width:12,),
                                  Text("   WHATSAPP   ",style: TextStyle(color: Colors.white,fontFamily: ""),),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: ()=>doSomething(),
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Color(0xff65c6e9),
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              padding: EdgeInsets.symmetric(vertical: 8,horizontal: 25),
                              child: Row(
                                children: [
                                  Icon(Icons.share,size: 25,color: Colors.white,),
                                  SizedBox(width:12,),
                                  Text("   OTHER   ",style: TextStyle(color: Colors.white,fontFamily: ""),),
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: paddingHorizontal,vertical: 10),
                      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300),),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 14),
                      color: greenAccent,
                      child: Text("How referral works?",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: paddingHorizontal,vertical: 15),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color:blueReferralNumbering,
                                    borderRadius: BorderRadius.all(Radius.circular(20)),

                                  ),
                                  height: 40,
                                  width: 40,
                                  child: Center(child: Text("1",style: TextStyle(fontSize: 20,color: Colors.white),)),
                                ),
                                SizedBox(width: 15),
                                Flexible(
                                  child: RichText(
                                      text: TextSpan(
                                        children: const <TextSpan>[
                                          TextSpan(text: "Invite your buddies to iMumz",style: TextStyle(color: Colors.black,fontSize: 15)),
                                        ],
                                      ),),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color:blueReferralNumbering,
                                    borderRadius: BorderRadius.all(Radius.circular(20)),

                                  ),
                                  height: 40,
                                  width: 40,
                                  child: Center(child: Text("2",style: TextStyle(fontSize: 20,color: Colors.white,),)),
                                ),
                                SizedBox(width: 15),
                                Flexible(
                                  child: RichText(
                                    text: TextSpan(
                                      children: const <TextSpan>[
                                        TextSpan(text: "The will recieve ₹200/- cashback on purchase of Baby Care Program+ plan",style: TextStyle(color: Colors.black,fontSize: 15)),
                                      ],
                                    ),),
                                ),
                                SizedBox(width: 30),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color:blueReferralNumbering,
                                    borderRadius: BorderRadius.all(Radius.circular(20)),

                                  ),
                                  height: 40,
                                  width: 40,
                                  child: Center(child: Text("3",style: TextStyle(fontSize: 20,color: Colors.white,),)),
                                ),
                                SizedBox(width: 15),
                                Flexible(
                                  child: RichText(
                                    text: TextSpan(
                                      children: const <TextSpan>[
                                        TextSpan(text: "You get an",style: TextStyle(color: Colors.black,fontSize: 15)),
                                        TextSpan(text: " instant paytm cashback of ₹200/-",style: TextStyle(color: Colors.lightBlueAccent,fontSize: 15)),
                                      ],
                                    ),),
                                ),
                                SizedBox(width: 30),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    Divider(thickness: 2,indent: paddingHorizontal,endIndent: paddingHorizontal,),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: paddingHorizontal,vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: greenAccent,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("My referrals",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                            SizedBox(height: 8,),
                            Row(
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("2",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w800),),
                                      SizedBox(height: 5,),
                                      Text("SIGNED UP",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13,color: Colors.grey),),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("2",style: TextStyle(fontSize: 35,fontWeight: FontWeight.w800),),
                                      SizedBox(height: 5,),
                                      Text("SUBSCRIBED",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 13,color: Colors.grey),),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: InkWell(
                                    onTap: ()=>doSomething(),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(20)),
                                      ),
                                      padding: EdgeInsets.all(10),
                                      child: Center(child: Text("View Details")),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                    Divider(thickness: 2,indent: paddingHorizontal,endIndent: paddingHorizontal,),
                    InkWell(
                      onTap: ()=>doSomething(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: paddingHorizontal,vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Terms & Conditions',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ),
                    Divider(thickness: 2,indent: paddingHorizontal,endIndent: paddingHorizontal,),
                    InkWell(
                      onTap: ()=>doSomething(),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: paddingHorizontal,vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('FAQs',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
                            Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 90),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
