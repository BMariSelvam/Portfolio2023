import 'package:flutter/material.dart';

import '../../../res/constants.dart';

class NavigationTextButton extends StatelessWidget {
  var onHover;
  final VoidCallback onTap;
  final String text;
  Color? color;
  Gradient? gradient;

  NavigationTextButton(
      {super.key,
      required this.onHover,
      required this.color,
      required this.gradient,
      required this.onTap,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: onHover,
      borderRadius: BorderRadius.circular(defaultPadding + 10),
      child: Container(
          padding: const EdgeInsets.symmetric(
              vertical: defaultPadding / 2, horizontal: defaultPadding / 2),
          margin: const EdgeInsets.symmetric(
              vertical: defaultPadding / 2, horizontal: defaultPadding / 2),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(defaultPadding),
              gradient: gradient,
              boxShadow: const [
                BoxShadow(
                    color: blue,
                    offset: Offset(0, -1),
                    blurRadius: defaultPadding / 4),
                BoxShadow(
                    color: rose,
                    offset: Offset(0, 1),
                    blurRadius: defaultPadding / 4),
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                text,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: color,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold),
              ),
            ],
          )),
    );
  }
}
