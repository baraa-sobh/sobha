import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String? title;

  HomeScreen({this.title});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _count = 0;
  String _alzker = 'أستغفر الله';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text(widget.title ?? 'home'),
          actions: [
            IconButton(onPressed: (){
              Navigator.pushNamed(context, '/about_screen');
            }, icon: Icon(Icons.info)),
            PopupMenuButton<int>(
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text('أستغفر الله'),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text('الحمد لله'),
                    value: 2,
                  ),
                  PopupMenuItem(
                    child: Text('الله أكبر'),
                    value: 3,
                  )
                ];
              },
              onSelected: (int selectedItem) {
                switch (selectedItem) {
                  case 1:
                    changeContent('أستغفر الله');
                    break;
                  case 2:
                    changeContent('الحمد لله');

                    break;

                  case 3:
                    changeContent('الله أكبر');

                    break;
                }
              },
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            //ctral + alt + m =fun
            incrementCounter();
          },
          child: Icon(Icons.add),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('images/soobha.jpg'),
                radius: 50,
              ),
              SizedBox(
                height: 30,
              ),
              Card(
                //بتخلي الكود
                clipBehavior: Clip.antiAlias,

                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 5,
                color: Colors.white,

                margin: EdgeInsetsDirectional.only(
                    // start: 30,
                    // end: 30,
                    bottom: 20),
                child: Row(
                  children: [
                    Expanded(
                      //هي الي يتخلي النصين متباعدين
                      child: Text(
                        _alzker,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(color: Colors.blue, boxShadow: [
                        BoxShadow(
                            offset: Offset(10, 0),
                            color: Colors.black.withOpacity(0.14),
                            blurRadius: 6)
                      ]),
                      child: Padding(
                        padding: EdgeInsets.only(top: 7),
                        child: Text(
                          _count.toString(),
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () {
                      incrementCounter();
                    },
                    child: Text('تسبيح'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        minimumSize: Size(0, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(0),
                          bottomLeft: Radius.circular(0),
                        ))),
                  )),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _count = 0;
                      });
                    },
                    child: Text('الرجوع'),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(0, 40),
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topRight: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(0),
                          bottomLeft: Radius.circular(10),
                        ))),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void incrementCounter() {
        setState(() {
      ++_count;
    });
  }

  void changeContent(String content) {
    if (_alzker != content) {
      setState(() {
        _alzker = content;
        _count = 0;
      });
    }
  }
}
