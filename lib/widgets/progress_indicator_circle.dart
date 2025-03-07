import 'package:flutter/material.dart';
import '../theme/colors.dart';

class ProgressIndicatorCircle extends StatelessWidget {
  final bool isActive;
  final bool isCompleted;

  const ProgressIndicatorCircle({
    Key? key,
    this.isActive = false,
    this.isCompleted = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: const Size(25, 25),
      painter: ProgressCirclePainter(
        isActive: isActive,
        isCompleted: isCompleted,
      ),
    );
  }
}

class ProgressCirclePainter extends CustomPainter {
  final bool isActive;
  final bool isCompleted;

  ProgressCirclePainter({
    required this.isActive,
    required this.isCompleted,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint outerCirclePaint = Paint()
      ..color = AppColors.inactive
      ..style = PaintingStyle.fill;

    final Paint innerCirclePaint = Paint()
      ..color = isActive ? AppColors.activeProgress : Colors.white
      ..style = PaintingStyle.fill;

    final center = Offset(size.width / 2, size.height / 2);
    final outerRadius = size.width / 2;
    final innerRadius = size.width / 4;

    canvas.drawCircle(center, outerRadius, outerCirclePaint);
    canvas.drawCircle(center, innerRadius, innerCirclePaint);
  }

  @override
  bool shouldRepaint(ProgressCirclePainter oldDelegate) {
    return isActive != oldDelegate.isActive || isCompleted != oldDelegate.isCompleted;
  }
}