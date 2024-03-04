import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'main.dart';

class HorizontalScreen extends StatelessWidget {
  const HorizontalScreen({super.key});

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
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: SafeArea(
              child: Row(
                children: [
                  SvgPicture.asset(
                    'lib/assets/svg/logo.svg',
                  ),
                  const SizedBox(
                    width: 116.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.all(8.0),
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
                              buildButton(context, 1, 'A', scale: 1.4),
                              buildButton(context, 2, 'B', scale: 1.4),
                              buildButton(context, 3, 'C', scale: 1.4),
                              buildButton(context, 4, 'D', scale: 1.4),
                              buildButton(context, 5, 'E', scale: 1.4),
                              buildButton(context, 6, 'F', scale: 1.4),
                              buildButton(context, 7, 'G', scale: 1.4),
                            ],
                          ),
                          Positioned(
                            left: 42.0,
                            top: 0.0,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: buildLineButton(context, 1, scale: 1.4),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right:83.0),
                                  child: buildLineButton(context, 1, scale: 1.4),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 19.0),
                                  child: buildLineButton(context, 1, scale: 1.4),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 16.0),
                                  child: buildLineButton(context, 1, scale: 1.4),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 15.0),
                                  child: buildLineButton(context, 1, scale: 1.4),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
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
