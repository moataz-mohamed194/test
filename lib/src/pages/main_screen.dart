import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../core/games_structure/basic_of_chapter.dart';
import '../widgets/based_of_games.dart';

class MainScreenOfGames extends StatefulWidget {
  // final MainDataOfChapters? dataOfBasesGame;
  final bool showTheEditedGames;
  final void Function(int countOfStars) actionOfCompleteGame;
  final void Function() backButton;

  const MainScreenOfGames(
      {super.key,
      // required this.dataOfBasesGame,
      required this.backButton,
      required this.actionOfCompleteGame,
      required this.showTheEditedGames});
  @override
  State<StatefulWidget> createState() {
    return _MainScreenOfGames();
  }
}

class _MainScreenOfGames extends State<MainScreenOfGames> {
  @override
  void initState() {
    super.initState();
    // context.read<CurrentGameCubit>().getTheBackGround();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Listener(
      child: BasedOfGames(),
    ));
  }
}
