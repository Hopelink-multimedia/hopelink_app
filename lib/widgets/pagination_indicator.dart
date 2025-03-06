import 'package:flutter/material.dart';

class PaginationIndicator extends StatelessWidget {
  final int totalDots;
  final int currentIndex;

  const PaginationIndicator({
    Key? key,
    required this.totalDots,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(
        totalDots,
            (index) => Container(
          margin: const EdgeInsets.symmetric(horizontal: 2.5),
          width: 9,
          height: 9,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: index == currentIndex
                ? const Color(0xFF72B0F3)
                : const Color(0xFFD9D9D9),
          ),
        ),
      ),
    );
  }
}