import 'package:challenge2mc/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EventsSection extends StatelessWidget {
  const EventsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Events completed",
            style:  TextStyle(
              color: violet,
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  alignment: Alignment.center,
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    color: violet,
                    borderRadius: BorderRadius.circular(5)
                  
                  ),
                  child: SvgPicture.asset("images/check.svg", colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),  width: 15, height: 15,)
                  ),
              ),
                const Padding(
                  padding: EdgeInsets.only(left: 9),
                  child: Text(
                    "Flutter forward",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                )
            ],
          ),
        ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 24,
                                  width: 24,
                                  decoration: BoxDecoration(
                                                  color: violet,
                                                  borderRadius: BorderRadius.circular(5)
                                  
                                  ),
                                  child: SvgPicture.asset("images/check.svg", colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),  width: 15, height: 15,)
                                  ),
                              ),
                                const Padding(
                  padding: EdgeInsets.only(left: 9),
                  child: Text(
                    "Flutter bootcamp",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500
                    ),
                  ),
                                )
                            ],
                          ),
                )
      ],
      
    );
  }
}
