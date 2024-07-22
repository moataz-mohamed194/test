import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'based_of_all_game.dart';

class BasedOfGames extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopScope(
        onPopInvoked: (x) async {},
        canPop: true,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            // alignment: Alignment.center,
            children: [BasedOfAllGame()],
          ),
        ));
  }
}
