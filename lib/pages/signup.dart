import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:focus_flow_app/global-widgets/app_button.dart';
import 'package:focus_flow_app/global-widgets/app_text.dart';
import 'package:focus_flow_app/global-widgets/app_text_field.dart';

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
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: size.width * 0.07,
                            vertical: size.width * 0.08,
                          ),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.blue, Colors.purple],
                            ),
                            border: Border.all(color: Colors.purple),
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.transparent,
                          ),
                          child: Column(
                            spacing: size.width * 0.06,
                            children: [
                              AppTextField(),
                              AppTextField(
                                labelText: "At least 6 characters",
                                topText: "Password",
                                icon: Icon(
                                  Icons.lock_outline,
                                  size: 19,
                                  color: Colors.white,
                                ),
                              ),
                              AppTextField(
                                labelText: "Re-enter your password",
                                topText: "Confirm Password",
                                icon: Icon(
                                  Icons.lock_outline,
                                  size: 19,
                                  color: Colors.white,
                                ),
                              ),
                              AppButton(onTap: () {}, buttonText: "SignUp",),
                              RichText(
                                text: TextSpan(
                                  text: "Already have an account? ",
                                  style: const TextStyle(
                                    color: Colors.white, // or any color
                                    fontSize: 16,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Sign in",
                                      style: const TextStyle(
                                        color: Colors.blue,
                                        fontSize: 16,
                                        decoration: TextDecoration.underline,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.pushNamed(
                                            context,
                                            '/signIn',
                                          );
                                        },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
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
