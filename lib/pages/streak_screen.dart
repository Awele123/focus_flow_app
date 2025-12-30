import 'package:flutter/material.dart';
import 'package:focus_flow_app/global-widgets/app_text.dart';
import 'package:focus_flow_app/widgets/streak_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StreakScreen extends StatelessWidget {
  const StreakScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0x000f0b1e),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.width * 0.02),
              CustomText(
                text: 'Your Streak',
                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              // SizedBox(height: size.width * 0.02),
              CustomText(
                text: 'Keep the momentum going!',

                fontSize: 14,
                color: Colors.white60,
              ),
              SizedBox(height: size.width * 0.1),
              StreakCard(
                hasFireIcon: true,
                borderRadius: 24,
                padding: const EdgeInsets.symmetric(
                  vertical: 36,
                  horizontal: 20,
                ),
                child: Column(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.fireFlameCurved,
                      color: Colors.purple,
                      size: 50,
                      fontWeight: FontWeight.w900,
                    ),
                    SizedBox(height: size.width * 0.02),
                    CustomText(
                      text: '0',
                      fontSize: 64,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple,
                    ),
                    SizedBox(height: size.width * 0.01),
                    CustomText(
                      text: 'Day Streak',
                      fontSize: 22,
                      fontWeight: FontWeight.w900,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    SizedBox(height: size.width * 0.02),
                    CustomText(
                      text: 'Complete a focus session to start your streak!',
                      textAlign: TextAlign.center,
                      fontSize: 14,
                      color: const Color.fromARGB(255, 187, 125, 198),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.width * 0.057),
              StreakCard(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: size.width * 0.12,
                          height: size.width * 0.12,

                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.purple),
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                          ),
                          child: const Icon(
                            Icons.emoji_events_outlined,
                            color: Colors.purple,
                            size: 30,
                          ),
                        ),
                        SizedBox(width: size.width * 0.04),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: 'Longest Streak',
                              color: const Color.fromARGB(255, 187, 125, 198),
                              fontSize: 14,
                            ),
                            SizedBox(height: 2),
                            CustomText(
                              text: '0 days',
                              fontSize: 25,
                              fontWeight: FontWeight.w900,
                              color: Colors.white,
                            ),
                            SizedBox(height: size.width * 0.026),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomText(
                          text: 'Your longest streak will appear here',
                          fontSize: 15,
                          color: const Color.fromARGB(255, 187, 125, 198),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.width * 0.05),
              StreakCard(
                hasLeftAccent: true,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Icon(
                          Icons.lightbulb_outline_rounded,
                          color: Color.fromARGB(255, 239, 236, 245),
                        ),
                       SizedBox(width: size.width * 0.02),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: 'Pro Tip',
                                color: Colors.purple,
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                              ),
                              SizedBox(height: 6),
                            ],
                          ),
                        ),
                      ],
                    ),
                    CustomText(
                      text:
                          'Complete at least one 25-minute focus session each day to maintain your streak!',

                      fontSize: 13,
                      color: const Color.fromARGB(255, 187, 125, 198),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
