import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/intro/components/subtitle_text.dart';

class MyPortfolioText extends StatelessWidget {
  const MyPortfolioText({super.key, required this.start, required this.end});
  final double start;
  final double end;
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return TweenAnimationBuilder(
        tween: Tween(begin: start, end: end),
        duration: const Duration(milliseconds: 200),
        builder: (context, value, child) {
          return Row(
            children: [
              Text('Hey I am ',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      height: 0,
                      fontSize: value)),
              (kIsWeb && Responsive.isLargeMobile(context)
                  ? const Responsive(
                      desktop: AnimatedSubtitleText(
                          start: 30,
                          end: 40,
                          text: 'Mariselvam B 😎!! ',
                          gradient: true),
                      largeMobile: AnimatedSubtitleText(
                          start: 30,
                          end: 25,
                          text: 'Mariselvam B 😎',
                          gradient: true),
                      mobile: AnimatedSubtitleText(
                          start: 25,
                          end: 20,
                          text: 'Mariselvam B 😎',
                          gradient: true),
                      tablet: AnimatedSubtitleText(
                          start: 40,
                          end: 30,
                          text: 'Mariselvam B 😎',
                          gradient: true),
                      extraLargeScreen: AnimatedSubtitleText(
                          start: 30,
                          end: 40,
                          text: 'Mariselvam B 😎',
                          gradient: true),
                    )
                  : ShaderMask(
                      shaderCallback: (bounds) {
                        return const LinearGradient(colors: [
                          rose,
                          blue,
                        ]).createShader(bounds);
                      },
                      child: const Responsive(
                        desktop: AnimatedSubtitleText(
                            start: 30,
                            end: 40,
                            text: 'Mariselvam B 😎',
                            gradient: false),
                        largeMobile: AnimatedSubtitleText(
                            start: 30,
                            end: 25,
                            text: 'Mariselvam B 😎',
                            gradient: false),
                        mobile: AnimatedSubtitleText(
                            start: 25,
                            end: 20,
                            text: 'Mariselvam B 😎',
                            gradient: false),
                        tablet: AnimatedSubtitleText(
                            start: 40,
                            end: 30,
                            text: 'Mariselvam B 😎',
                            gradient: false),
                        extraLargeScreen: AnimatedSubtitleText(
                            start: 30,
                            end: 40,
                            text: 'Mariselvam B 😎',
                            gradient: false),
                      ),
                    ))
            ],
          );
        },
      );
    });
  }
}
