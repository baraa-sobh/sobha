import 'package:flutter/material.dart';
import 'package:sobha_azkar/screens/home_screen.dart';

class Launchscreen extends StatefulWidget {
  const Launchscreen({super.key});

  @override
  State<Launchscreen> createState() => _LaunchscreenState();
}

class _LaunchscreenState extends State<Launchscreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context)=>HomeScreen(title: 'سبحة الأذكار',),),);
    });


  }

  @override
  Widget build(BuildContext context) {
    return  Directionality(
      //erorr
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body:Stack(
          children: [
            Image(
              image: NetworkImage('https://5alfiat.com/wp-content/uploads/2023/03/خلفيات-دينية-للكتابة-عليها11.jpeg'),
              height: double.infinity,
              fit: BoxFit.cover,
            ),
           Center(
             child: FittedBox(

               fit: BoxFit.cover,
               child: Container(color: Colors.white,
                 child: Text(
                   'سبحة الأذكار',
                   style: TextStyle(
                       color: Colors.teal,
                       fontSize: 24,
                       fontWeight: FontWeight.bold),
                 ),
               ),
             ),

           )
           //Image(image: I) Image.network('https://5alfiat.com/wp-content/uploads/2023/03/خلفيات-دينية-للكتابة-عليها11.jpeg',),)
         
          ],
        ),
      ),
    );
  }
}
