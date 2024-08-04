import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color.fromARGB(255, 138, 60, 55),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            const SizedBox(height: 25),
            const Text(
              'This is Google Fonts',
              style: TextStyle(
                fontSize: 28,
                color: Colors.white,
              )
            ),
            // shop name
            // icon
            Padding(
                padding: const EdgeInsets.all(50.0),
              child:  Image.asset('lib/images/salmon.png')
            )

            // title
            // get started button
          ],
        ),
      ),
    );
  }
}
