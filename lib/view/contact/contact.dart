import 'package:flutter/material.dart';
import 'package:flutter_portfolio/res/constants.dart';
import 'package:flutter_portfolio/view%20model/responsive.dart';
import 'package:flutter_portfolio/view/main/components/drawer/contact_icons.dart';
import 'package:flutter_portfolio/view/projects/components/title_text.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (Responsive.isLargeMobile(context))
            const SizedBox(
              height: defaultPadding,
            ),
          const TitleText(prefix: 'Contact ', title: 'Details'),
          const SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Container(
                height: 300,
                margin: const EdgeInsets.symmetric(
                    vertical: defaultPadding, horizontal: defaultPadding),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(colors: [rose, blue]),
                    boxShadow: const [
                      BoxShadow(
                        color: rose,
                        offset: Offset(-2, 0),
                        blurRadius: 20,
                      ),
                      BoxShadow(
                        color: blue,
                        offset: Offset(2, 0),
                        blurRadius: 20,
                      ),
                    ]),
                child: Container(
                  padding: const EdgeInsets.all(defaultPadding),
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30), color: bgColor),
                  // duration: const Duration(milliseconds: 500),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ShaderMask(
                          shaderCallback: (bounds) {
                            return const LinearGradient(
                                end: Alignment.centerRight,
                                begin: Alignment.centerLeft,
                                colors: [
                                  rose,
                                  blue,
                                ]).createShader(bounds);
                          },
                          child: Text(
                            'Get in touch',
                            style: Theme.of(context)
                                .textTheme
                                .subtitle2!
                                .copyWith(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const SizedBox(
                          height: defaultPadding,
                        ),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Let\'s build something together :)',
                              style: TextStyle(color: Colors.amber),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: defaultPadding,
                        ),
                        InkWell(
                          onTap: () {
                            launchUrl(Uri.parse('https://wa.me/919629084116'));
                          },
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                gradient:
                                    const LinearGradient(colors: [rose, blue]),
                                boxShadow: const [
                                  BoxShadow(
                                      color: blue,
                                      offset: Offset(0, -1),
                                      blurRadius: 5),
                                  BoxShadow(
                                      color: rose,
                                      offset: Offset(0, 1),
                                      blurRadius: 5),
                                ]),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Lets talk to me  - - >',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: defaultPadding * 1.5,
                        ),
                        ShaderMask(
                            shaderCallback: (bounds) {
                              return const LinearGradient(
                                  end: Alignment.centerRight,
                                  begin: Alignment.centerLeft,
                                  colors: [
                                    rose,
                                    blue,
                                  ]).createShader(bounds);
                            },
                            child: const Divider()),
                        const SizedBox(
                          height: defaultPadding / 4,
                        ),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 4,
                            child: const ContactIcon()),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(
                      end: Alignment.centerRight,
                      begin: Alignment.centerLeft,
                      colors: [
                        rose,
                        blue,
                      ]).createShader(bounds);
                },
                child: const Text(
                  'Developed by MARISELVAM B 😎 © 2023 ',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: defaultPadding,
          ),
        ],
      ),
    );
  }
}
