import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {
  // const SearchInpu({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(25)),
            hintText: 'Search Here...',
            fillColor: Colors.white,
            filled: true,
            prefixIcon: Container(
              padding: const EdgeInsets.all(15),
              child: Icon(Icons.search),
            ),
            contentPadding: const EdgeInsets.all(2),
            focusColor: Colors.red,
          ),
        ));
  }
}
