import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/certifications/components/certification_grid.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';

class Service extends StatefulWidget {
  const Service({super.key});

  @override
  State<Service> createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (Responsive.isLargeMobile(context))
          const SizedBox(
            height: defaultPadding,
          ),
        const TitleText(prefix: 'Experience & ', title: 'Skills'),
        const SizedBox(
          height: defaultPadding,
        ),
        Expanded(
            child: Responsive(
                desktop: ServiceGrid(
                  crossAxisCount: 3,
                ),
                extraLargeScreen: ServiceGrid(
                  crossAxisCount: 1,
                  ratio: 1,
                ),
                largeMobile: ServiceGrid(crossAxisCount: 1, ratio: 1.35),
                mobile: ServiceGrid(crossAxisCount: 1, ratio: 1.5),
                tablet: ServiceGrid(
                  ratio: 1.3,
                  crossAxisCount: 1,
                )))
      ],
    );
  }
}
