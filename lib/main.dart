import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(String file) {
    final player = AudioPlayer();
    player.setVolume(1.0);
    player.play(AssetSource(file));
  }

  final ButtonStyle RedButtonStyle = TextButton.styleFrom(
    backgroundColor: Colors.red,
    minimumSize: const Size(88, 36), // might need to change this
    padding: const EdgeInsets.symmetric(horizontal: 16.0), // might need to change this
    shape: const RoundedRectangleBorder(
      // might need to change this
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );
  final ButtonStyle YellowButtonStyle = TextButton.styleFrom(
    backgroundColor: Colors.yellow,
    minimumSize: const Size(88, 36), // might need to change this
    padding: const EdgeInsets.symmetric(horizontal: 16.0), // might need to change this
    shape: const RoundedRectangleBorder(
      // might need to change this
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );
  final ButtonStyle GreenButtonStyle = TextButton.styleFrom(
    backgroundColor: Colors.green,
    minimumSize: const Size(88, 36), // might need to change this
    padding: const EdgeInsets.symmetric(horizontal: 16.0), // might need to change this
    shape: const RoundedRectangleBorder(
      // might need to change this
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );
  final ButtonStyle BlueButtonStyle = TextButton.styleFrom(
    backgroundColor: Colors.blue,
    minimumSize: const Size(88, 36), // might need to change this
    padding: const EdgeInsets.symmetric(horizontal: 16.0), // might need to change this
    shape: const RoundedRectangleBorder(
      // might need to change this
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );
  final ButtonStyle PurpleButtonStyle = TextButton.styleFrom(
    backgroundColor: Colors.purple,
    minimumSize: const Size(88, 36), // might need to change this
    padding: const EdgeInsets.symmetric(horizontal: 16.0), // might need to change this
    shape: const RoundedRectangleBorder(
      // might need to change this
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );
  final ButtonStyle OrangeButtonStyle = TextButton.styleFrom(
    backgroundColor: Colors.orange,
    minimumSize: const Size(88, 36), // might need to change this
    padding: const EdgeInsets.symmetric(horizontal: 16.0), // might need to change this
    shape: const RoundedRectangleBorder(
      // might need to change this
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );
  final ButtonStyle TealButtonStyle = TextButton.styleFrom(
    backgroundColor: Colors.teal,
    minimumSize: const Size(88, 36), // might need to change this
    padding: const EdgeInsets.symmetric(horizontal: 16.0), // might need to change this
    shape: const RoundedRectangleBorder(
      // might need to change this
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
            Expanded(
              child: TextButton(
                  style: RedButtonStyle,
                  onPressed: () {
                    playSound('note1.wav');
                  }),
            ),
            Expanded(
              child: TextButton(
                  style: OrangeButtonStyle,
                  onPressed: () {
                    playSound('note2.wav');
                  }),
            ),
            Expanded(
              child: TextButton(
                  style: YellowButtonStyle,
                  onPressed: () {
                    playSound('note3.wav');
                  }),
            ),
            Expanded(
              child: TextButton(
                  style: GreenButtonStyle,
                  onPressed: () {
                    playSound('note4.wav');
                  }),
            ),
            Expanded(
              child: TextButton(
                  style: TealButtonStyle,
                  onPressed: () {
                    playSound('note5.wav');
                  }),
            ),
            Expanded(
              child: TextButton(
                  style: BlueButtonStyle,
                  onPressed: () {
                    playSound('note6.wav');
                  }),
            ),
            Expanded(
              child: TextButton(
                  style: PurpleButtonStyle,
                  onPressed: () {
                    playSound('note7.wav');
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
