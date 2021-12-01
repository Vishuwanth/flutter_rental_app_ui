import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About",
            style: Theme.of(context)
                .textTheme
                .headline1!
                .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eget aliquet nibh praesent tristique magna sit. Quis eleifend quam adipiscing vitae. Volutpat sed cras ornare arcu dui. Fames ac turpis egestas sed tempus urna. Rhoncus urna neque viverra justo nec ultrices. Cras tincidunt lobortis feugiat vivamus at augue eget arcu dictum. Nullam ac tortor vitae purus faucibus ornare suspendisse. Lobortis elementum nibh tellus molestie nunc non blandit massa enim. Nullam eget felis eget nunc lobortis mattis aliquam. Quis commodo odio aenean sed. Eu ultrices vitae auctor eu augue ut lectus arcu bibendum. At imperdiet dui accumsan sit amet. Ut consequat semper viverra nam libero justo laoreet sit amet. Purus in massa tempor nec feugiat nisl.",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 12,
                ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
