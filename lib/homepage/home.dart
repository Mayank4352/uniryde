import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:uniryde/homepage/background.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.all(3.h),
                  child: Icon(Icons.cloud, color: Colors.blue),
                ),
                SizedBox(width: 5),
                Text('28°', style: TextStyle(fontSize: 18)),
                Spacer(),
                Padding(
                  padding: EdgeInsets.all(4.h),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/hottie.jpg'),
                    radius: 5.h,
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Where to?',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton.icon(
                              icon: Icon(Icons.search),
                              label: Text('Search'),
                              onPressed: () {},
                            ),
                            TextButton.icon(
                              icon: Icon(Icons.add),
                              label: Text('Create'),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Divider(height: 1, color: Colors.grey[300]),
                        ListTile(
                          leading: Icon(Icons.radio_button_off),
                          title: Text('From Location'),
                          trailing: Text('Current',
                              style: TextStyle(color: Colors.grey)),
                        ),
                        Divider(height: 1, color: Colors.grey[300]),
                        ListTile(
                          leading: Icon(Icons.radio_button_off),
                          title: Text('To Location'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // BackgroundWidget(),
            Builder(builder: (context) {
              return BookingCard(
                slotTime: '8:00 A.M',
                locationFrom: 'DLF Mall Of Noida',
                locationTo: 'Bennett University',
                seatsLeft: 2,
                date: '22/03/2024',
                distance: 47,
              );
            }),
            BookingCard(
              slotTime: '12:00 P.M',
              locationFrom: 'Bennett University',
              locationTo: 'Indira Gandhi Airport',
              seatsLeft: 4,
              date: '22/03/2024',
              distance: 47,
            ),
            BookingCard(
              slotTime: '3:00 P.M',
              locationFrom: 'Bennett University',
              locationTo: 'DLF Mall Of Noida',
              seatsLeft: 1,
              date: '22/03/2024',
              distance: 47,
            ),
          ],
        );
      }),
    );
  }
}

class BookingCard extends StatelessWidget {
  final String slotTime;
  final String locationFrom;
  final String locationTo;
  final int seatsLeft;
  final String date;
  final int distance;

  BookingCard({
    required this.slotTime,
    required this.locationFrom,
    required this.locationTo,
    required this.seatsLeft,
    required this.date,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.pink[50],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Slot closes by $slotTime',
                  style: TextStyle(color: Colors.grey)),
              Text(locationFrom,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text('$distance KM', style: TextStyle(color: Colors.grey)),
              Text(locationTo, style: TextStyle(color: Colors.grey)),
            ],
          ),
          Spacer(),
          Column(
            children: [
              Text('Date', style: TextStyle(color: Colors.grey)),
              Text(date, style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 10),
              Text('$seatsLeft Seats left',
                  style: TextStyle(color: Colors.red)),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                child: Text('Book'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
