import 'package:flutter/material.dart';
import 'package:focus_flow_app/global-widgets/app_text.dart';

class Timer extends StatelessWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      child: Stack(
        alignment: Alignment.center,
        children: [
          
          Container(
                padding: EdgeInsets.all(size.width * 0.03),
              height: size.width * 0.6,
              width: size.width * 0.6,
              
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 106, 19, 121),),
                shape: BoxShape.circle,
            
                color: const Color.fromARGB(255, 12, 2, 19),
              ),
            child: Container(
              padding: EdgeInsets.all(size.width * 0.03),
              height: size.width * 0.35,
              width: size.width * 0.35,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 55, 10, 63),),
                shape: BoxShape.circle,
            
                color: const Color.fromARGB(255, 18, 1, 24),
              ),
              child: CircularProgressIndicator(
                color:Colors.transparent,
                strokeWidth: 10,
                backgroundColor: Colors.transparent,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(
                //formatTime(remainingSeconds),
                text: '3:40',

                color: Colors.purple,
                fontSize: 70,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
