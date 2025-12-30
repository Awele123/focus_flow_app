import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:focus_flow_app/global-widgets/app_button.dart';
import 'package:focus_flow_app/global-widgets/app_text_field.dart';

class AppContainer extends StatelessWidget {
  const AppContainer({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.07,
        vertical: size.width * 0.08,
      ),
      decoration: BoxDecoration(
       
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
          AppButton(onTap: () {
            Navigator.pushNamed(context,  '/bottomNav',);
          }, buttonText: "Create Account",),
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
                         '/bottomNav',
                      );
                    },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
