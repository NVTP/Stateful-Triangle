import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class TrianglePage extends StatefulWidget {
  @override
  _TrianglePageState createState() => _TrianglePageState();
}

class _TrianglePageState extends State<TrianglePage> {
  TextEditingController baseCtrl = TextEditingController();
  TextEditingController heightCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Triangle....',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Triangle Cal'),
          backgroundColor: Colors.pinkAccent,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 25.0,
                ),
                Image.asset(
                  'assets/images/triangle.png',
                  fit: BoxFit.fill,
                  height: 200.0,
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, bottom: 10.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: baseCtrl,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.chevron_right,
                      ),
                      labelText: 'Base',
                      hintText: 'Input Base',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                      ),
                      suffixText: 'cm.',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, right: 25.0, bottom: 15.0),
                  child: TextField(
                    controller: heightCtrl,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      icon: Icon(
                        Icons.chevron_right,
                      ),
                      labelText: 'Height',
                      hintText: 'Input Height',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                      ),
                      suffixText: 'cm.',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 50.0,
                          child: RaisedButton(
                            onPressed: () {
                              //TODO code here.......
//                              debugPrint('Base : ' + baseCtrl.text);
//                              debugPrint('Height : ' + heightCtrl.text);
                              setState(() {
                                
                              });
                            },
                            child: Text(
                              'Calculate',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                            color: Colors.pinkAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                15.0 * 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 25.0,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          height: 50.0,
                          child: RaisedButton(
                            onPressed: () {
                              //TODO code here.......
                              baseCtrl.clear();
                              heightCtrl.clear();
                            },
                            child: Text(
                              'Clear',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.white,
                              ),
                            ),
                            color: Colors.redAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                15.0 * 2,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Triangle Area',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,
                  ),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: Colors.amber,
                          height: 150.0,
                          child: Center(
                            child: Text(
                              '0.00',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
