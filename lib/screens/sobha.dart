import 'package:flutter/material.dart';



class Sobha extends StatefulWidget {
  const Sobha({super.key});

  @override
  State<Sobha> createState() => _SobhaState();
}

class _SobhaState extends State<Sobha> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          // appBar: AppBar(
          //   title:  Text('تسبيح'),
          //
          // ),
          body: Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            width: MediaQuery
                .of(context)
                .size
                .width,
              decoration: BoxDecoration(
                image:DecorationImage(
                  image:AssetImage('images/downloadbac.png'),fit:BoxFit.cover ,
                ),

              ),
            child: Center(
              child: Column(
                  children: [
                    Center(
                      child: Text(
                        'vvvvvvvvvvvvvvvvvvvvv',
                        style: TextStyle(fontSize: 25),
                        textAlign: TextAlign.center,),
                    )
                  ],
              ),
            ),




          ),
        )
    );
  }
}


