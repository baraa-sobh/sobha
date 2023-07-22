import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        decoration: BoxDecoration(

          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/backg.jpg')
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
                side: BorderSide(
                  width: 3,
                  color: Colors.teal
                )
              ),
              child: Text('تطبيق\n سبحة الأذكار',
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,

              ),
            )
          ],
        ),
      ),
    );
  }
}
