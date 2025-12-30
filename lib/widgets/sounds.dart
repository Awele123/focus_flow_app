import 'package:flutter/material.dart';
import 'package:focus_flow_app/widgets/app_bar_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Sounds extends StatelessWidget {
  const Sounds({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AppBarContainer(
        radius: BorderRadius.circular(50),
         width: size.width * 0.2,
      
          icon: FaIcon(
         FontAwesomeIcons.cloudRain,
         color: Colors.purple,
         size: 30,
          ),
        
        ),
        AppBarContainer(
          width: size.width * 0.2,
      radius: BorderRadius.circular(50),
          icon: Icon(
            Icons.waves,
            size: 30,
            color: Colors.purple
          ),
        ),
        AppBarContainer(
            radius: BorderRadius.circular(50),
          width: size.width * 0.2,
          icon: FaIcon(
           FontAwesomeIcons.leaf,
            size: 30,
            color:  Colors.purple
          ),
        ),
      ],
    );
  }
}
