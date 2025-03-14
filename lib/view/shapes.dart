import 'package:flutter/material.dart';

class LineCustomPaintExample extends StatelessWidget {
  const LineCustomPaintExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            children: [
              Container(
                color: Colors.white,
                width: 300,
                height: 300,
                child: CustomPaint(
                  foregroundPainter: ArcPainter(),
                ),
              ),
              Container(
                color: Colors.white,
                width: 300,
                height: 300,
                child: CustomPaint(
                  foregroundPainter: LinePainter(),
                ),
              ),
              Container(
                color: Colors.white,
                width: 300,
                height: 300,
                child: CustomPaint(
                  foregroundPainter: RectanglePainter(),
                ),
              ),
              Container(
                color: Colors.white,
                width: 300,
                height: 300,
                child: CustomPaint(
                  foregroundPainter: RoundedRectanglePainter(),
                ),
              ),
              Container(
                color: Colors.white,
                width: 300,
                height: 300,
                child: CustomPaint(
                  foregroundPainter: CirclePainter(),
                ),
              ),
              Container(
                color: Colors.white,
                width: 300,
                height: 300,
                child: CustomPaint(
                  foregroundPainter: TrianglePainter(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10;

    canvas.drawLine(
      Offset(
        size.width * 0.9, // x
        size.height * 0.1, // y
      ), //todo ------------> align right side as per x and y
      //todo note : whatever space between this 2 point that area filled with color
      //todo x : near to 0 means align left side and near to 1 then align it right side
      //todo y : near to 0 means align top side and near to 1 then align it bottom side
      Offset(
        size.width * 0.1, // x
        size.height * 1, // y
      ), //todo ------------> align left side as per x and y
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    final rect = Rect.fromPoints(
      //todo start point
      Offset(
        50,
        50,
      ), //todo  --------------------> handle from left side
      //todo note : whatever space between this 2 point that area filled with color;

      //todo end point
      Offset(
        240,
        250,
      ), //todo  --------------------> handle from right side
      //todo notes :
      //todo x : near to 1 means touch to the right side (0, 0.1, 0.2, 0.3 up to 0.8, 0.9, 1)
      //todo y : near to 1 means touch to the bottom side (0, 0.1, 0.2, 0.3 up to 0.8, 0.9, 1)
    );
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class RoundedRectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    final rect = Rect.fromPoints(
      //todo start point
      Offset(
        50,
        50,
      ), //todo  --------------------> handle from left side
      //todo note : whatever space between this 2 point that area filled with color;

      //todo end point
      Offset(
        240,
        250,
      ), //todo  --------------------> handle from right side
      //todo notes :
      //todo x : near to 1 means touch to the right side (0, 0.1, 0.2, 0.3 up to 0.8, 0.9, 1)
      //todo y : near to 1 means touch to the bottom side (0, 0.1, 0.2, 0.3 up to 0.8, 0.9, 1)
    );
    (canvas.drawRRect(
      RRect.fromRectAndRadius(
        rect,
        Radius.circular(32),
      ),
      paint,
    ));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class CirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke;

    canvas.drawCircle(
      Offset(180, 180),
      size.width * 0.25,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;

    final arc1 = Path();
    arc1.moveTo(size.width * 0.1, size.height * 0.6);
    arc1.arcToPoint(Offset(size.width * 0.9, size.height * 0.6),
        radius: Radius.circular(50), clockwise: true);

    canvas.drawPath(arc1, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.green
      ..strokeWidth = 10
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke;
    final path = Path();
    path.moveTo(
      size.width * 0.5,
      size.height * 0.2,
    );
    path.lineTo(size.width * 0.15, size.height * 0.8);
    path.lineTo(size.width * 0.85, size.height * 0.8);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
