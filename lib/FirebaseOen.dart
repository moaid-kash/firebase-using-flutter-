import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetest/Hom.dart';
import 'package:firebasetest/Register.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FirebaseOen extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<FirebaseOen> {


  TextEditingController _name=new TextEditingController();
  TextEditingController _email=new TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register"),),
      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              TextField(
                controller: _email,
                decoration: InputDecoration(
                    hintText: 'Email'
                ),
              ),
              TextField(
                controller:_name ,
                decoration: InputDecoration(
                    hintText: 'password'
                ),
              ),

              // ignore: deprecated_member_use
              RaisedButton(
                child: Text("login"),
                onPressed: () async{
                  // ignore: unnecessary_statements

                  var reult=await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                      email: _email.text
                  ,
                  password: _name.text);
                  if(reult!=null) {
                    Fluttertoast.showToast(
                        msg: "longin",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIos: 1,
                        fontSize: 20
                    );


                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Hom()));

                  }
                  else
                    {
                      Fluttertoast.showToast(
                          msg: "unlongin",
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.CENTER,
                          timeInSecForIos: 1,
                          fontSize: 20
                      );
                    }
                }

                ,


              ),

              RaisedButton(
                 child: Text("sngin") ,onPressed: (){
                   
                   
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Register()));
                   
              })


            ],
          ),
        ),
      ),
    );
  }

}
