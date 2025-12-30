import 'package:flutter/material.dart';
import 'package:focus_flow_app/global-widgets/app_container.dart';
import 'package:focus_flow_app/global-widgets/app_text.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: size.width * 0.05,
                top: size.width * 0.2,
              ),
              child: CustomText(
                text: "Create Your Account",
                fontWeight: FontWeight.w500,
                fontSize: size.width * 0.10,
                color: Colors.white,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: size.width * 0.08),
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(size.width * 0.05),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: AppContainer(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
