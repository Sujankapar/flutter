import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlay extends StatefulWidget {
  const AudioPlay({super.key, required this.title});


  final String title;

  @override
  State<AudioPlay> createState() => _PlayAudioState();
}

class _PlayAudioState extends State<AudioPlay> {

  final player = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;

  String formatTime(int seconds) {
    return '${(Duration(seconds: seconds))}'.split('.')[0].padLeft(8, '0');
  }

  @override
  void initState() {
    super.initState();

    player.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });

    player.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    player.onPositionChanged.listen((newPosition) {
      setState(() {
        position = newPosition;
      });
    });
  }
  _skipForward() {
    player.seek(Duration (seconds: 10));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0, 0,30,0),
              width: 200,
              height: 340,
              child: Image.asset('assets/audioplay.jpeg'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10,),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 25,
                  child: IconButton(
                    icon:const Icon(Icons.skip_previous),
                    onPressed: (){},
                  ),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 25,
                  child: IconButton(
                    icon:const Icon(Icons.settings_backup_restore),
                    onPressed: (){},
                  )
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 25,
                  child: IconButton(
                    icon: Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,
                    ),
                    onPressed: (){
                      if(isPlaying)
                      {
                        player.pause();
                      }
                      else{
                        player.play(AssetSource('new.mp3'));
                      }
                    },
                  ),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 25,
                  child: IconButton(
                    icon:const Icon(Icons.stop),
                    onPressed: (){
                      player.stop();
                    },
                  ),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 25,
                  child: IconButton(
                    icon:const Icon(Icons.forward_10_outlined),
                    onPressed: _skipForward,
                  ),
                ),
                SizedBox(width: 10,),
                CircleAvatar(
                  backgroundColor: Colors.black,
                  radius: 25,
                  child: IconButton(
                    icon:const Icon(Icons.skip_next),
                    onPressed: (){},
                  ),
                ),
              ],
            ),
            Slider(
              activeColor: Colors.black,
              inactiveColor: Colors.black12,
              thumbColor: Colors.black38,
              min: 0,
              max: duration.inSeconds.toDouble(),
              value: position.inSeconds.toDouble(),

              onChanged: (value) {
                final position = Duration(seconds: value.toInt());
                player.seek(position);
                player.resume();
              },
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(formatTime(position.inSeconds)),
                  Text(formatTime((duration - position).inSeconds)),
                ],
              ),
            ),
          ],
        ),
        ),
    );
  }
}
