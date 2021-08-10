import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
class FacebookScreen extends StatefulWidget {
  const FacebookScreen({Key key}) : super(key: key);

  @override
  _FacebookScreenState createState() => _FacebookScreenState();
}

class _FacebookScreenState extends State<FacebookScreen> {
  bool isLoggedIn=false;
  Map userObj={};


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Facebook ile bağlan"),
      backgroundColor: Colors.red,),
      body: Container(
        child: isLoggedIn
            ? Column(
          children: [
            Image.network("src"),
            Text(""),
            TextButton(onPressed: (){},child: Text("Logout"),)
          ],
        )
            : Center(
          child: ElevatedButton(
          child: Text("Login With Facebook"),
            onPressed: (){
            FacebookAuth.instance.login(
             permissions: ["public profile", "email",]
            ).then((value){
              FacebookAuth.instance.getUserData().then((userData){
                setState(() {
                  isLoggedIn=true;
                  userObj=userData;
                });
              });
            });
            },
          ),
        ),
      ),
    );
  }
}
