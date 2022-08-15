
import 'package:dashboardscreen/view/constants/color.dart';
import 'package:flutter/material.dart';

class Shape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = peachColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(0, size.height * 0.6700000);
    path0.quadraticBezierTo(
                            size.width * 0.0741667, size.height * 0.7375000,
                            size.width * 0.1533333, size.height * 0.7366667
                            );
      path0.cubicTo(
      size.width * 0.2233333,
      size.height * 0.7425000,
      size.width * 0.3300000,
      size.height * 0.6541667,
      size.width * 0.4100000,
      size.height * 0.6500000,
    );
    path0.cubicTo(
        size.width * 0.4941667,
        size.height * 0.6408333,
        size.width * 0.5725000,
        size.height * 0.6791667,
        size.width * 0.6500000,
        size.height * 0.6800000);
    path0.quadraticBezierTo(size.width * 0.8366667, size.height * 0.6633333,
        size.width, size.height * 0.5466667);
    path0.lineTo(size.width, size.height);
    path0.lineTo(0, size.height);
    path0.lineTo(0, size.height * 0.6700000);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
