import 'package:based_of_eng_game/based_of_eng_game.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ScreenUtilInit(
            designSize: const Size(360, 690),
            minTextAdapt: true,
            splitScreenMode: true,
            builder: (_, child) {
              return MainScreenOfGames(
                actionOfCompleteGame: (int countOfStars) {},
                showTheEditedGames: false,
                backButton: () {
                  debugPrint(
                      'backButton#########################################');

                  Navigator.of(context).pop();
                  Navigator.of(context).pop();
                },
              );
            }));
  }
}
