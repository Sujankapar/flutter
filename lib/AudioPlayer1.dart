import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayer2 extends StatefulWidget {
  const AudioPlayer2({Key? key,}) : super(key: key);
  @override
  _AudioPlayer2State createState() => _AudioPlayer2State();
}
class _AudioPlayer2State extends State<AudioPlayer2> {
  late AudioPlayer audioPlayer;
  bool isPlaying = false;
  Duration duration = Duration();
  Duration position = Duration();
  final String audioUrl='https://cdn.pixabay.com/download/audio/2021/08/17/audio_bf243e9038.mp3?filename=backwards-morphing-tesseract-30sec-challenge-7430.mp3';
  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    audioPlayer.onDurationChanged.listen((Duration d) {
      setState(() {
        duration = d;
      });
    });
    audioPlayer.onPositionChanged.listen((Duration p) {
      setState(() {
        position = p;
      });
    });
  }

  @override
  void dispose() {
    audioPlayer.release();
    audioPlayer.dispose();
    super.dispose();
  }

  void play(){
    int result = audioPlayer.play as int ;
    if (result == 1) {
      setState(() {
        isPlaying = true;
      });
    }
  }

  void pause(){
    int result = audioPlayer.pause() as int;
    if (result == 1) {
      setState(() {
        isPlaying = false;
      });
    }
  }

  void stop(){
    int result = audioPlayer.stop() as int;
    if (result == 1) {
      setState(() {
        isPlaying = false;
        position = Duration();
      });
    }
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${duration.inHours > 0 ? twoDigits(duration.inHours) + ':' : ''}$twoDigitMinutes:$twoDigitSeconds";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Audio Player'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _formatDuration(position),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 16),
            Slider(
              value: position.inSeconds.toDouble(),
              min: 0.0,
              max: duration.inSeconds.toDouble(),
              onChanged: (double value) {
                audioPlayer.seek(Duration(seconds: value.toInt()));
              },
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: isPlaying ? null : play,
                  iconSize: 48,
                  icon: Icon(Icons.play_arrow),
                  color: Colors.green,
                ),
                IconButton(
                  onPressed: isPlaying ? pause : null,
                  iconSize: 48,
                  icon: Icon(Icons.pause),
                  color: Colors.blue,
                ),
                IconButton(
                  onPressed: isPlaying ? stop : null,
                  iconSize: 48,
                  icon: Icon(Icons.stop),
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}