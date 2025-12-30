import 'package:flutter/material.dart';
import 'package:focus_flow_app/global-widgets/app_text.dart';

// ignore: must_be_immutable
class AppBarContainer extends StatelessWidget {
  AppBarContainer({
    super.key,
    this.icon,
    this.width,
    this.radius,
    this.isAppBar = true, this.height, required this.child,
  });
  final Icon? icon;
  final double? width, height;
  bool isAppBar;
    final Widget child;
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
      child: child
          
    );
  }
}
