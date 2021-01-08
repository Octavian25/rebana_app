import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebanaapp/Bass.dart';
import 'package:rebanaapp/Rebana1.dart';
import 'package:rebanaapp/Info.dart';

class Menu extends StatelessWidget {
  Menu({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: Size(667, 375));
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
                  image: const AssetImage('assets/images/Menu.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Transform.translate(
              offset: Offset(616.w, 10.h),
              child: ButtonTheme(
                minWidth: 45.w,
                height: 45.h,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Info()));
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
              )),
          Transform.translate(
              offset: Offset(135.w, 130.h),
              child: ButtonTheme(
                minWidth: 200.w,
                height: 200.h,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Rebana1()));
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
              )),
          Transform.translate(
              offset: Offset(380.w, 90.h),
              child: ButtonTheme(
                minWidth: 200.w,
                height: 240.h,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Bass()));
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                ),
              ))
        ],
      ),
    );
  }
}
