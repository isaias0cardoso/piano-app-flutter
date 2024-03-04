import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:piano_app_flutter/vertical_screen.dart';
import 'horizontal_screen.dart';

void main() => runApp(const PianoApp());

//Button Black
Widget buildLineButton(BuildContext context, int soundNumber,
    {double scale = 1.0}) {
  return SizedBox(
    height: 102 * scale,
    child: IconButton(
      padding: EdgeInsets.zero,
      onPressed: () => playSound(soundNumber),
      icon: const Image(
        image: AssetImage('lib/assets/images/teclado_H.png'),
      ),
    ),
  );
}

//Button White
Widget buildButton(BuildContext context, int soundNumber, String letter,
    {double scale = 1.0}) {
  return SizedBox(
    height: 176 * scale,
    child: IconButton(
      padding: EdgeInsets.zero,
      onPressed: () => playSound(soundNumber),
      icon: Image(
        image: AssetImage('lib/assets/images/teclado_$letter.png'),
      ),
    ),
  );
}

//Audio Player
void playSound(int soundNumber) {
  final audioPlayer = AssetsAudioPlayer.newPlayer();
  audioPlayer.open(
    Audio('lib/assets/sounds/note$soundNumber.wav'),
  );
}

class PianoApp extends StatelessWidget {
  const PianoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrientationBuilder(builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return const VerticalScreen();
        } else {
          return const HorizontalScreen();
        }
      }),
    );
  }
}

