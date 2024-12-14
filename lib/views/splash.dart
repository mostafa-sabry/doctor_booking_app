import 'package:doctor_booking_app/views/home.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to HomePage after 30 seconds
    Future.delayed(const Duration(seconds: 30), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Image(
                  image: AssetImage('assets/logo1.jpeg'),
                  height: 60,
                  width: 60,
                ),
                Spacer(),
                Image(
                  image: AssetImage('assets/logo2.jpeg'),
                  height: 60,
                  width: 60,
                ),
                Spacer(),
                Image(
                  image: AssetImage('assets/logo3.jpeg'),
                  height: 60,
                  width: 60,
                ),
              ],
            ),
            SizedBox(
              height: 160,
            ),
            Text(
              'تطبيقات الجوال ',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              'تحت اشرف ',
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  ' د  / هبه عثمان',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                Spacer(),
                Text(
                  'د / اسلام قنديل',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                )
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              'حجز مواعيد الاطباء',
              style: TextStyle(
                fontSize: 24,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
