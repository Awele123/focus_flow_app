import 'package:flutter/material.dart';
import 'package:focus_flow_app/global-widgets/app_button.dart';
import 'package:focus_flow_app/global-widgets/app_text.dart';
import 'package:focus_flow_app/widgets/modal_options.dart';

class BottomModalSheet extends StatelessWidget {
  const BottomModalSheet({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 24, 1, 28),
        //shape: BoxShape.circle
        borderRadius: BorderRadius.circular(50)
      ),
      padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
      child: ListView(
        children: [
          Column(
           
            spacing: 10,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Timer Settings",
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                  ),
                ],
              ),
            
              ModalOptions(),
              ModalOptions(heading: "Break"),
          
            ],
          ),
          SizedBox(height: 80,),
              AppButton(
             
              suffixIcon: true,
             addIcon: Icon(Icons.check, color: Colors.white,),

            color: Colors.purple,
            text: "Save Changes",
            width: size.width * 0.3,
            fontSize: 19,
          ),
        ],
      ),
    );
  }
}
