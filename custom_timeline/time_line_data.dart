import 'package:flutter/material.dart';

class TimeLineData {
  final String label;
  final Color color;
  final bool isActive;
  final TextStyle? style;
  final Animation<double> animation;
  TimeLineData({
    required this.label,
    required this.color,
    this.isActive = true,
    this.style,
    required this.animation,
  });
}
