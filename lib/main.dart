import 'package:flutter/material.dart';
import 'package:tube_cast_app/Talent_Page/achievements.dart';
import 'package:tube_cast_app/Talent_Page/professional_details.dart';
import 'package:tube_cast_app/Talent_Page/socialMedia.dart';
import 'package:tube_cast_app/Work%20Experience/work_experience.dart';

 import 'Talent_Page/dummy.dart';
import 'Talent_Page/talent_page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return     MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

        theme: ThemeData(
          primaryColor: Colors.black, // Set primary color to black

          textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Colors.black, // Set cursor color to black
          ),
        ),
        home:   TalentPage1()
    );
  }
}


