import 'package:blinkit_ui/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.CustomImage(img: 'img_1.png'),
          SizedBox(
            height: 10,
          ),
          // Image.asset('assets/images/img_2.png',scale: 5,)
          UiHelper.CustomImage(img: 'img_2.png', scale: 5),
          SizedBox(
            height: 10,
          ),
          UiHelper.CustomText(
              text: "India's last minute app",
              color: Colors.black,
              fontweight: FontWeight.bold,
              fontsize: 20,
              fontfamily: "bold"),
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              height: 200,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0XFFFFFFFF)),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  UiHelper.CustomText(
                      text: 'Saurav Kumar',
                      color: Colors.black,
                      fontweight: FontWeight.normal,
                      fontsize: 14),
                  SizedBox(
                    height: 5,
                  ),
                  UiHelper.CustomText(
                      text: '72XXXXXXXX',
                      color: Colors.black,
                      fontweight: FontWeight.normal,
                      fontsize: 14),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 48,
                    width: 295,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0XFFE23744),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            UiHelper.CustomText(
                                text: 'Login with',
                                color: Colors.white,
                                fontweight: FontWeight.bold,
                                fontsize: 18,
                                fontfamily: "bold"),
                            SizedBox(
                              width: 5,
                            ),
                            UiHelper.CustomText(
                                text: 'zomato',
                                color: Colors.white,
                                fontweight: FontWeight.bold,
                                fontsize: 22,
                                fontfamily: "bold"),
                          ],
                        )),
                  ),
                  UiHelper.CustomText(
                      text: "Access your saved addresses from zomato automatically",
                      color: Colors.black54,
                      fontweight: FontWeight.normal,
                      fontsize: 10),
                  SizedBox(height: 15,),
                  UiHelper.CustomText(
                      text: 'or login with phone number',
                      color: Colors.green,
                      fontweight: FontWeight.bold,
                      fontsize: 14),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
