import 'package:flutter/material.dart';
import 'package:focus_flow_app/global-widgets/app_text.dart';
import 'package:focus_flow_app/global-widgets/app_button.dart';
import 'package:focus_flow_app/widgets/app_bar_container.dart';
import 'package:focus_flow_app/widgets/bottom_sheet.dart';
import 'package:focus_flow_app/widgets/modal_options.dart';
import 'package:focus_flow_app/widgets/sounds.dart';
import 'package:focus_flow_app/widgets/timer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0x0f0B1E),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Sessions: 0",
          style: TextStyle(color: Colors.purple, fontSize: 17),
        ),

        automaticallyImplyLeading: false,
        actions: [
          //AppBarContainer(),
          // SizedBox(width: 5.0),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                context: context,
               // isScrollControlled: true,
                backgroundColor: Colors.transparent,
                shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.vertical(
      top: Radius.circular(1),
    ),
  ) ,
                builder: (context) {
                  return BottomModalSheet(size: size);
                },
              );
            },
            child: AppBarContainer(
              child: Icon(Icons.settings_outlined, color: Colors.white),
            ),
          ),
          //  SizedBox(width: 8.0),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(text: "Focus Session"),
              CustomText(
                fontSize: 15,
                text: "25 minutes",
                color: const Color.fromARGB(255, 219, 85, 243),
              ),
              SizedBox(height: size.width * 0.06),
              Timer(),
              SizedBox(height: size.width * 0.06),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AppButton(
                    suffixIcon: true,
                    color: Colors.purple,
                    text: "Start",
                    width: size.width * 0.3,
                    fontSize: 19,
                  ),
                  AppButton(
                    color: Colors.purple,
                    text: "Reset",
                    width: size.width * 0.3,
                    fontSize: 19,
                  ),
                ],
              ),
              SizedBox(height: size.width * 0.1),
              CustomText(text: "Ambient Sounds"),
              SizedBox(height: size.width * 0.06),
              Sounds(size: size),
              SizedBox(height: size.width * 0.14),
            ],
          ),
        ),
      ),
    );
  }
}
