import 'package:blinkit_ui/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  final TextEditingController searchController = TextEditingController();

  final List<Map<String, String>> bestsellers = [
    {'img': 'assets/images/img_5.png', 'title': 'Golden Glass Wooden Lid Candle' ,'price':'215',},
    {'img': 'assets/images/img_6.png', 'title': 'Kadhai Paneer Restro Style','price':'229',},
    {'img': 'assets/images/img_7.png', 'title': 'Fresh Kashmiri Apple','price':'9',},
    {'img': 'assets/images/img_4.png', 'title': 'Fresh Kashmir Apple','price':'9',},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  color: Colors.orangeAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UiHelper.CustomText(text: "Blinkit in", color: Colors.black, fontweight: FontWeight.bold, fontsize: 15),
                      UiHelper.CustomText(text: "16 minutes", color: Colors.black, fontweight: FontWeight.bold, fontsize: 25,fontfamily: "bold"),
                      UiHelper.CustomText(text: "Home - Saurav Kumar Singh, Jharkhand", color: Colors.black, fontweight: FontWeight.normal, fontsize: 13),
                      const SizedBox(height: 10),

                      UiHelper.CustomTextField(controller: searchController)
                    ],
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 50,
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 30, color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Image.asset('assets/images/img_3.png', height: 100),
                  UiHelper.CustomText(text: "Reordering will be easy", color: Colors.black, fontweight: FontWeight.bold, fontsize: 20,fontfamily: "bold"),
                  const SizedBox(height: 5),
                  UiHelper.CustomText(text: "Items you order will show up here so you can buy", color: Colors.black, fontweight: FontWeight.normal, fontsize: 13),
                  UiHelper.CustomText(text: "them again easily.", color: Colors.black, fontweight: FontWeight.normal, fontsize: 13),

                ],
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child:UiHelper.CustomText(text: "Bestsellers", color: Colors.black, fontweight: FontWeight.bold, fontsize: 18),

            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 2/5
                ),
                itemCount: bestsellers.length,
                itemBuilder: (context, index) {
                  final item = bestsellers[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),

                          child: Image.asset(
                            item['img']!, // Use dynamic image path
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            UiHelper.CustomText(text: item['title']!, color: Colors.black, fontweight: FontWeight.bold, fontsize: 13),
                            const SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(Icons.alarm,size: 16,),
                                SizedBox(width: 5,),
                                UiHelper.CustomText(text: "16 MINS", color: Colors.brown, fontweight: FontWeight.normal, fontsize: 14),

                              ],
                            ),
                            SizedBox(height: 5,),
                            UiHelper.CustomText(text: "₹ ${item['price']!}", color: Colors.black, fontweight: FontWeight.bold, fontsize: 15),

                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}