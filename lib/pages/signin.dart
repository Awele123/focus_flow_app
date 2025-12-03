import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:focus_flow_app/global-widgets/app_button.dart';
import 'package:focus_flow_app/global-widgets/app_text.dart';
import 'package:focus_flow_app/global-widgets/app_text_field.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                text: "Welcome Back",
                fontWeight: FontWeight.w500,
                fontSize: size.width * 0.10,
                color: Colors.white,
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: size.width * 0.2),
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
                                topText: "Password",
                                labelText: "Password",
                                icon: Icon(
                                  Icons.lock_outlined,
                                  color: Colors.white,
                                  size: 19,
                                ),
                              ),
                              AppButton(onTap: () {}),
                              RichText(
                                text: TextSpan(
                                  text: "Don't have an account? ",
                                  style: const TextStyle(
                                    color: Colors.white, // or any color
                                    fontSize: 16,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: "Sign up",
                                      style: const TextStyle(
                                        color: Colors.blue,
                                        fontSize: 16,
                                        decoration: TextDecoration.underline,
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          Navigator.pushNamed(
                                            context,
                                            '/signUp',
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
