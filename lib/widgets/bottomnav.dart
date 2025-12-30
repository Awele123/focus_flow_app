
import 'package:flutter/material.dart';
import 'package:focus_flow_app/pages/home_page.dart';
import 'package:focus_flow_app/pages/streak_screen.dart';
import 'package:focus_flow_app/pages/task_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key,});


  @override
 State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int currentIndex = 0;

  final screens = const [
    HomePage(),
    TaskScreen(),
    StreakScreen(),
  ];


  void changeTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          
          color: Colors.transparent,
          border: Border(
            top: BorderSide(
              color: Color.fromARGB(255, 66, 10, 118) 
            
            )
          )
        
        ),
        child: BottomNavigationBar(
        
          type: BottomNavigationBarType.fixed,
       // backgroundColor: Color(0x0f0B1E),
           backgroundColor: Colors.transparent,
          selectedIconTheme:
              const IconThemeData(color:   Colors.purple,),
          unselectedIconTheme: const IconThemeData(color:Color.fromARGB(255, 143, 150, 165)),
          unselectedItemColor:Color.fromARGB(255, 143, 150, 165),
         // selectedItemColor: const Color.fromARGB(255, 135, 19, 243),
           selectedItemColor: Colors.purple,
          currentIndex: currentIndex,
          onTap:changeTab,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.timer_outlined),
              label: 'Focus',
            ),
            
         
          BottomNavigationBarItem(
              icon: Icon(Icons.checklist_outlined),
              label: 'Tasks',
            ),
         BottomNavigationBarItem(
              icon: Icon(Icons.local_fire_department_outlined),
              label: 'Streak',
            ),
         
          
          ],
        ),
      ),
    );
  }

}
