import 'package:flutter/material.dart';
import 'package:focus_flow_app/global-widgets/app_text.dart';

// ignore: must_be_immutable
class AppButton extends StatefulWidget {
  AppButton({
    super.key,
    this.text,
    this.fontSize,
    this.width,
    this.hasIcon = false,
     this.suffixIcon = false,
    this.icon,
    this.color,
    this.fontWeight,
    this.textColor, 
  });
  final String? text;
  final double? fontSize, width;

  final Icon? icon;
  final Color? color, textColor;
  bool hasIcon,suffixIcon;
  final FontWeight? fontWeight;

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: widget.width ?? size.width * 0.2,
      padding: EdgeInsets.all(size.width * 0.018),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: widget.color ?? const Color.fromARGB(255, 27, 23, 23),
      ),
      child: Center(
        child: GestureDetector(
          onTap: () {},
          child: widget.hasIcon
              ? widget.icon ?? Icon(Icons.leave_bags_at_home_sharp)
              : Row(
                spacing: 3,
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    widget.suffixIcon ? Icon(Icons.play_arrow, color: Colors.white,) : SizedBox.shrink(),
                    CustomText(
                      text: widget.text ?? "Focus",
                      fontSize: widget.fontSize ?? 15,
                      fontWeight: widget.fontWeight ?? FontWeight.w900,
                      color: widget.textColor ?? Colors.white,
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
