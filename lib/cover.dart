import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pesan_copi/screen/bottom_navbar.dart';
import 'package:pesan_copi/theme.dart';

class Cover extends StatelessWidget {
  const Cover({super.key});

  @override
  Widget build(BuildContext context) {
    Widget imagecover() {
      return Container(
        decoration: BoxDecoration(),
        child: Image.asset(
          'assets/images/cover.png',
          height: MediaQuery.sizeOf(context).height * 3 / 5,
          fit: BoxFit.cover,
        ),
      );
    }

    Widget timeline() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            Text(
              'Coffee so good, your taste buds will love it.',
              style: semiboldtext32.copyWith(color: whiteColor),
              textAlign: TextAlign.center,
              maxLines: 3,
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'The best grain, the finest roast, the powerful flavor.',
                style: reguler14.copyWith(color: greytextCover),
                textAlign: TextAlign.center,
                maxLines: 2,
              ),
            )
          ],
        ),
      );
    }

    Widget button() {
      return InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => BottomNavBar()));
        },
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30, vertical: 24),
          height: 62,
          decoration: BoxDecoration(
              color: brownColor, borderRadius: BorderRadius.circular(16)),
          child: Center(
            child: Text(
              'Get Started',
              style: semiboldtext16.copyWith(color: whiteColor),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xff000000),
      body: Column(
        children: [imagecover(), timeline(), button()],
      ),
    );
  }
}
