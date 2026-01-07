import 'package:flutter/material.dart';

class MainNavBarHolderScreen extends StatefulWidget {
  const MainNavBarHolderScreen({super.key});

  @override
  State<MainNavBarHolderScreen> createState() => _MainNavBarHolderScreenState();
}

class _MainNavBarHolderScreenState extends State<MainNavBarHolderScreen> {

  int _selectedIndex = 0;

  List<Widget> _screens = [

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
          //selectedIndex: ,
          onDestinationSelected: (int index){

          },
          destinations: [
        NavigationDestination(icon: Icon(Icons.add_box), label: 'New Task'),
        NavigationDestination(icon: Icon(Icons.done_all), label: 'Completed'),
        NavigationDestination(icon: Icon(Icons.close), label: 'Cancelled'),
        NavigationDestination(icon: Icon(Icons.refresh), label: 'Progress'),
      ]),
    );
  }
}
