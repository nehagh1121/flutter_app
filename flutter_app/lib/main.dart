import 'package:flutter/material.dart';

import 'attendance.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My application',
      home: Home(),

    );
  }
}
class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }

}
class _HomeState extends State<Home> {

  int _currentIndex = 0;
  List<Widget> _widgets = [screen1(), attendance(), screen3()];
  tapped(int tappedIndex) {
    setState(() {_currentIndex = tappedIndex;});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          /*title: Text('Austin Ronald'),*/
          title: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Austin Ronald",
                  style: TextStyle(color: Colors.white, fontSize: 18.0),
                ),
                Text(
                  "Developer",
                  style: TextStyle(color: Colors.white70, fontSize: 12.0),
                ),
              ]
          ),
        leading: Icon(
        Icons.arrow_back,
      ),
      ),
      body:
      _widgets[_currentIndex],


      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.payment),title: Text('Payroll')),
          BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('Attendence')),
          BottomNavigationBarItem(icon: Icon(Icons.people),title: Text('Profile'))
        ],
        currentIndex: _currentIndex,
        fixedColor: Colors.deepPurple,
        onTap: tapped,

      ),



    );
  }

}

screen1() {
  return Center(child: Text('Payroll Screen'));
}
screen3() {
  return Center(child: Text('Profile Screen'),);
}