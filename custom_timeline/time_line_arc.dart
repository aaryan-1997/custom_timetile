import 'package:flutter/material.dart';

import 'time_line_arc_painter.dart';

class TimeLineArc extends StatelessWidget {
  final Color color;
  final ArcAngle angle;
  final ArcStrokeStyle strokeStyle;
  final double leadingLineWidthFactor;
  final Animation<double> animation;

  const TimeLineArc(
      {super.key,
      required this.color,
      required this.angle,
      required this.strokeStyle,
      required this.animation,
      this.leadingLineWidthFactor = 1});

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: animation,
        builder: (context, widget) {
          return SizedBox(
            height: 65,
            width: 65,
            child: CustomPaint(
              painter: TimeLineArcPainter(
                  leadingLineWidthFactor: leadingLineWidthFactor,
                  angle: angle,
                  progress: animation.value,
                  strokeStyle: strokeStyle,
                  color: color),
            ),
          );
        });
  }
}
