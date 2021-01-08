import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebanaapp/Menu.dart';
import 'package:rebanaapp/Rebana1.dart';
import 'package:rebanaapp/Rebana2.dart';

class Rebana21 extends StatelessWidget {
  AudioCache audioCache = AudioCache();
  final play = AudioCache();
  Rebana21({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(667, 375));
    play.loadAll([
      'T2.wav',
      'D1.wav',
      'C1.wav',
      'R2T.wav',
      'R2D.wav',
      'B1.wav',
      'B2.wav',
      'B3.wav',
      'B4.wav'
    ]);
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'Background' (shape)
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: const AssetImage('assets/images/Rebanadual.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Transform.translate(
              offset: Offset(25.w, 20.h),
              child:
                  // Adobe XD layer: 'backButton' (shape)
                  GestureDetector(
                onTap: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Menu()));
                },
                child: Container(
                  width: 50.w,
                  height: 40.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/images/Back.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )),
          Transform.translate(
              offset: Offset(285.w, 20.h),
              child:
                  // Adobe XD layer: 'rebana1Button' (shape)
                  GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Rebana1()));
                },
                child: Container(
                  width: 43.w,
                  height: 65.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/images/buttonR1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )),
          Transform.translate(
              offset: Offset(330.w, 20.h),
              child:
                  // Adobe XD layer: 'rebana2Button' (shape)
                  GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Rebana2()));
                },
                child: Container(
                  width: 46.w,
                  height: 65.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/images/buttonR2.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )),
          Transform.translate(
              offset: Offset(12.w, 42.h),
              child: ButtonTheme(
                minWidth: 300.w,
                height: 300.h,
                child: GestureDetector(
                  onTapDown: (TapDownDetails details){
                    play.play('R2T.wav', mode: PlayerMode.LOW_LATENCY);
                  },
                  child: MaterialButton(
//                  color: Colors.blue,
                    enableFeedback: false,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(200)),
                  ),
                ),
              )),
          Transform.translate(
              offset: Offset(55.w, 85.h),
              child: ButtonTheme(
                minWidth: 210.w,
                height: 210.h,
                child: GestureDetector(
                  onTapDown: (TapDownDetails details){
                    play.play('R2D.wav', mode: PlayerMode.LOW_LATENCY);
                  },
                  child: MaterialButton(
//                  color: Colors.red,
                    enableFeedback: false,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(200)),
                  ),
                ),
              )),
          Transform.translate(
              offset: Offset(356.w, 40.h),
              child: ButtonTheme(
                minWidth: 300.w,
                height: 300.h,
                child: GestureDetector(
                  onTapDown: (TapDownDetails details){
                    play.play('T2.wav', mode: PlayerMode.LOW_LATENCY);
                  },
                  child: MaterialButton(
//                  color: Colors.blue,
                    enableFeedback: false,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(200)),
                  ),
                ),
              )),
          Transform.translate(
              offset: Offset(400.w, 85.h),
              child: ButtonTheme(
                minWidth: 210.w,
                height: 210.h,
                child: GestureDetector(
                  onTapDown: (TapDownDetails detail){
                    play.play('D1.wav', mode: PlayerMode.LOW_LATENCY);
                  },
                  child: MaterialButton(
//                  color: Colors.red,
                    enableFeedback: false,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(200)),
                  ),
                ),
              )),
          Transform.translate(
              offset: Offset(200.w, 310.h),
              child: ButtonTheme(
                minWidth: 280.w,
                height: 280.h,
                child: GestureDetector(
                  onTapDown: (TapDownDetails detail){
                    play.play('C1.wav', mode: PlayerMode.LOW_LATENCY);
                  },
                  child: MaterialButton(

//                  color: Colors.blue,
                    enableFeedback: false,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(200)),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
