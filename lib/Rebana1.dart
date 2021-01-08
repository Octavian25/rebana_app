import 'dart:developer';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebanaapp/Menu.dart';
import 'package:rebanaapp/Rebana2.dart';
import 'package:rebanaapp/Rebana21.dart';

class Rebana1 extends StatelessWidget {
  AudioCache audioCache = AudioCache();
  final play = AudioCache();
  Rebana1({
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
    ]);
    return Scaffold(
      backgroundColor: const Color(0xff000000),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(0.5.w, 0.5.h),
            child:
                // Adobe XD layer: 'Backgorund' (shape)
                Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage('assets/images/Rebana1.png'),
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
              offset: Offset(535.w, 13.h),
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
              offset: Offset(606.w, 13.h),
              child:
                  // Adobe XD layer: 'rebana2Button' (shape)
                  GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Rebana2()));
                },
                child: Container(
                  width: 36.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('assets/images/buttonR2.png'),
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
                  onTapDown: (TapDownDetails detials){
                    play.play('T2.wav', mode: PlayerMode.LOW_LATENCY);
                  },
                  child: MaterialButton(
                    enableFeedback: false,
//                  color: Colors.blue,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
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
                    play.play('D1.wav', mode: PlayerMode.LOW_LATENCY);
                  },
                  child: MaterialButton(
                    enableFeedback: false,
//                  color: Colors.red,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(200)),
                  ),
                ),
              )),
          Transform.translate(
              offset: Offset(-80.w, 280.h),
              child: ButtonTheme(
                minWidth: 190.w,
                height: 190.h,
                child: GestureDetector(
                  onTapDown: (TapDownDetails detail){
                    play.play('C1.wav', mode: PlayerMode.LOW_LATENCY);
                  },
                  child: MaterialButton(
                    enableFeedback: false,
//                  color: Colors.blue,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(200)),
                  ),
                ),
              )),
          Transform.translate(
              offset: Offset(570.w, 280.h),
              child: ButtonTheme(
                minWidth: 190.w,
                height: 190.h,
                child: GestureDetector(
                  onTapDown: (TapDownDetails detail){
                    play.play('C1.wav', mode: PlayerMode.LOW_LATENCY);
                  },
                  child: MaterialButton(

                    enableFeedback: false,
//                  color: Colors.blueAccent,
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
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
