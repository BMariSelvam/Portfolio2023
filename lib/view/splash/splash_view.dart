import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/home/home.dart';
import 'package:flutter_portfolio/view/intro/components/animated_texts_componenets.dart';
import 'package:flutter_portfolio/view/splash/componenets/animated_loading_text.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomePage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
        cursor: SystemMouseCursors.none,
        onHover: (eve) {
          setState(() {
            pointer = eve.position;
          });
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          child: Stack(
            children: [
              const Scaffold(
                backgroundColor: bgColor,
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AnimatedImageContainer(
                        width: 100,
                        height: 100,
                      ),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      AnimatedLoadingText(),
                    ],
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 100),
                left: pointer.dx,
                top: pointer.dy,
                child: Container(
                  height: 15,
                  width: 15,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [rose, blue]),
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                ),
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 300),
                left: pointer.dx,
                top: pointer.dy,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 0),
                        blurRadius: 60,
                        color: rose,
                      ),
                      BoxShadow(
                        offset: Offset(
                          -15,
                          -20,
                        ),
                        blurRadius: 60,
                        color: Colors.purple,
                      ),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                    // border: Border.all(
                    //   width: 1,
                    //   color: AppColors.rd3,
                    // ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
