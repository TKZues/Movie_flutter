import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  final double height;
  final Color color;
  final double strokeWidth;
  final double gap; // Khoảng cách giữa các đoạn nét đứt
  final double dashLength; // Độ dài của mỗi đoạn nét đứt

  DashedLine({
    required this.height,
    required this.color,
    this.strokeWidth = 1.0,
    this.gap = 4.0,
    this.dashLength = 5.0,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(double.infinity, height),
      painter: DashedLinePainter(
        color: color,
        strokeWidth: strokeWidth,
        gap: gap,
        dashLength: dashLength,
      ),
    );
  }
}

class DashedLinePainter extends CustomPainter {
  final Color color;
  final double strokeWidth;
  final double gap;
  final double dashLength;

  DashedLinePainter({
    required this.color,
    required this.strokeWidth,
    required this.gap,
    required this.dashLength,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    double startX = 0;
    while (startX < size.width) {
      final endX = startX + dashLength;
      canvas.drawLine(Offset(startX, 0), Offset(endX, 0), paint);
      startX += dashLength + gap;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
