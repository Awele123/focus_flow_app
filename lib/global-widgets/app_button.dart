import 'package:flutter/material.dart';
import 'package:focus_flow_app/global-widgets/app_text.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key, required this.onTap, this.buttonText});
  final VoidCallback onTap;
  final String? buttonText;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size.width * 0.05),
          image: DecorationImage(
            image: AssetImage("assets/buttonGradient.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: CustomText( 
            text:buttonText?? "Get Started",
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 17,
            
          ),
        ),
      ),
    );
  }
}
