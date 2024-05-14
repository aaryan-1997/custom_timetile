import 'package:flutter/material.dart';

class TimeLineItem {
  final String label;
  final Color color;
  final bool isActive;
  final TextStyle? style;

  TimeLineItem({
    required this.label,
    required this.color,
    this.isActive = true,
    this.style,
  });
}
