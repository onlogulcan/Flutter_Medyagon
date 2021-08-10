import 'package:flutter/material.dart';
import 'package:sdsd/ProfilSayfasi.dart';
import 'package:sdsd/SpinScreen.dart';
import 'package:sdsd/anasayfa.dart';

import 'PremiumSayfasi.dart';

class YarisSayfasi extends StatefulWidget {
  const YarisSayfasi({Key key}) : super(key: key);

  @override
  _YarisSayfasiState createState() => _YarisSayfasiState();
}

class _YarisSayfasiState extends State<YarisSayfasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          InkWell(
        splashColor: Colors.blue, // Splash color
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilSayfasi()));
        },
        child: SizedBox(width: 56, height: 56, child: Icon(Icons.person)),
      ),
        ],
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Text(
                "Günün Yarışları",
                style: TextStyle(
                    color: Colors.white, fontSize: 24),
              ),
            ]
        ),
      ),
      body: _body(),
      bottomNavigationBar: bottomNAvigationBar(context),
    );;
  }

  _body() {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: Colors.white,
              child: ListTile(),
            ),
            Card(
              color: Colors.white,
              child: ListTile(),
            ),
            Card(
              color: Colors.white,
              child: ListTile(),
            ),
            Card(
              color: Colors.white,
              child: ListTile(),
            ),
            Card(
              color: Colors.white,
              child: ListTile(),
            ),
            Card(
              color: Colors.white,
              child: ListTile(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40),
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
    );
  }

  bottomNAvigationBar(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle: TextStyle(fontSize: 14),
      unselectedLabelStyle: TextStyle(fontSize: 14),
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.black,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 24,
            backgroundImage: AssetImage("assets/images/Horse.png"),
          ),
          label: 'Yarışlar',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 24,
            backgroundImage: AssetImage("assets/images/cark.jpg"),
          ),
          label: 'Günlük Çark',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 24,
            backgroundImage: AssetImage("assets/images/Diamond.png"),
          ),
          label: 'Premium',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 24,
            backgroundImage: AssetImage("assets/images/exit2.png"),
          ),
          label: 'Çıkış',
        ),

      ],
      onTap: (index){
        print(index);
        if(index==1){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SpinningScreen(stat: false,)));
        }
        if(index==2){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>PremiumScreen()));
        }
        if(index==3){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Anasayfa()));
        }
      },
    );
  }
}
