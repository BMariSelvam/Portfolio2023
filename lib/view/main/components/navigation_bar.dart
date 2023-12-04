import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/intro/components/side_menu_button.dart';
import 'package:flutter_portfolio/view/main/components/connect_button.dart';

import '../../../res/constants.dart';
import 'navigation_button_list.dart';

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            !Responsive.isLargeMobile(context)
                ? ShaderMask(
                    shaderCallback: (bounds) {
                      return const LinearGradient(
                          end: Alignment.centerRight,
                          begin: Alignment.centerLeft,
                          colors: [
                            rose,
                            blue,
                          ]).createShader(bounds);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(defaultPadding),
                      child: Image.asset(
                        height: MediaQuery.sizeOf(context).height * 0.2,
                        width: MediaQuery.sizeOf(context).width * 0.2,
                        'assets/images/triange_icon.png',
                        scale: 3,
                        color: Colors.white,
                      ),
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(top: 20, right: 20),
                    child: MenuButton(
                      onTap: () => Scaffold.of(context).openDrawer(),
                    ),
                  ),
            !Responsive.isLargeMobile(context)
                ? const Spacer(
                    flex: 2,
                  )
                : const SizedBox(),
            if (!Responsive.isLargeMobile(context))
              const NavigationButtonList(),
            const Spacer(
              flex: 2,
            ),
            !Responsive.isLargeMobile(context)
                ? (MediaQuery.of(context).size.width > 700 &&
                        MediaQuery.of(context).size.width < 800)
                    ? const SizedBox()
                    : const ConnectButton()
                : Image.asset(
                    height: MediaQuery.sizeOf(context).height / 2,
                    width: MediaQuery.sizeOf(context).width / 2,
                    'assets/images/triange_icon.png',
                    scale: 3,
                    color: Colors.white,
                  ),
            const Spacer(
              flex: 2,
            ),
            !Responsive.isLargeMobile(context)
                ? const Padding(
                    padding: EdgeInsets.only(
                      top: defaultPadding,
                      bottom: defaultPadding,
                    ),
                  )
                : Padding(
                    padding: const EdgeInsets.only(
                        top: defaultPadding, bottom: defaultPadding),
                    child: MenuButton2(
                      onTap: () => Scaffold.of(context).openEndDrawer(),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
