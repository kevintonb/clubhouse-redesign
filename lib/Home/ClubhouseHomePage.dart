import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Home Page',
        home: ClubhouseHomePage(),
      ),
    );
  }
}

class ClubhouseHomePage extends StatefulWidget {
  @override
  _ClubhouseHomePageState createState() => _ClubhouseHomePageState();
}

class _ClubhouseHomePageState extends State<ClubhouseHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Stack(
          children: [
            ListView(
              physics: AlwaysScrollableScrollPhysics(),
              clipBehavior: Clip.none,
              padding: EdgeInsets.only(
                    top: 210.h,
                    bottom: 90.h,
                  ) +
                  EdgeInsets.symmetric(
                    horizontal: 25.w,
                  ),
              shrinkWrap: true,
              children: [
                _chatRoomSection(
                    'Karaoke in Clubhouse 🎤',
                    'Kang Keem, Janice Jeon, Yonza Hyunmi, Jake Lee..',
                    4,
                    31,
                    1),
                _chatRoomSection(
                    'How to build personal brand through Clubhouse 🧃',
                    'Sunny, Tae Heeyong, Jumy Choi',
                    6,
                    191,
                    5),
                _chatRoomSection(
                    'Save the music 🎶',
                    'Kang Keem, Janice Jeon, Yonza Hyunmi, Jake Lee..',
                    3,
                    62,
                    9),
                _chatRoomSection('Let us all meditate 🧘🏻‍♀️',
                    'Sunny, Tae Heeyong, Jumy Choi', 4, 12, 14),

              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  new BoxShadow(
                    color: Colors.white70,
                    offset: Offset(0, 5),
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.w,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Image.asset(
                              'assets/images/email.png',
                              height: 20.h,
                            ),
                            Positioned(
                              top: -8,
                              right: -8,
                              child: Image.asset(
                                'assets/images/magic.png',
                                height: 16.h,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Image.asset(
                          'assets/images/calendar.png',
                          height: 20.h,
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Image.asset(
                              'assets/images/notification.png',
                              height: 20.h,
                            ),
                            Positioned(
                              top: 2,
                              right: -2,
                              child: CircleAvatar(
                                backgroundColor: Colors.green[500],
                                maxRadius: 6,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 30.w,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: new Image.network(
                            'https://randomuser.me/api/portraits/men/1.jpg',
                            width: 35.w,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.w,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '10:00 PM',
                          style: GoogleFonts.roboto(
                            color: Colors.grey[500],
                            fontSize: 13.sp,
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'COMMUNITY CLUB ',
                                  style: GoogleFonts.roboto(
                                      color: Colors.black87,
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1),
                                ),
                                Icon(
                                  Icons.home_filled,
                                  size: 10.h,
                                  color: Colors.green[500],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            Text(
                              'Fast Growth Clubhouse Tips',
                              style: GoogleFonts.roboto(
                                color: Colors.black87,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.w,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '11:00 PM',
                          style: GoogleFonts.roboto(
                            color: Colors.grey[500],
                            fontSize: 13.sp,
                          ),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Text(
                          'Daily Habit of High Performers',
                          style: GoogleFonts.roboto(
                            color: Colors.black87,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25.w,
                    ),
                    child: Divider(
                      color: Colors.grey[300],
                      thickness: 1.0,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Column(
                children: [
                  ClipRRect(
                    child: BackdropFilter(
                      filter: new ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
                      child: new Container(
                        width: MediaQuery.of(context).size.width,
                        height: 55.h,
                        decoration: new BoxDecoration(
                          color: Colors.white.withOpacity(0.5),
                          border: Border(
                            top: BorderSide(
                              width: 1,
                              color: Color(0xffD4D4D4),
                            ),
                          ),
                        ),
                        child: new Center(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 25.w,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                  clipBehavior: Clip.none,
                                  children: [
                                    Positioned(
                                      child: _emptyBalloonInGlass(3),
                                      left: 70.w,
                                    ),
                                    Positioned(
                                      child: _speakersWithoutBalloon(2),
                                      left: 35.w,
                                    ),
                                    _speakersWithoutBalloon(3),
                                  ],
                                ),
                                Spacer(),
                                _glassActions('❌', 16),
                                SizedBox(width: 10.w,),
                                _glassActions('📩', 20),
                                SizedBox(width: 10.w,),
                                _glassActions('✋🏻', 20),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    height: 65.h,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.search,
                            size: 26.h,
                            color: Colors.grey[600],
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 8.h,
                              horizontal: 15.w,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.green[600],
                              borderRadius: BorderRadius.circular(25.0),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.add,
                                  size: 20.h,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text(
                                  'Room',
                                  style: GoogleFonts.roboto(
                                    fontSize: 20.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.person_remove_alt_1_outlined,
                            size: 26.h,
                            color: Colors.grey[600],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _chatRoomSection(String roomName, String speakerNames,
      int speakerCount, int attendantsCount, int imageIndex) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$roomName',
            style: GoogleFonts.roboto(
              color: Colors.black87,
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              _speakersBalloon(imageIndex + 1),
              SizedBox(
                width: 10.w,
              ),
              _speakersBalloon(imageIndex + 2),
              SizedBox(
                width: 5.w,
              ),
              _speakersBalloon(imageIndex + 3),
              SizedBox(
                width: 5.w,
              ),
              _speakersBalloon(imageIndex + 4),
              SizedBox(
                width: 5.w,
              ),
              _emptyBalloon(speakerCount),
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Text(
            '$speakerNames',
            style: GoogleFonts.roboto(
              color: Colors.grey[500],
              fontSize: 15.sp,
              letterSpacing: 0.2,
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Text(
                '$attendantsCount',
                style: GoogleFonts.roboto(
                  color: Colors.grey[500],
                  fontSize: 15.sp,
                  letterSpacing: 0.2,
                ),
              ),
              Icon(
                Icons.person,
                color: Colors.grey[500],
                size: 18.sp,
              ),
              Text(
                ' / ',
                style: GoogleFonts.roboto(
                  color: Colors.grey[500],
                  fontSize: 15.sp,
                  letterSpacing: 0.2,
                ),
              ),
              Text(
                '8 ',
                style: GoogleFonts.roboto(
                  color: Colors.grey[500],
                  fontSize: 15.sp,
                  letterSpacing: 0.2,
                ),
              ),
              Icon(
                Icons.chat,
                color: Colors.grey[500],
                size: 18.sp,
              ),
            ],
          ),
          Divider(
            color: Colors.grey[300],
            thickness: 1.0,
            height: 40.h,
          ),
        ],
      ),
    );
  }

  Widget _speakersBalloon(int index) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(22.0),
          child: new Image.network(
            'https://randomuser.me/api/portraits/men/$index.jpg',
            width: 50.w,
          ),
        ),
        Positioned(
          top: -12,
          right: -8,
          child: Text(
            '💬',
            style: TextStyle(
              fontSize: 22.sp,
            ),
          ),
        ),
      ],
    );
  }

  Widget _speakersWithoutBalloon(int index) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: new Image.network(
        'https://randomuser.me/api/portraits/men/$index.jpg',
        width: 40.w,
      ),
    );
  }

  Widget _emptyBalloon(int count) {
    return Container(
      height: 50.w,
      width: 50.w,
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(22.0),
        border: Border.all(
          color: Color(0xffD4D4D4),
          width: 1.0,
        ),
      ),
      child: Center(
        child: Text(
          '+ $count',
          style: GoogleFonts.roboto(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.grey[500]),
        ),
      ),
    );
  }

  Widget _emptyBalloonInGlass(int count) {
    return Container(
      height: 40.w,
      width: 40.w,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(16.0),
        border: Border.all(
          color: Color(0xffD4D4D4),
          width: 1.0,
        ),
      ),
      child: Center(
        child: Text(
          '+ $count',
          style: GoogleFonts.roboto(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: Colors.grey[500]),
        ),
      ),
    );
  }

  Widget _glassActions(String actionIcon, double actionIconSize) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Color(0xffD4D4D4),
          width: 1,
        )
      ),
      child: CircleAvatar(
        backgroundColor: Colors.white,
        child: Center(
          child: Text(
            '$actionIcon',
            style: TextStyle(
              fontSize: actionIconSize.h
            ),
          )
        ),
      ),
    );
  }
}
