import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.h,
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color.fromARGB(255, 253, 14, 66),
                Color.fromARGB(255, 195, 15, 48)
              ]),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.h),
              bottomRight: Radius.circular(10.h))),
    );
  }
}
