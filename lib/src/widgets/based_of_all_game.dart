import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'based_of_game_phonetics.dart';

class BasedOfAllGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // alignment: Alignment.center,
      children: [
        SizedBox(
          height: (MediaQuery.of(context).size.height - (50.h + 5)),
          child: Column(
            children: [
              BasedOfGamePhonetics(),
            ],
          ),
        ),
      ],
    );
  }
}
