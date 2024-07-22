import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import '../../../../based_of_eng_game.dart';
import '../../../core/phonetics_color.dart';

part 'tracing_state.dart';

class TracingCubit extends Cubit<TracingInitial> {
  TracingCubit({required SPhonetics stateOfGame})
      : super(TracingInitial(
          colorsOfPaths: [],
          stateOfGame: stateOfGame,
          paths: [],
        )) {
    List<Color?> bgOfPaths = List.generate(
        state.stateOfGame.countOfPartsOfLettersForTracing ?? 0,
        (index) => null);
    emit(state.clearData());

    emit(state.copyWith(
      colorsOfPaths: bgOfPaths,
    ));
  }
  // Future<List<Offset>> getOffsetsFromPath(Path path) {
  //   // Get the path metrics
  //   List<Offset> offsets = [];
  //   PathMetrics pathMetrics = path.computeMetrics();
  //
  //   // Traverse each segment of the path
  //   for (PathMetric pathMetric in pathMetrics) {
  //     double length = pathMetric.length;
  //
  //     // Sample points along the path at regular intervals
  //     for (double distance = 0; distance < length; distance += 1) {
  //       Tangent? tangent = pathMetric.getTangentForOffset(distance);
  //       if (tangent != null) {
  //         offsets.add(tangent.position);
  //       }
  //     }
  //   }
  //   return Future.value(offsets);
  // }

  checkTheLocationOfPoint({required Offset point, required Size size}) async {
    try {
      if (state.stateOfGame.checkTheIndexOfPath != null) {
        List<Offset> subOffest = state.paths;
        subOffest.add(point);
        emit(state.copyWith(paths: subOffest));
        (Path, int)? mainDataOfPath =
            state.stateOfGame.checkTheIndexOfPath!(point, size, false);
        // Path? finalPath = mainDataOfPath?.$1;
        // if (finalPath != null) {
        List<Offset> subPaths = state.paths;
        //   List<Offset> newSubPaths = await getOffsetsFromPath(finalPath);
        //   subPaths.addAll(newSubPaths);
        subPaths.add(point);
        emit(state.copyWith(paths: subPaths));
        // }
        int indexOfPoint = mainDataOfPath?.$2 ?? 0;
        // debugPrint('before:${state.paths.length}');

        if (indexOfPoint == 1 &&
            state.colorsOfPaths
                .where((element) => element == null)
                .isNotEmpty) {
          indexOfPoint = indexOfPoint - 1;
          List<Color?> tempColors = state.colorsOfPaths;
          tempColors[indexOfPoint] = AppColorPhonetics.lightBlueColor4;
          emit(state.copyWith(colorsOfPaths: tempColors));
        } else if (state.colorsOfPaths[indexOfPoint - 2] != null) {
          indexOfPoint = indexOfPoint - 1;
          List<Color?> tempColors = state.colorsOfPaths;
          tempColors[indexOfPoint] = AppColorPhonetics.lightBlueColor4;
          emit(state.copyWith(colorsOfPaths: tempColors));
        }
        // debugPrint('after:${state.colorsOfPaths}');
      }
    } catch (e) {
      debugPrint('check:$e');
    }
  }

  saveCurrentPosition(
      {required Offset? position, required Offset point, required Size size}) {
    try {
      if (position != null) {
        int indexOfPoint =
            state.stateOfGame.checkTheIndexOfPath!(point, size, true)?.$2 ?? 0;
        indexOfPoint = indexOfPoint - 1;
        List<Color?> tempColors = state.colorsOfPaths;
        if (tempColors[indexOfPoint] == null) {
          emit(state.copyWith(currentPosition: position));
        }
      } else {
        emit(state.clearPosition());
      }
    } catch (e) {
      debugPrint('check:$e');
    }
  }
}
