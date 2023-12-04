import 'package:flutter/material.dart';
import 'package:flutter_portfolio/view/intro/components/social_icon.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../res/constants.dart';

class ContactIcon extends StatelessWidget {
  const ContactIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SocialMediaIcon(
            icon: 'assets/icons/linkedin.png',
            onTap: () => launchUrl(
              Uri.parse('https://www.linkedin.com/in/mariselvam-b-a1a63625a/'),
            ),
          ),
          SocialMediaIcon(
            icon: 'assets/icons/github.png',
            onTap: () => launchUrl(
              Uri.parse('https://github.com/candymaari'),
            ),
          ),
          SocialMediaIcon(
            icon: 'assets/icons/mail.png',
            onTap: () => launchUrl(
              Uri.parse(
                  'mailto:<bmselvam001@gmail.com>?subject=<subject>&body=<body>'),
            ),
          ),
          SocialMediaIcon(
            icon: 'assets/icons/whatsApp.png',
            onTap: () => launchUrl(
              Uri.parse('https://wa.me/919629084116'),
            ),
          ),
          SocialMediaIcon(
            icon: 'assets/icons/instagram.png',
            onTap: () => launchUrl(
              Uri.parse('https://www.instagram.com/candy_maari_413/'),
            ),
          ),
        ],
      ),
    );
  }
}
