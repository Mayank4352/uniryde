import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SettHome extends StatelessWidget {
  const SettHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ARYAN KHANNA',
          style: GoogleFonts.hammersmithOne(
            fontSize: 32.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 5.sp,
            backgroundImage: const AssetImage('assetshottie.jpg'),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 3.sp,
            width: 15.sp,
            child: Container(
              alignment: AlignmentDirectional.topCenter,
            ),
          )
        ],
      ),
    );
  }
}
