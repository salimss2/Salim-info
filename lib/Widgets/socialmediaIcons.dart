import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class SocialMediaIcons extends StatelessWidget {
  String socialmediaicon;
  String socialmedialinks;
  SocialMediaIcons({super.key, required this.socialmediaicon,
  required this.socialmedialinks});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: InkWell(
        child: InkWell(
          child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage('asset/$socialmediaicon'),
          ),
          onTap: () {
            launchUrl(Uri.parse(socialmedialinks),mode: LaunchMode.externalApplication);
          },
        ),
      ),
    );
  }
}
