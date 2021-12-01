import 'package:flutter/material.dart';
import 'package:house_rent_app/model/icons.dart';

class HouseInfo extends StatelessWidget {
  // const HouseInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var iconsList = CategoryIcons.generateIcons();
    Widget _buildIcon(int index) {
      return Container(
        alignment: Alignment.topLeft,
        color: Colors.transparent,
        width: MediaQuery.of(context).size.width * 0.35,
        child: Chip(
          backgroundColor: Colors.transparent,
          avatar: Padding(
            padding: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              child: Icon(
                iconsList[index].icon,
                size: 30,
                color: Colors.grey,
              ),
            ),
          ),
          label: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                iconsList[index].name,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              Text(
                iconsList[index].name1,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 12, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Wrap(
        spacing: 40, // gap between adjacent chips
        runSpacing: 10, // gap between lines
        children: iconsList
            .asMap()
            .entries
            .map((MapEntry map) => _buildIcon(map.key))
            .toList(),
      ),
    );
  }
}
