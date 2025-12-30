import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppBarContainer extends StatelessWidget {
  AppBarContainer({
    super.key,
    this.icon,
    this.width,
    this.radius,
    this.isAppBar = true, this.height,
  });
  final Icon? icon;
  final double? width, height;
  bool isAppBar;
  final BorderRadiusGeometry? radius;
  @override
  Widget build(BuildContext context) {
    //final size = MediaQuery.of(context).size;
    return Container(
      //  color:  Colors.transparent,
      width: width,
      height: height,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.purple),
        borderRadius: radius ?? BorderRadius.circular(10),
        color: Colors.transparent,
      ),
      child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon ??
              Icon(
                Icons.info_outline_rounded,
                color: const Color.fromARGB(255, 170, 38, 193),
              ),
            ],
          ),
    );
  }
}
