import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constanins.dart';


class TempBtn extends StatelessWidget {
  const TempBtn({
    Key? key,
    required this.svgSrc,
    required this.title,
    required this.press,
    this.isActive = false,
    this.activeColor = primaryColor,
  }) : super(key: key);
  final String svgSrc, title;
  final bool isActive;
  final VoidCallback press;
  final Color activeColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          AnimatedContainer(
            height: isActive ? 75 : 50,
            width: isActive ? 75 : 50,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOutBack,
            child: SvgPicture.asset(
              svgSrc,
              color: isActive ? activeColor : Colors.white,
            ),
          ),
          const SizedBox(height: defaultPadding / 2),
          AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 200),
            style: TextStyle(
                fontSize: 16,
                color: isActive ? activeColor : Colors.white38,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal),
            child: Text(
              title,
            ),
          ),
        ],
      ),
    );
  }
}