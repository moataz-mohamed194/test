part of 'tracing_cubit.dart';

class TracingInitial extends Equatable {
  final SPhonetics stateOfGame;
  final List<Color?> colorsOfPaths;
  final List<Offset> paths;
  final Offset? currentPosition;
  final int? countOfPaths;

  const TracingInitial(
      {required this.paths,
      required this.colorsOfPaths,
      this.countOfPaths,
      this.currentPosition,
      required this.stateOfGame});

  TracingInitial copyWith(
      {List<Color?>? colorsOfPaths,
      List<Offset>? paths,
      SPhonetics? stateOfGame,
      Offset? currentPosition,
      int? countOfPaths}) {
    return TracingInitial(
      stateOfGame: stateOfGame ?? this.stateOfGame,
      paths: paths ?? this.paths,
      colorsOfPaths: colorsOfPaths ?? this.colorsOfPaths,
      currentPosition: currentPosition ?? this.currentPosition,
      countOfPaths: countOfPaths ?? this.countOfPaths,
    );
  }

  clearPosition() {
    return TracingInitial(
      stateOfGame: stateOfGame,
      colorsOfPaths: colorsOfPaths,
      currentPosition: null,
      paths: paths,
      countOfPaths: countOfPaths,
    );
  }

  clearData() {
    return TracingInitial(
      countOfPaths: null,
      paths: paths,
      currentPosition: null,
      stateOfGame: stateOfGame,
      colorsOfPaths: [],
    );
  }

  @override
  List<Object?> get props =>
      [colorsOfPaths, paths, currentPosition, countOfPaths, stateOfGame];
}
