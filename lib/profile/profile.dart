import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:uniryde/settings/settings.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(fontSize: 4.h)),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          child: Column(
            children: [
              const _Header(),
              SizedBox(height: 2.h),
              const _Trips(),
              SizedBox(height: 2.h),
              const _TotalTrips(),
              SizedBox(height: 4.h),
              const _Navigation(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: const AssetImage('assets/hottie.jpg'),
          radius: 50.sp,
        ),
        SizedBox(width: 4.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Aryan Khanna',
                style: GoogleFonts.nunitoSans(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                )),
            SizedBox(height: 1.h),
            const Text('4.72'),
            const Text('Recent Trips'),
          ],
        ),
      ],
    );
  }
}

class _Trips extends StatelessWidget {
  const _Trips();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 1.h),
        child: Column(
          children: [
            const _TripsCard(
              title: 'Bennett------>Botanical Metro',
              description: 'Good Experience',
              icon: Icons.check,
            ),
            SizedBox(height: 2.h),
            const _TripsCard(
              title: 'Bennett------>PariChowk',
              description: 'Good Experience',
              icon: Icons.check,
            ),
          ],
        ),
      ),
    );
  }
}

class _TripsCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const _TripsCard({
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        SizedBox(width: 4.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: GoogleFonts.nunitoSans(
                  fontSize: 2.h,
                  fontWeight: FontWeight.bold,
                )),
            Text(description),
          ],
        ),
      ],
    );
  }
}

class _TotalTrips extends StatelessWidget {
  const _TotalTrips();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
      child: Row(
        children: [
          const Icon(Icons.directions_car),
          SizedBox(width: 4.w),
          Text('Total Trips',
              style: GoogleFonts.nunitoSans(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              )),
          SizedBox(width: 4.w),
          Text('19',
              style: GoogleFonts.nunitoSans(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    );
  }
}

class _Navigation extends StatelessWidget {
  const _Navigation();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.all(5.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            alignment: Alignment.bottomLeft,
            icon: const Icon(Icons.settings),
            iconSize: 5.h,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UnirydeAccountPage()),
              );
            },
          ),
          Text(
            'Settings',
            style: GoogleFonts.nunitoSans(
              fontSize: 3.h,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            icon: const Icon(Icons.question_answer),
            iconSize: 5.h,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const UnirydeAccountPage()),
              );
            },
          ),
          Text(
            'FAQs',
            style: GoogleFonts.nunitoSans(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
