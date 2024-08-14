import 'package:flutter/material.dart';
import 'package:mytest/start.dart';

// ignore: must_be_immutable
class SocialMediaIcons extends StatelessWidget {
  String socialmediaicon;
  String socialmedialinks;
  SocialMediaIcons(
      {super.key,
      required this.socialmediaicon,
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
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return StartBranch(
                    socialmedialinks: socialmedialinks,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
