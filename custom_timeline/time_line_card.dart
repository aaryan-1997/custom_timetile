import 'package:flutter/material.dart';

import 'time_line_data.dart';

class TimeLineCard extends StatelessWidget {
  final TimeLineData data;
  const TimeLineCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: data.animation,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Container(
            height: 50,
            width: 200,
            margin: const EdgeInsets.symmetric(horizontal: 8.0),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0, 5),
                    blurRadius: 10,
                  ),
                ]),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  height: 4,
                  color: data.color,
                ),
                const SizedBox(height: 8),
                Flexible(
                  child: Text(
                    data.label,
                    style: data.style ??
                        Theme.of(context)
                            .textTheme
                            .labelMedium
                            ?.copyWith(color: data.color),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 0,
            child: Container(
              height: 25,
              width: 25,
              decoration:
                  BoxDecoration(color: data.color, shape: BoxShape.circle),
              child: Center(
                child: Icon(
                  data.isActive ? Icons.check : Icons.question_mark,
                  color: Colors.white,
                  size: 16,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
