import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore: must_be_immutable
class StartBranch extends StatelessWidget {
  String socialmedialinks;

  StartBranch({super.key, required this.socialmedialinks});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Start SocialMedia'),
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(Colors.deepOrange),
          ),
          onPressed: () {
            launchUrl(Uri.parse(socialmedialinks),
                mode: LaunchMode.externalApplication);
          },
          child: Text(
            'Start SocialMedia',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
