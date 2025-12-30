import 'package:flutter/material.dart';

class StreakCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry padding;
  final bool hasFireIcon;
  final bool hasLeftAccent;
  final double borderRadius;

  const StreakCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.hasFireIcon = false,
    this.hasLeftAccent = false,
    this.borderRadius = 18,
  });

  @override
  Widget build(BuildContext context) {
      // final size = MediaQuery.of(context).size;
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        color: Colors.transparent,
     
        border: hasFireIcon
            ? Border.all(
                 color:  Colors.purple,
                width: 2,
              )
            : hasLeftAccent
                ?  Border(
                    left: BorderSide(
                       color:  Colors.purple,
                      width: 7,
                    ),
                    top: BorderSide(
                      color: Colors.purple
                    ),
                    bottom:  BorderSide(
                      color: Colors.purple
                    ),
                    right:  BorderSide(
                      color: Colors.purple
                    )
                  )
                : Border.all(
                  color: Colors.purple
                ),
     
      ),
      child: child,
    );
  }
}
