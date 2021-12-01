import 'package:flutter/material.dart';
import 'package:house_rent_app/model/house.dart';
import 'package:house_rent_app/screen/details/details.dart';
import 'package:house_rent_app/widget/circular_icon_button.dart';

class RecommendedHouse extends StatefulWidget {
  // const RecommendedHouse({ Key? key }) : super(key: key);
  @override
  State<RecommendedHouse> createState() => _RecommendedHouseState();
}

class _RecommendedHouseState extends State<RecommendedHouse> {
  final recommendedList = House.generateRecommended();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(10),
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return DetailsPage(house: recommendedList[index]);
                  }));
                },
                child: Container(
                  height: 300,
                  width: 230,
                  // padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                recommendedList[index].imageUrl,
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Positioned(
                        right: 15,
                        top: 15,
                        child: CircularIconButton(
                          iconUrl: [
                            Icons.bookmark_add,
                            Icons.bookmark_added_rounded
                          ],
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          color: Colors.white54,
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    recommendedList[index].name,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline1!
                                        .copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    recommendedList[index].address,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .copyWith(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  )
                                ],
                              ),
                              CircularIconButton(
                                iconUrl: [
                                  Icons.bookmark_add,
                                  Icons.bookmark_added_rounded
                                ],
                                color: Theme.of(context).colorScheme.secondary,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 50,
              ),
          itemCount: recommendedList.length),
    );
  }
}
