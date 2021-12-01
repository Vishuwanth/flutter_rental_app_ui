import 'package:flutter/material.dart';

class BestOfferCard extends StatefulWidget {
  final e;
  BestOfferCard({Key? key, required this.e}) : super(key: key);

  @override
  _BestOfferCardState createState() => _BestOfferCardState();
}

class _BestOfferCardState extends State<BestOfferCard> {
  bool isWishListed = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 10,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.e.imageUrl),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(8)),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.e.name,
                    style: Theme.of(context)
                        .textTheme
                        .headline1!
                        .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    widget.e.address,
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          fontSize: 12,
                        ),
                  ),
                ],
              )
            ],
          ),
          Positioned(
            top: 2,
            right: 5,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isWishListed = !isWishListed;
                });
              },
              child: Icon(
                isWishListed ? Icons.favorite : Icons.favorite_outline,
                color: isWishListed ? Colors.redAccent : Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
