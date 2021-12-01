import 'package:flutter/material.dart';
import 'package:house_rent_app/model/house.dart';
import 'package:house_rent_app/screen/details/widget/about.dart';
import 'package:house_rent_app/screen/details/widget/context_intro.dart';
import 'package:house_rent_app/screen/details/widget/detail_app_bar.dart';
import 'package:house_rent_app/screen/details/widget/house_info.dart';

class DetailsPage extends StatelessWidget {
  final House house;
  const DetailsPage({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailAppBar(house: house),
                      SizedBox(
                        height: 20,
                      ),
                      ContextIntro(house: house),
                      SizedBox(
                        height: 20,
                      ),
                      HouseInfo(),
                      About(),
                      SizedBox(
                        height: 70,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: Container(
          margin: const EdgeInsets.all(10),
          width: MediaQuery.of(context).size.width,
          // decoration:
          //     BoxDecoration(color: Theme.of(context).colorScheme.secondary),
          child: FloatingActionButton.extended(
            isExtended: true,
            onPressed: () {},
            elevation: 0,
            backgroundColor: Theme.of(context).colorScheme.secondary,
            label: Text(
              "Book now",
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }
}
