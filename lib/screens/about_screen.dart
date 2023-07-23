import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  late TapGestureRecognizer _tapGestureRecognizer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tapGestureRecognizer = TapGestureRecognizer();
    // _tapGestureRecognizer = TapGestureRecognizer()..onTap = onNameTap();
    _tapGestureRecognizer.onTap = onNameTap;

  }

  void onNameTap()=>print(" on tap click");
  @override
  Widget build(BuildContext context) {

    ModalRoute.of(context)?.settings.arguments;
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar:AppBar(

          //تفعيل سهم الرجوع او تعطيله
         // automaticallyImplyLeading: false,
          automaticallyImplyLeading: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
          ),

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
              ),
              RichText(
                textAlign: TextAlign.center,
                  text: TextSpan(
                text: 'GGateWay ',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
                    children: [
                      TextSpan(
                          recognizer: _tapGestureRecognizer,
                          text: 'Student Name',
                        style: TextStyle(
                          color: Colors.blue,

                        )
                      )
                    ]
              ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
