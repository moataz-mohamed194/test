import 'package:flutter/material.dart';
import '../../games/tracing/widget/letter_s3.dart';

class SPhonetics {
  int? countOfPartsOfLettersForTracing = 14;

  CustomPainter? Function(List<Color?>? colorsOfPaths, List<Offset> points)
      get tracingOfLetter =>
          (List<Color?>? colorsOfPaths, List<Offset> points) {
            return FlipBookPainterLetterS(
                colorsOfPaths: colorsOfPaths, points: points);
          };
  (Path, int)? Function(Offset point, Size size, bool isFingerPosition)?
      get checkTheIndexOfPath =>
          (Offset point, Size size, bool isFingerPosition) {
            return FlipBookPainterLetterS.indexOfPointInside(
                point, size, isFingerPosition);
          };
}
