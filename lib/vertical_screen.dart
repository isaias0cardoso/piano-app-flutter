import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'main.dart';

class VerticalScreen extends StatelessWidget {
  const VerticalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('lib/assets/images/background.jpg'),
          )),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'lib/assets/svg/logo.svg',
                  ),
                  const SizedBox(
                    height: 116.0,
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(16.0),
                    child: const Text(
                      'Click on the piano to play sounds',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildButton(context, 1, 'A'),
                          buildButton(context, 2, 'B'),
                          buildButton(context, 3, 'C'),
                          buildButton(context, 4, 'D'),
                          buildButton(context, 5, 'E'),
                          buildButton(context, 6, 'F'),
                          buildButton(context, 7, 'G'),
                        ],
                      ),
                      Positioned(
                        top: 0.0,
                        child: Row(
                          children: [
                            buildLineButton(context, 1),
                            buildLineButton(context, 1),
                            const SizedBox(
                              width: 48.0,
                            ),
                            buildLineButton(context, 1),
                            buildLineButton(context, 1),
                            buildLineButton(context, 1),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
