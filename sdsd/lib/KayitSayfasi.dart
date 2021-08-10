import 'package:flutter/material.dart';
class KayitSayfasi extends StatefulWidget {
  const KayitSayfasi({Key key}) : super(key: key);

  @override
  _KayitSayfasiState createState() => _KayitSayfasiState();
}

class _KayitSayfasiState extends State<KayitSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Center(child: Text("KAYIT OL",style: TextStyle(color: Colors.red,fontSize: 32),)),
      ),
      body: _body(),

    );
  }

  _body() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.only(top:20.0),
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
              SizedBox(height: 15,),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration:  InputDecoration(

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "E-mail",
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: "E-mail",
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).accentColor.withOpacity(0.2))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:Colors.red,)),

                ),
              ),
              SizedBox(height: 15,),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration:  InputDecoration(

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Şifre",
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
              SizedBox(height: 15,),
              TextFormField(
                style: TextStyle(color: Colors.white),
                decoration:  InputDecoration(

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: "Şifre Tekrar",
                  hintStyle: TextStyle(color: Colors.white),
                  labelText: "Şifre Tekrar",
                  labelStyle: TextStyle(color: Colors.white),
                  enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).accentColor.withOpacity(0.2))),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:Colors.red,)),

                ),
              ),
              SizedBox(height: 40,),
              ElevatedButton(
                onPressed: (){}, child:Text("Kayıt Ol",style: TextStyle(color: Colors.black,fontSize: 18),),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 5),
                    primary: Colors.white
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 130),
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/medyagon.jpg"),
                          fit: BoxFit.contain)

                  ),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
