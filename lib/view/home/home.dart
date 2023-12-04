import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view/contact/contact.dart';
import 'package:flutter_portfolio/view/intro/introduction.dart';
import 'package:flutter_portfolio/view/main/main_view.dart';
import 'package:flutter_portfolio/view/projects/project_view.dart';
import 'package:flutter_portfolio/view/service/service.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          alignment: Alignment.center,
          duration: const Duration(milliseconds: 300),
          child: Stack(
            alignment: Alignment.center,
            children: [
              MainView(pages: [
                const Introduction(),
                const Service(),
                ProjectsView(),
                const Contact(),
              ]),

              // SingleChildScrollView(
              //   child: Column(
              //     children: [
              //       const Introduction(),
              //       ProjectsView(),
              //       Certifications(),
              //     ],
              //   ),
              // ),

              AnimatedPositioned(
                duration: const Duration(milliseconds: 100),
                left: pointer.dx,
                top: pointer.dy,
                child: Container(
                  height: 15,
                  width: 15,
                  alignment: Alignment.center,
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
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),

                    boxShadow: [
                      BoxShadow(
                        color: rose,
                        offset: Offset(0, 0),
                        blurRadius: 40,
                      ),
                      BoxShadow(
                        color: Colors.purple,
                        offset: Offset(0, 0),
                        blurRadius: 40,
                      ),
                    ],
                    // border: Border.all(
                    //   width: 1,
                    //   color: Colors.pink,
                    // ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
