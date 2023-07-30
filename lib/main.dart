import 'package:dhaka_live/app/category_screen/screens/category_screen.dart';
import 'package:dhaka_live/app/home_screen/screens/home_screen.dart';
import 'package:dhaka_live/app/login_screen/screens/login_screen.dart';
import 'package:dhaka_live/app/main_screen/screens/main_screen.dart';
import 'package:dhaka_live/app/profile_screen/screens/profile_screen.dart';
import 'package:dhaka_live/app/registration_screen/screens/retistration_screen.dart';
import 'package:dhaka_live/app/search_screen/screens/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 890),
      minTextAdapt: true,
      splitScreenMode: true,

      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          theme: ThemeData(
            useMaterial3: true,
          ),
          debugShowCheckedModeBanner: false,

          initialRoute: LoginScreen.pageRoute,
          routes: {
            LoginScreen.pageRoute:(context) => LoginScreen(),
            RegistrationScreen.pageRoute: (context) => RegistrationScreen(),
            MainScreen.pageRoute: (context) => MainScreen(),
            
            ProfileScreen.pageRoute: (context) => ProfileScreen(),
            HomeScreen.pageRoute: (context) => HomeScreen(),
            SearchScreen.pageRoute: (context) => SearchScreen(),
            CategoryScreen.pageRoute: (context) => CategoryScreen(),

          },


        );
      },

    );
  }
}






// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//     );
//   }
// }
