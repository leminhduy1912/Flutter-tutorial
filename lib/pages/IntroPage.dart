import 'package:flutter/material.dart';
import 'package:flutter_tutorial/components/button.dart';
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
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // shop name
            const SizedBox(height: 25),
            const Text(
              'SUSHI MAN',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              )
            ),
            // icon
            Padding(
                padding: const EdgeInsets.all(50.0),
              child:  Image.asset('lib/images/salmon.png')
            ),
            const SizedBox(height: 25),
            // title

            const Text(
                'THE TASTE OF JAPANESE FOOD',
                style: TextStyle(
                  fontSize: 44,
                  color: Colors.white,
                )
            ),
            const SizedBox(height: 25),
            // sub title

            const Text(
                'Feel the taste of the most popular Japanese food from anywhere and any time ',
                style: TextStyle(

                  height: 2,
                  color: Colors.grey,
                )
            ),
            const SizedBox(height: 25),

            // get started button
            MyButton(text: "Get Started",onTap: (){
              // go to menu page
              Navigator.pushNamed(context, "/menupage");
            },)
          ],
        ),
      ),
    );
  }
}
