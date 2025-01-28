import 'package:flutter/material.dart';

import '../../widgets/uihelper.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});

  TextEditingController searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  color: Colors.red,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          UiHelper.CustomText(
                              text: "Blinkit in",
                              color: Colors.black,
                              fontweight: FontWeight.bold,
                              fontsize: 15),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          UiHelper.CustomText(
                              text: "16 minutes",
                              color: Colors.black,
                              fontweight: FontWeight.bold,
                              fontsize: 25,
                              fontfamily: "bold"),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 15,
                          ),
                          UiHelper.CustomText(
                              text: "Home - ",
                              color: Colors.black,
                              fontweight: FontWeight.bold,
                              fontsize: 15,
                              fontfamily: "bold"),
                          UiHelper.CustomText(
                              text: "Saurav Kumar Singh, Jharkhand",
                              color: Colors.black,
                              fontweight: FontWeight.normal,
                              fontsize: 15),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      UiHelper.CustomTextField(controller: searchController)
                    ],
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 50,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 30,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              height: 185,
              width: double.infinity,
              color: Colors.red,
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  UiHelper.CustomText(
                    text: "Mega Diwali Sale",
                    color: Colors.white,
                    fontweight: FontWeight.bold,
                    fontsize: 20,
                    fontfamily: "bold"),],
              ),
            ),

            SizedBox(height: 50,),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                UiHelper.CustomText(
                    text: "Bestsellers",
                    color: Color(0XFF000000),
                    fontweight: FontWeight.bold,
                    fontsize: 20,
                    fontfamily: "bold")
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(
                  width: 15,
                ),
                Container(

                  width: 105,
                  child: Column(children: [
                    Container(
                      height: 105,
                      child: UiHelper.CustomImage(img: "img_5.png"),
                    ),
                    SizedBox(height: 5,),
                    UiHelper.CustomText(text: "Golden Glass Wooden Lid Candle", color: Colors.black, fontweight: FontWeight.bold, fontsize: 11),
                    Row(
                      children: [Icon(Icons.alarm_outlined),
                        SizedBox(height: 5,),
                        UiHelper.CustomText(text: " 16 MINS", color: Colors.brown, fontweight: FontWeight.w100, fontsize: 18)
                      ],
                    )
                  ],),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(

                  width: 105,
                  child: Column(children: [
                    Container(
                      height: 105,
                      child: UiHelper.CustomImage(img: "img_6.png"),
                    ),
                    SizedBox(height: 5,),
                    UiHelper.CustomText(text: "Kadhai Paneer restro style", color: Colors.black, fontweight: FontWeight.bold, fontsize: 11),
                    Row(
                      children: [Icon(Icons.alarm_outlined),
                        SizedBox(height: 5,),
                        UiHelper.CustomText(text: " 16 MINS", color: Colors.brown, fontweight: FontWeight.w100, fontsize: 18)
                      ],
                    )
                  ],),
                ),
                SizedBox(
                  width: 15,
                ),
                Container(

                  width: 105,
                  child: Column(children: [
                    Container(
                      
                      height: 105,
                      child: UiHelper.CustomImage(img: "img_7.png"),
                    ),
                    SizedBox(height: 5,),
                    UiHelper.CustomText(text: "Fresh Kashmiri Apple", color: Colors.black, fontweight: FontWeight.bold, fontsize: 11),
                    Row(
                      children: [Icon(Icons.alarm_outlined),
                        SizedBox(height: 5,),
                        UiHelper.CustomText(text: " 16 MINS", color: Colors.brown, fontweight: FontWeight.w100, fontsize: 18)
                      ],
                    )
                  ],),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}
