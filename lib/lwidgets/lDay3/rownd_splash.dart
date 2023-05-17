import 'package:baba_black_sheep/lwidgets/lDay3/rownd_signin_screen.dart';
import 'package:flutter/material.dart';

class RowndSplash extends StatefulWidget {
  const RowndSplash({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Splash();
  }
}

class _Splash extends State<RowndSplash> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 2),
        () {
          moveToSignInScreen(context);
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 229, 204),
      body: Center(
        child: Stack(
          textDirection: TextDirection.ltr,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 15),
              child: CustomPaint(
                painter: DrawCircle()
              ),
            ),

            const Text(
                "rownd",
                style: TextStyle(
                    letterSpacing: 15,
                    fontSize: 60,
                    color: Color.fromARGB(255, 30, 100, 124),
                    fontWeight: FontWeight.bold,
                    fontFamily: "Delius Swash Caps"
                ),
              textAlign: TextAlign.center
            )
          ],
        ),
      ),
    );
  }
}

moveToSignInScreen(context) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const RowndSigninScreen()),
      (Route<dynamic> route) => false
  );
}

class DrawCircle extends CustomPainter {

  final Paint _paint = Paint()
      ..color = const Color.fromARGB(255, 30, 100, 124)
      ..strokeWidth = 5.0
      ..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(const Offset(0.0, 0.0), 40.0, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}