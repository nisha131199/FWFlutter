import 'package:flutter/material.dart';
import 'create_profile_screen.dart';

class RowndSigninScreen extends StatefulWidget {
  const RowndSigninScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Signin();
  }
}

class _Signin extends State<RowndSigninScreen> {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 255, 229, 204),
          body: Center(
            child: Column(
              children: [
                const Padding(padding: EdgeInsets.only(top: 80)),
                const Text(
                  "WELCOME TO",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "Delius Swash Caps",
                    fontSize: 40,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                Stack(
                  textDirection: TextDirection.ltr,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25, left: 12),
                      child: CustomPaint(
                          painter: DrawCircle(30.0, 4.0)
                      ),
                    ),

                    const Text(
                        "rownd",
                        style: TextStyle(
                            letterSpacing: 15,
                            fontSize: 40,
                            color: Color.fromARGB(255, 30, 100, 124),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Delius Swash Caps"
                        ),
                        textAlign: TextAlign.center
                    )
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 100)),
                Stack(
                  textDirection: TextDirection.ltr,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 70, left: 18),
                      child: CustomPaint(
                          painter: DrawCircle(50.0, 6.0)
                      ),
                    ),

                    const Text(
                        "r",
                        style: TextStyle(
                            letterSpacing: 15,
                            fontSize: 100,
                            color: Color.fromARGB(255, 30, 100, 124),
                            fontWeight: FontWeight.bold,
                            fontFamily: "Delius Swash Caps"
                        ),
                        textAlign: TextAlign.center
                    )
                  ],
                ),
                const Padding(padding: EdgeInsets.only(top: 100)),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.redAccent),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      color: Colors.white
                  ),
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      moveToCreateProfileScreen(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: [
                          Image.asset("assets/images/google.png", width: 50, height: 50,),
                          const SizedBox(width: 20,),
                          const Text(
                            "Sign In with Google",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      color: Colors.white
                  ),
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 20, right: 20),
                  child: GestureDetector(
                      onTap: () {
                        moveToCreateProfileScreen(context);
                      }, child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Image.asset("assets/images/apple.png", width: 50, height: 50,),
                        const SizedBox(width: 20,),
                        const Text(
                          "Sign In with Apple",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                  )),
                )
              ],
            ),
          ),
        )
    )
      ;
  }
}

moveToCreateProfileScreen(context) {
  Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => const CreateProfileScreen()),
      (Route<dynamic> route) => false
  );
}

class DrawCircle extends CustomPainter {
  double _circleSize = 0.0;
  final Paint _paint = Paint();

  DrawCircle(double circleSize, double stroke) {
    _circleSize = circleSize;

    _paint
      ..color = const Color.fromARGB(255, 30, 100, 124)
      ..strokeWidth = stroke
      ..style = PaintingStyle.stroke;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(const Offset(0.0, 0.0), _circleSize, _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}