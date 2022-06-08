import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constanins.dart';

class TeslaBottomNavigationBar extends StatelessWidget {
  const TeslaBottomNavigationBar(
      {Key? key, required this.selectedTap, required this.onTap})
      : super(key: key);
  final int selectedTap;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: onTap,
        currentIndex: selectedTap,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: List.generate(
          navIconSrc.length,
          (index) => BottomNavigationBarItem(
            icon: SvgPicture.asset(
              navIconSrc[index],
              color: index == selectedTap ? primaryColor : Colors.white54,
            ),
            label: "",
          ),
        ));
  }
}

List<String> navIconSrc = [
  "assets/icons/Lock.svg",
  "assets/icons/Charge.svg",
  "assets/icons/Temp.svg",
  "assets/icons/Tyre.svg"
];
