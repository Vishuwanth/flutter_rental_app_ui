import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class CircularIconButton extends StatefulWidget {
  final List<IconData> iconUrl;
  final Color color;

  const CircularIconButton({
    Key? key,
    required this.iconUrl,
    required this.color,
  }) : super(key: key);
  @override
  State<CircularIconButton> createState() => _CircularIconButtonState();
}

class _CircularIconButtonState extends State<CircularIconButton> {
  bool isBookmarked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isBookmarked = !isBookmarked;
        });
      },
      child: Container(
        width: 30,
        height: 30,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: !isBookmarked ? widget.color : Colors.green,
          shape: BoxShape.circle,
        ),
        child: Icon(
          !isBookmarked ? widget.iconUrl[0] : widget.iconUrl[1],
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
