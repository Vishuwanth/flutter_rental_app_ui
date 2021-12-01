import 'package:flutter/material.dart';
import 'package:house_rent_app/model/house.dart';
import 'package:house_rent_app/screen/home/widget/best_offer_card.dart';

class BestOffer extends StatelessWidget {
  // const BestOffer({ Key? key }) : super(key: key);

  final offerList = House.generateBestOffer();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Best Offer",
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Text(
                "See all",
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          ...offerList.map((e) => BestOfferCard(
                e: e,
              ))
        ],
      ),
    );
  }
}
