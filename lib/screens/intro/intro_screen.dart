import 'package:flutter/material.dart';
import 'package:wys_app/screens/home_screen.dart';



class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay for the splash screen
    Future.delayed(Duration(seconds: 3), () {
      // Navigate to the home page
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 428,
      height: 926,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Color(0xFF868BFF),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.50, color: Color(0xFF078282)),
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 500,
            left: 20,
            child: Container(
              width: 450,
              height: 700,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset('assets/images/vector_up.png').image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            top: 600,
            bottom: 0,
            child: Container(
              width: 450,
              height: 700,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset('assets/images/vector_down.png').image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Center(
            // left: 106,
            // top: 431,
            child: Text(
              'Woo Young Su',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 48,
                fontFamily: 'Red Hat Text',
                fontWeight: FontWeight.w600,
              ),
            )
          ),
          Positioned(
            left: -28,
            top: -77,
            child: Container(
              width: 512,
              height: 1016,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 632,
                    child: Container(
                      width: 512,
                      height: 384,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 100,
                            top: 20,
                            child: Transform(
                              transform: Matrix4.identity()
                                ..translate(0.0, 0.0)
                                ..rotateZ(0.10),
                              child: Container(
                                width: 243.60,
                                height: 239.71,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: Image.asset(
                                            'assets/images/intro_cat.png')
                                        .image,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 51,
                    top: 0,
                    child: Container(
                      width: 461,
                      height: 509,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 171,
                            top: 204,
                            child: Container(
                              width: 171.82,
                              height: 239.37,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: Image.asset(
                                      'assets/images/intro_dog.png')
                                      .image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 71,
            top: 264.13,
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(-0.34),
              child: Container(
                width: 51.70,
                height: 51.70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Image.asset(
                        'assets/images/footprint.png')
                        .image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 35,
            top: 330.13,
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(-0.34),
              child: Container(
                width: 51.70,
                height: 51.70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Image.asset(
                        'assets/images/footprint.png')
                        .image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 263,
            top: 597.13,
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(-0.34),
              child: Container(
                width: 51.70,
                height: 51.70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Image.asset(
                        'assets/images/footprint.png')
                        .image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 317,
            top: 527.13,
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(-0.34),
              child: Container(
                width: 51.70,
                height: 51.70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Image.asset(
                        'assets/images/footprint.png')
                        .image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
