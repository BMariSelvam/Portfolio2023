import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/controller.dart';

import 'navigation_button.dart';

class NavigationButtonList extends StatefulWidget {
  const NavigationButtonList({super.key});

  @override
  State<NavigationButtonList> createState() => _NavigationButtonListState();
}

class _NavigationButtonListState extends State<NavigationButtonList> {
  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(milliseconds: 200),
      builder: (context, value, child) {
        return Transform.scale(
          scale: value,
          child: Row(
            children: [
              NavigationTextButton(
                onHover: (v) {
                  setState(() {
                    mainItemHover = v ? 1 : 0;
                    Colors.white.withRed(v ? 30 : 0);
                  });
                },
                color: mainItemHover == 1 ? Colors.white : Colors.white,
                gradient: mainItemHover == 1
                    ? const LinearGradient(colors: [
                        rose,
                        blue,
                      ])
                    : const LinearGradient(colors: [
                        bgColor,
                        bgColor,
                      ]),
                onTap: () {
                  controller.animateToPage(0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                },
                text: 'Home',
              ),
              NavigationTextButton(
                  onHover: (v) {
                    setState(() {
                      mainItemHover = v ? 2 : 0;
                      Colors.white.withRed(v ? 30 : 0);
                    });
                  },
                  color: mainItemHover == 2 ? Colors.white : Colors.white,
                  gradient: mainItemHover == 2
                      ? const LinearGradient(colors: [
                          rose,
                          blue,
                        ])
                      : const LinearGradient(colors: [
                          bgColor,
                          bgColor,
                        ]),
                  onTap: () {
                    controller.animateToPage(0,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  text: 'About us'),
              NavigationTextButton(
                  onHover: (v) {
                    setState(() {
                      mainItemHover = v ? 4 : 0;
                      Colors.white.withRed(v ? 30 : 0);
                    });
                  },
                  color: mainItemHover == 4 ? Colors.white : Colors.white,
                  gradient: mainItemHover == 4
                      ? const LinearGradient(colors: [
                          rose,
                          blue,
                        ])
                      : const LinearGradient(colors: [
                          bgColor,
                          bgColor,
                        ]),
                  onTap: () {
                    controller.animateToPage(1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  text: 'Service'),
              NavigationTextButton(
                  onHover: (v) {
                    setState(() {
                      mainItemHover = v ? 3 : 0;
                      Colors.white.withRed(v ? 30 : 0);
                    });
                  },
                  color: mainItemHover == 3 ? Colors.white : Colors.white,
                  gradient: mainItemHover == 3
                      ? const LinearGradient(colors: [
                          rose,
                          blue,
                        ])
                      : const LinearGradient(colors: [
                          bgColor,
                          bgColor,
                        ]),
                  onTap: () {
                    controller.animateToPage(2,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  text: 'Projects'),
              NavigationTextButton(
                  onHover: (v) {
                    setState(() {
                      mainItemHover = v ? 5 : 0;
                      Colors.white.withRed(v ? 30 : 0);
                    });
                  },
                  color: mainItemHover == 5 ? Colors.white : Colors.white,
                  gradient: mainItemHover == 5
                      ? const LinearGradient(colors: [
                          rose,
                          blue,
                        ])
                      : const LinearGradient(colors: [
                          bgColor,
                          bgColor,
                        ]),
                  onTap: () {
                    controller.animateToPage(3,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeIn);
                  },
                  text: 'Contact'),
            ],
          ),
        );
      },
    );
  }
}
