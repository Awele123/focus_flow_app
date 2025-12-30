import 'package:flutter/material.dart';
import 'package:focus_flow_app/global-widgets/app_text.dart';
import 'package:focus_flow_app/global-widgets/app_text_field.dart';
import 'package:focus_flow_app/widgets/app_bar_container.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0x0f0B1E),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: size.width * 0.02),

              CustomText(
                text: 'Tasks',

                fontSize: 28,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),

              CustomText(
                text: '0 active tasks',

                fontSize: 14,
                color: Colors.purple,
              ),

    SizedBox(height: size.width* 0.08),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(
                    color: Colors.purple
                  ),
                 
                  borderRadius: BorderRadius.circular(16),
                 
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: 'Add a new task...',
                        hintStyle: TextStyle(color: Colors.white54),
                        border: InputBorder.none,
                      ),
                    ),
                  SizedBox(height: size.width* 0.05),
                    Row(
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 18,
                              height: 18,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all(color: Colors.white),
                              ),
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              'High Priority',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ],
                        ),
                        Spacer(),
                        Container(
                          width: 42,
                          height: 42,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withValues(alpha:0.15),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

          SizedBox(height: size.width* 0.18),

          
              Center(
                child: Column(
                  children: const [
                    Text(
                      'No tasks yet.',
                      style: TextStyle(color: Colors.white60, fontSize: 16),
                    ),
                    SizedBox(height: 6),
                    Text(
                      'Add your first task to get started!',
                      style: TextStyle(color: Colors.white38),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
