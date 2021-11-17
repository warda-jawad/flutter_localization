import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Text(" About Us"),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Text(
                "MODANISA",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.blue),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0, right: 10),
              child: Text(
                  " It all started with a dream, a vision and a goal: to satisfy the desire of modest Muslim women to wear clothes that fit their lifestyle and modern times."),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                  "The first launch of Modanisa.com was on Mother's Day 2011, in Istanbul, as the first Turkish platform to offer the possibility to buy modest clothes online with such variety."),
            ),
          ],
        ),
      ),
    );
  }
}
