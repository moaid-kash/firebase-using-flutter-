import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetest/FirebaseOen.dart';
import 'package:flutter/material.dart';

class Hom extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<Hom> {


  TextEditingController name=new TextEditingController();
  TextEditingController email=new TextEditingController();
  TextEditingController mobile=new TextEditingController();


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Register")
        ,actions: <Widget>[
         // ignore: deprecated_member_use
         RaisedButton(
             child:Text("logout",style: TextStyle(
               fontSize: 18,
               color: Colors.white


             ),)
             ,color: Colors.blueAccent,
             onPressed:()async{
           await FirebaseAuth.instance.signOut();

           Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FirebaseOen()));


         })
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
            ],
          ),
        ),
      ),
    );
  }

}
