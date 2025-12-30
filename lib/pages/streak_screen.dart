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
       backgroundColor: Color(0x0f0B1E),
      body: SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
      SizedBox(height: size.width * 0.02),
      
               CustomText(
                text:'Your Streak',
              
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                
              ),
           // SizedBox(height: size.width * 0.02),
               CustomText(
              text:   'Keep the momentum going!',
               
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
                  children:  [
                    FaIcon(
                      FontAwesomeIcons.fireFlameCurved,
                      color: Colors.purple,
                      size: 50,
                      
                      fontWeight: FontWeight.w900,
                    ),
                      SizedBox(height: size.width * 0.02),
                    CustomText(
                    text:   '0',
                  
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                       color: Colors.purple,
                      
                    ),
                      SizedBox(height: size.width * 0.01),
                    CustomText(
                     text:  'Day Streak',
                    
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 255, 255, 255),
                      
                    ),
                   SizedBox(height: size.width * 0.02),
                    CustomText(
                    text:   'Complete a focus session to start your streak!',
                      textAlign: TextAlign.center,
                      
                        fontSize: 14,
                        color: Colors.white60,
                      
                    ),
                  ],
                ),
              ),
      
              SizedBox(height: size.width * 0.057),
      
            
              StreakCard(
                child: Row(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: const Color(0xFF8F5CFF).withOpacity(0.15),
                      ),
                      child: const Icon(
                        Icons.emoji_events_rounded,
                        color: Color(0xFF8F5CFF),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Longest Streak',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          '0 days',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Your longest streak will appear here',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white38,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
      
              const SizedBox(height: 24),
      
              /// Pro tip
              StreakCard(
                hasLeftAccent: true,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.lightbulb_outline_rounded,
                      color: Color(0xFF8F5CFF),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pro Tip',
                            style: TextStyle(
                              color: Color(0xFF8F5CFF),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Complete at least one 25-minute focus session each day to maintain your streak!',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
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
