import 'package:flutter/material.dart';
class ProfilSayfasi extends StatefulWidget {
  const ProfilSayfasi({Key key}) : super(key: key);

  @override
  _ProfilSayfasiState createState() => _ProfilSayfasiState();
}

class _ProfilSayfasiState extends State<ProfilSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text("Profilim",style: TextStyle(color: Colors.black),),),
    );
  }
}
