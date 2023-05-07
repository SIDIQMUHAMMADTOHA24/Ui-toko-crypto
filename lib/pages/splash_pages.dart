import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'home_pages.dart';

class SplashPages extends StatelessWidget {
  const SplashPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.98),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
        child: Center(
          child: Column(children: [
            SizedBox(
                width: 200,
                height: 200,
                child: Image.asset(
                  'asset/image/smart_people.png',
                  fit: BoxFit.cover,
                )),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Buy & Sell Crypto \nInstantly',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'It\'s easier to make cryptocurrency \ntransactions in your hand, wherever and \nwhenever. Get the lowest fees ever!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
        
                  color: Colors.grey.shade600),
            ),
            const SizedBox(
              height: 35,
            ),
            GestureDetector(
              onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return HomePages();
                },
              )),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(30)),
                child: const Center(
                    child: Text(
                  'Get Started',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                )),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Browse Asserts',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15,
                  fontWeight: FontWeight.w700),
            )
          ]),
        ),
      ),
    );
  }
}
