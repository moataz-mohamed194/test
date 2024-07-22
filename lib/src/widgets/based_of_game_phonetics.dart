import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../based_of_eng_game.dart';
import '../games/tracing/manager/tracing_cubit.dart';
import '../games/tracing/page/tracing_game.dart';

class BasedOfGamePhonetics extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Stack(
      alignment: Alignment.topCenter,
      children: [
        Positioned(
            bottom: 0,
            child: SizedBox(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BlocProvider<TracingCubit>(
                    create: (_) => TracingCubit(
                          stateOfGame: SPhonetics(),
                        ),
                    child: const TracingGame()),
              ],
            ))),
        const Positioned(
          bottom: 15,
          right: 0,
          child: Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: SizedBox(
              // width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(),
                  // SizedBox(),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
