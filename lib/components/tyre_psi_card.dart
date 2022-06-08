import 'package:flutter/material.dart';

import '../constanins.dart';
import '../models/TyrePsi.dart';

class TyrePsiCard extends StatelessWidget {
  const TyrePsiCard({
    Key? key,
    required this.isBottomTowTyre,
    required this.tyrePsi,
  }) : super(key: key);
  final bool isBottomTowTyre;
  final TyrePsi tyrePsi;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color:
        tyrePsi.isLowPressure ? redColor.withOpacity(0.1) : Colors.white10,
        border: Border.all(
          color: tyrePsi.isLowPressure ? redColor : primaryColor,
          width: 2,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(6),
        ),
      ),
      child: isBottomTowTyre
          ? Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          lowPressureText(context),
          const Spacer(),
          psiText(context, psi: tyrePsi.psi.toString()),
          const SizedBox(
            height: defaultPadding,
          ),
          Text("${tyrePsi.temp}\u2103",
              style: const TextStyle(fontSize: 16)),
        ],
      )
          : Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          psiText(context, psi: tyrePsi.psi.toString()),
          const SizedBox(
            height: defaultPadding,
          ),
          Text("${tyrePsi.temp}\u2103",
              style: const TextStyle(fontSize: 16)),
          const Spacer(),
          lowPressureText(context),
        ],
      ),
    );
  }

  Column lowPressureText(BuildContext context) {
    return Column(
      children: [
        Text(
          "low".toUpperCase(),
          style: Theme.of(context).textTheme.headline3!.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        Text(
          "pressure".toUpperCase(),
          style: const TextStyle(fontSize: 20),
        ),
      ],
    );
  }

  Text psiText(BuildContext context, {required String psi}) {
    return Text.rich(
      TextSpan(
          text: psi,
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(fontWeight: FontWeight.w600, color: Colors.white),
          children: const [
            TextSpan(text: "psi", style: TextStyle(fontSize: 24)),
          ]),
    );
  }
}
