import 'package:blinkit_ui/repository/screens/cart/cartscreen.dart';
import 'package:blinkit_ui/repository/screens/category/categoryscreen.dart';
import 'package:blinkit_ui/repository/screens/home/homescreen.dart';
import 'package:blinkit_ui/repository/screens/print/printscreen.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int CurrentIndex = 0;

  List<Widget> Pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    PrintScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: CurrentIndex,
        children: Pages,
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined,color: Colors.black,), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined,color: Colors.black,), label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.dashboard_outlined,color: Colors.black,), label: 'Category'),
        BottomNavigationBarItem(icon: Icon(Icons.print_outlined,color: Colors.black,), label: 'Print'),
      ],type: BottomNavigationBarType.fixed,currentIndex: CurrentIndex,onTap: (index){
        setState(() {
          CurrentIndex=index;
        });
      },selectedItemColor: Colors.amber,iconSize:30,),
    );
  }
}
