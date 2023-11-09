import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/animation/splashScreenShopping.json',
            ),
            Text(
              'MINIMAL SHOP',
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 3),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Made with Flutter',
              style: TextStyle(letterSpacing: 3, color: Colors.grey[400]),
            ),
            SizedBox(
              height: 75,
            ),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/home-screen');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),

                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Lottie.asset('assets/animation/splashScreenArrow.json',height: 40),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Shop now',
              style: TextStyle(letterSpacing: 3, color: Colors.grey[400]),
            ),
          ],
        ),
      ),
    );
  }
}
