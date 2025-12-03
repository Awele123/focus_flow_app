import 'package:flutter/material.dart';
import 'package:focus_flow_app/pages/onboard.dart';
import 'package:focus_flow_app/pages/signin.dart';
import 'package:focus_flow_app/pages/signup.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: '/onboard',
      routes: {
        '/onboard':(context) => Onboard(),
        '/signUp': (context) => Signup(),
        '/signIn': (context)=> SignIn(),
      },
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
    
    );
  }
}
