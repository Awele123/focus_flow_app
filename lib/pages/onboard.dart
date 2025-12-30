import 'package:flutter/material.dart';
import 'package:focus_flow_app/widgets/auth_button.dart';
import 'package:focus_flow_app/global-widgets/app_text.dart';


class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/blackBg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: Padding(
          padding:  EdgeInsets.only(bottom: size.width*0.13, left: size.width*0.05, right: size.width*0.05),
          child: AuthButton(
            onTap:(){
              Navigator.pushNamed(context, '/signUp');
            }
             
          ),
        ),
        body: Padding(
          padding:  EdgeInsets.only(left:  size.width*0.05, top: size.width*0.1),
          child: Column(
            children: [
              CustomText(
                text: "Welcome to FocusFlow",
                fontWeight: FontWeight.w500,
                fontSize: size.width * 0.1,
                color: Colors.white,
              ),
              Image(
                
                image: AssetImage("assets/robo.png",), ),
              CustomText(
             
              ),
            ],
          ),
        ),
      ),
    );
  }
}
