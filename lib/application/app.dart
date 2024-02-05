import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mycourtdiary/application/state_holder_binder.dart';
import 'package:mycourtdiary/view/screens/home_screen.dart';
import 'package:mycourtdiary/view/screens/lawyer/main_bottom_nav_screen.dart';
import 'package:mycourtdiary/view/screens/login_screen.dart';
import 'package:mycourtdiary/view/screens/sign_up_screen.dart';
import 'package:mycourtdiary/view/utlis/color_palette.dart';



class MyCourtDiary extends StatefulWidget {
  const MyCourtDiary({super.key});

  
  @override
  State<MyCourtDiary> createState() => _MyCourtDiaryState();
}

class _MyCourtDiaryState extends State<MyCourtDiary> {
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(


      debugShowCheckedModeBanner: false,
          home: MainBottomNavScreen(),
      initialBinding: StateHolderBinder(),

         theme: ThemeData(
              primaryColor: ColorPalette.primaryColor,
              appBarTheme: const AppBarTheme(
                backgroundColor: Colors.white, // Customize app bar color
              ),

              // for every elevated button same design

              elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      textStyle:  const TextStyle(
                          fontSize: 14,
                          letterSpacing: 0.5,
                          fontWeight: FontWeight.w600),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)))),

              //for every textformfield design this design is same

              inputDecorationTheme: const InputDecorationTheme(
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                border:
                    OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                enabledBorder:
                    OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
                disabledBorder:
                    OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
              )
          ),


     themeMode:ThemeMode.light,


    );
  }
}