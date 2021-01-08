import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebanaapp/Menu.dart';

class Bass extends StatelessWidget {
  AudioCache audioCache = AudioCache();
  final play = AudioCache();
  Bass({
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
                image: const AssetImage('assets/images/Bass.png'),
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
              offset: Offset(80.w, 0.h),
              child: ButtonTheme(
                minWidth: 500.w,
                height: 500.h,
                child: GestureDetector(
                  onTapDown: (TapDownDetails detail){
                    final play = AudioCache();
                    play.play('B1.wav', mode: PlayerMode.LOW_LATENCY);
                  },
                  child: MaterialButton(
//                  color: Colors.red,
                    enableFeedback: false,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(130),
                            bottomRight: Radius.circular(130),
                            topLeft: Radius.circular(130),
                            topRight: Radius.circular(130))),
                  ),
                ),
              )),
          Transform.translate(
              offset: Offset(120.w, 0.h),
              child: ButtonTheme(
                minWidth: 420.w,
                height: 400.h,
                child: GestureDetector(
                  onTapDown: (TapDownDetails details){
                    play.play('B2.wav', mode: PlayerMode.LOW_LATENCY);
                  },
                  child: MaterialButton(
//                  color: Colors.green,
                    enableFeedback: false,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(130),
                            bottomRight: Radius.circular(130),
                            topLeft: Radius.circular(130),
                            topRight: Radius.circular(130))),
                  ),
                ),
              )),
          Transform.translate(
              offset: Offset(180.w, 0.h),
              child: ButtonTheme(
                minWidth: 300.w,
                height: 400.h,
                child: GestureDetector(
                  onTapDown: (TapDownDetails detail){
                    //                    final play = AudioCache();
                    play.play('B3.wav', mode: PlayerMode.LOW_LATENCY);
                  },
                  child: MaterialButton(

//                  color: Colors.blueAccent,
                    enableFeedback: false,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(130),
                            bottomRight: Radius.circular(130),
                            topLeft: Radius.circular(130),
                            topRight: Radius.circular(130))),
                  ),
                ),
              )),
          Transform.translate(
              offset: Offset(235.w, 60.h),
              child: ButtonTheme(
                minWidth: 190.w,
                height: 250.h,
                child: GestureDetector(
                  onTapDown: (TapDownDetails detail){
                    //                    final play = AudioCache();
                    play.play('B4.wav', mode: PlayerMode.LOW_LATENCY);
                  },
                  child: MaterialButton(
//                  color: Colors.yellowAccent,
                    enableFeedback: false,
                    highlightColor: Colors.transparent,
                    splashColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(130),
                            bottomRight: Radius.circular(130),
                            topLeft: Radius.circular(130),
                            topRight: Radius.circular(130))),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
