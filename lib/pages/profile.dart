import "package:flutter/material.dart";
import "package:challenge2mc/const/colors.dart";
import "package:flutter_svg/flutter_svg.dart";

import "../widgets/events_section.dart";


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ProfileHeader(),
            EventsSection()
          ],
        )
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: gradient,
            borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
            
          ),
          height: 360,
          width: MediaQuery.of(context).size.width,
          child: Container(
            height: 100,
            width: 100,
            alignment: Alignment.bottomCenter,
            decoration: const BoxDecoration(
               
              shape: BoxShape.circle,
            ),
            child: Image.asset("images/bird.png", height: 100, width: 100, fit: BoxFit.scaleDown,
            
            )
          ),
        )
      ],
    );
  }
}