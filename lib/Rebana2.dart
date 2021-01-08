import 'dart:developer';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebanaapp/Menu.dart';
import 'package:rebanaapp/Rebana1.dart';
import 'package:rebanaapp/Rebana21.dart';

class Rebana2 extends StatelessWidget {
  AudioCache audioCache = AudioCache();
  final play = AudioCache();
  Rebana2({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(667, 375));
    play.loadAll(['T2.wav', 'D1.wav', 'C1.wav', 'R2T.wav', 'R2D.wav']);
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(1.5.w, 0.5.h),
            child:
                // Adobe XD layer: 'Backgorund' (shape)
                Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/Rebana2.png'),
                  fit: BoxFit.fill,
                ),
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
              offset: Offset(546.w, 22.h),
              child:
                  // Adobe XD layer: 'rebanadoubleButton' (shape)
                  GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Rebana21()));
                },
                child: Container(
                  width: 50.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image:
                          const AssetImage('assets/images/buttonRdouble.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )),
          Transform.translate(
              offset: Offset(615.w, 22.h),
              child:
                  // Adobe XD layer: 'rebana1Button' (shape)
                  GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Rebana1()));
                },
                child: Container(
                  width: 33.w,
                  height: 51.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/images/buttonR1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )),
          Transform.translate(
              offset: Offset(150.w, 0.h),
              child: ButtonTheme(
                minWidth: 380.w,
                height: 380.h,
                child: GestureDetector(
                  onTapDown: (TapDownDetails detail){
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
              offset: Offset(190.w, 45.h),
              child: ButtonTheme(
                minWidth: 280.w,
                height: 280.h,
                child: GestureDetector(
                  onTapDown: (TapDownDetails detail){
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
              offset: Offset(-70.w, 280.h),
              child: ButtonTheme(
                minWidth: 190.w,
                height: 190.h,
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
          Transform.translate(
              offset: Offset(585.w, 280.h),
              child: ButtonTheme(
                minWidth: 190.w,
                height: 190.h,
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
              ))
        ],
      ),
    );
  }
}
