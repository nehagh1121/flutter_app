import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class personaldetailform extends StatefulWidget{
  @override
  _personaldetailform createState() =>_personaldetailform();
}
class _personaldetailform extends State<personaldetailform>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        padding: EdgeInsets.all(25),
       child:Container(
         color: Colors.black12,
         child: Column(
           children: <Widget>[
             TextField(
               autofocus: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Employee Code",
                  labelStyle:TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 15
                  ),
                hintText: "9855222"
              ),
             ),
             TextField(
               autofocus: false,
               keyboardType: TextInputType.emailAddress,
               decoration: InputDecoration(
                 labelText: "Email Id",
                   labelStyle:TextStyle(
                       color: Colors.blueAccent,
                       fontSize: 15
                   ),
                 hintText: "exmaple@gmail.com"
               ),
             ),
             TextField(
               autofocus: false,
               keyboardType: TextInputType.phone,
               decoration: InputDecoration(
                   labelText: "Mobile Number",
                   labelStyle:TextStyle(
                     color: Colors.blueAccent,
                     fontSize: 15
                   ),
                   hintText: "+919856...."
               ),
             ),
             TextField(
               autofocus: false,
               keyboardType: TextInputType.text,
               decoration: InputDecoration(
                   labelText: "Department",
                   labelStyle:TextStyle(
                       color: Colors.blueAccent,
                       fontSize: 15
                   ),
                   hintText: "Information Technology"
               ),
             ),
             TextField(
               autofocus: false,
               keyboardType: TextInputType.text,
               decoration: InputDecoration(
                   labelText: "Work Location",
                   labelStyle:TextStyle(
                       color: Colors.blueAccent,
                       fontSize: 15
                   ),
                   hintText: "United State"
               ),
             )
           ],
         ),
       ),
      ),
    );
  }

}