import 'package:flutter/material.dart';

class CustomBottmNavigationBar extends StatelessWidget {
  // const CustomBottmNavigationBar({ Key? key }) : super(key: key);
  final List bottomBarItems = [
    Icons.home_filled,
    Icons.search,
    Icons.notifications_active_outlined,
    Icons.chat_bubble_outline,
    Icons.bookmark_border,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 25),
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ...bottomBarItems.map((icon) => Icon(
                icon,
                color: Theme.of(context).primaryColor,
              ))
        ],
      ),
    );
  }
}
