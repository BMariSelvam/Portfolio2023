import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

import '../../../res/constants.dart';
import '../../../view model/responsive.dart';
import 'animated_texts_componenets.dart';
import 'combine_subtitle.dart';
import 'description_text.dart';
import 'download_button.dart';
import 'headline_text.dart';

class IntroBody extends StatelessWidget {
  const IntroBody({super.key});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Row(
      children: [
        if (Responsive.isDesktop(context))
          const AnimatedImageContainer(
            height: 300,
            width: 300,
          ),
        const Spacer(),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (!Responsive.isDesktop(context))
                SizedBox(
                  height: size.height * 0.06,
                ),
              if (!Responsive.isDesktop(context))
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50, right: 100),
                      child: AnimatedImageContainer(
                        height: Responsive.isLargeMobile(context)
                            ? 300
                            : Responsive.isTablet(context)
                                ? 300
                                : Responsive.isMobile(context)
                                    ? 100
                                    : Responsive.isDesktop(context)
                                        ? 300
                                        : Responsive.isExtraLargeScreen(context)
                                            ? 300
                                            : 300,
                        width: Responsive.isLargeMobile(context)
                            ? 300
                            : Responsive.isTablet(context)
                                ? 300
                                : Responsive.isMobile(context)
                                    ? 100
                                    : Responsive.isDesktop(context)
                                        ? 300
                                        : Responsive.isExtraLargeScreen(context)
                                            ? 300
                                            : 300,
                      ),
                    ),
                  ],
                ),
              if (!Responsive.isDesktop(context))
                SizedBox(
                  height: size.height * 0.1,
                ),
              const Responsive(
                  desktop: MyPortfolioText(start: 40, end: 50),
                  largeMobile: MyPortfolioText(start: 40, end: 35),
                  mobile: MyPortfolioText(start: 35, end: 30),
                  tablet: MyPortfolioText(start: 50, end: 40)),
              if (kIsWeb && Responsive.isLargeMobile(context))
                Container(
                  height: defaultPadding,
                  color: Colors.transparent,
                ),
              const CombineSubtitleText(),
              const SizedBox(height: defaultPadding / 2),
              const Responsive(
                desktop: AnimatedDescriptionText(start: 14, end: 15),
                largeMobile: AnimatedDescriptionText(start: 14, end: 12),
                mobile: AnimatedDescriptionText(start: 14, end: 12),
                tablet: AnimatedDescriptionText(start: 17, end: 14),
              ),
              const SizedBox(
                height: defaultPadding * 2,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: DownloadButton(),
              ),
              const SizedBox(
                height: defaultPadding * 2,
              ),
            ],
          ),
        ),
        const Spacer()
      ],
    );
  }
}
