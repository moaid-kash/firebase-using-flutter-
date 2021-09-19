import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetest/FirebaseOen.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
class Register extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<Register> {


  TextEditingController _name=new TextEditingController();
  TextEditingController _email=new TextEditingController();
  TextEditingController _mobile=new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register"),),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[

              TextField(
                controller: _name,
                decoration: InputDecoration(
                    hintText: 'name'
                ),
              ),
              TextField(
                controller: _email,
                decoration: InputDecoration(
                    hintText: 'Email'
                ),
              ),
              TextField(
                controller: _mobile,
                decoration: InputDecoration(
                    hintText: 'password'
                ),
              ),

              RaisedButton(
                child: Text("Register"),
                onPressed: ()async{


                {///
                    /// add collom
                    var v=await Firestore.instance.collection("kash").document().setData(
                      {
                      'email': _email.text.toString()

                      }
                    );
                    Navigator.pushReplacement(context, MaterialPageRoute(
                        builder: (context)=>FirebaseOen()));


                  }
                  // ignore: unnecessary_statements
                },
              ),




            ],
          ),
        ),
      ),
    );
  }

}
