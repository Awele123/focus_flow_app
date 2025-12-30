import 'package:flutter/material.dart';
import 'package:focus_flow_app/global-widgets/app_text.dart';
import 'package:focus_flow_app/widgets/app_bar_container.dart';

class ModalOptions extends StatelessWidget {
   ModalOptions({
    super.key, this.heading, this.boxText,this.isText = false
  });
final   String? heading;
final String? boxText;
bool isText;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          
            CustomText(text:  heading ?? "Focus Duration"),
            SizedBox(height: 10),
          Row(
            spacing: 10,
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AppBarContainer(child: CustomText(text: "5m",),
              ),
                AppBarContainer(child:  CustomText(text: "10m",),
              ),
                AppBarContainer(child: CustomText(text: "15m",),
              ),
                AppBarContainer(child: CustomText(text: "20m",),
              ),
                AppBarContainer(
                  
                  child: 
                  CustomText( 
                    text: boxText?? "25m",)
              ),
            ],
          )
          ],
        ),
      ],
    );
  }
}
