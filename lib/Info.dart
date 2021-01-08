import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rebanaapp/Bass.dart';
import 'package:rebanaapp/Menu.dart';
import 'package:rebanaapp/Rebana1.dart';

class Info extends StatelessWidget {
  Info({
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
                  image: const AssetImage('assets/images/info.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Transform.translate(
              offset: Offset(450.w, 260.h),
              child: ButtonTheme(
                minWidth: 85.w,
                height: 30.h,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Menu()));
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
