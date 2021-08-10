import 'package:flutter/material.dart';
import 'package:sdsd/Facebook.dart';
import 'package:sizer/sizer.dart';
import 'package:sdsd/KayitSayfasi.dart';
import 'package:sdsd/Yarislar.dart';
class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: _body(),
    );
  }

  _body() {
    return
     SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.only(top:40),
         child: Column(
            children: [
              Text("Uygulama Adı", style: TextStyle(color: Colors.red,fontSize: 32),
              ),
    SizedBox(height: 20,),
   Padding(
     padding: const EdgeInsets.only(right: 40,left: 40),
     child: Column(
       children: [
         TextFormField(
           style: TextStyle(color: Colors.white),
           decoration:  InputDecoration(

             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
             ),
             hintText: "Kullanıcı Adı ",
             hintStyle: TextStyle(color: Colors.white),
             labelText: "Kullanıcı Adı",
             labelStyle: TextStyle(color: Colors.white),
             enabledBorder: UnderlineInputBorder(
                 borderSide: BorderSide(
                     color: Theme.of(context).accentColor.withOpacity(0.2))),
             focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color:Colors.red,)),

           ),
         ),
         SizedBox(height: 10,),
         TextFormField(
           style: TextStyle(color: Colors.white),

           decoration: new InputDecoration(
             border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10),
             ),
             hintText: "Şifre ",
             hintStyle: TextStyle(color: Colors.white),
             labelText: "Şifre",
             labelStyle: TextStyle(color: Colors.white),
             enabledBorder: UnderlineInputBorder(
                 borderSide: BorderSide(
                     color: Theme.of(context).accentColor.withOpacity(0.2))),
             focusedBorder: OutlineInputBorder(
                 borderSide: BorderSide(color:Colors.red,)),

           ),
         ),
       ],
     ),
   ),
              SizedBox(height: 15,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 250),
                    child: TextButton(
                      onPressed: (){},
                        child: Text("Şifremi Unuttum",style: TextStyle(color: Colors.red))
                    ),
                  ),
                  ElevatedButton(
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>YarisSayfasi()));
                      }, child:Text("Giriş Yap",style: TextStyle(color: Colors.black,fontSize: 18),),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                        ),
                      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 5),
                      primary: Colors.white
                    ),
                  ),

                  Text("Hesabın yok mu?",style: TextStyle(color: Colors.red),),
                  SizedBox(height: 5,),
                  InkWell(
                    child: Text("Hesap Oluştur", style: TextStyle(color: Colors.blue),),
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>KayitSayfasi()));
                    },
                  )
                ],
              ),
              SizedBox(height: 15,),
              Column(
                children: [
                  Center(child: Text("YA DA",style: TextStyle(color: Colors.red),)),
                  SizedBox(height: 0,),
                    Divider(
                      height:0,
                      thickness: 3,
                      indent: 80,
                      endIndent: 240,
                      color: Colors.red,
                    ),
                    Divider(
                      height: 0,
                      thickness: 3,
                      indent: 240,
                      endIndent: 80,

                      color: Colors.red,
                    ),
                  SizedBox(height: 20,),
                  Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left:80,right: 10),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/facebook.png"),
                                      fit: BoxFit.contain)
                              ),
                            ),
                          ),
                          TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>FacebookScreen()));
                              },
                              child: Text("Facebook ile Giriş Yap ",style: TextStyle(color: Colors.blue))
                          ),

                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Container(
                          height: 24.w,
                          width: 24.h,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/medyagon.jpg"),
                                  fit: BoxFit.contain)

                          ),
                        ),
                      ),
                    ],
                  ),


                ],
              ),
            ],
         ),
       ),
     );
  }

  }

