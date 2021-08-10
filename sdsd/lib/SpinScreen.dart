import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinning_wheel/flutter_spinning_wheel.dart';
import 'package:sdsd/PremiumSayfasi.dart';

import 'Yarislar.dart';
import 'anasayfa.dart';
import 'models/CalcModel.dart';
import 'dart:math';

import 'models/fiyat.dart';

class SpinningScreen extends StatefulWidget {
  final bool stat;

  const SpinningScreen({Key key, this.stat}) : super(key: key);
  @override
  _SpinningScreen createState() => _SpinningScreen();
}

class _SpinningScreen extends State<SpinningScreen> {
  final StreamController _dividerController = StreamController<int>();

  final StreamController _wheelNotifier = StreamController<double>();
  List<CalcModel> items = [];
  double sum = 0;
  @override
  void initState() {
    super.initState();
    if(widget.stat){
      setState(() {
        _randomfunc();
      });
      _wheelNotifier.sink.add(_randomVelocity());
    }

  }

  double _randomVelocity() => pi * 1000;
  List<Price> dataPrice = [];

  dispose() {
    super.dispose();
    _dividerController.close();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xffDDC3FF), elevation: 0.0),
      backgroundColor: Color(0xffDDC3FF),
      bottomNavigationBar: bottomNAvigationBar(context),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AbsorbPointer(
              absorbing: true,
              child: _getSpinWidget(),
            ),
            SizedBox(height: 30),
            StreamBuilder(
              stream: _dividerController.stream,
              builder: (context, snapshot) =>
              snapshot.hasData ? RouletteScore(snapshot.data) : Container(),
            ),
            MaterialButton(onPressed: () {
              Navigator.pushReplacement(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation1, animation2) => SpinningScreen(stat: true),
                  transitionDuration: Duration(seconds: 0),
                ),
              );
            },
              color: Colors.green, child: Text("tıkla"),
            ),

          ],
        ),
      ),
    );
  }

  double _generateRandomAngle() => Random().nextDouble() * pi * 2;

  double _randomfunc() {
    int rng = Random().nextInt(1000);
    print('rng : $rng');
    if (rng >= 500 && rng < 1000) {
      return pi;
    }
    else if (rng >= 300 && rng < 500) {
      return pi + pi / 2;
    }
    else if (rng >= 200 && rng < 300) {
      return pi / 2;
    }
    else if (rng >= 130 && rng < 200) {
      return pi / 4;
    }
    else if (rng >= 70 && rng < 130) {
      return 3 * pi / 4;
    }
    else if (rng >= 30 && rng < 70) {
      return pi + pi / 4;
    }
    else if (rng > 1 && rng < 30) {
      return pi + 3 * (pi / 4);
    }
    else if (rng == 1) {
      return 2 * pi;
    }
  }

  _getSpinWidget() {
    return new SpinningWheel(
      Image.asset('assets/images/roulette-8-300.png'),
      width: 310,
      height: 310,
      initialSpinAngle: _randomfunc(),
      shouldStartOrStop: _wheelNotifier.stream,
      spinResistance: 0.6,
      canInteractWhileSpinning: false,
      dividers: 8,
      onUpdate: _dividerController.add,
      onEnd: _dividerController.add,
      secondaryImage:
      Image.asset('assets/images/roulette-center-300.png'),
      secondaryImageHeight: 110,
      secondaryImageWidth: 110,

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
          label: 'premium',
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
        if(index==0){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>YarisSayfasi()));
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

// void getChance() {
//      setState(() {
//        items.add(new CalcModel(id: 1,price: 100,chance: 1));
//        items.add(new CalcModel(id: 2,price: 300,chance: 1));
//        items.add(new CalcModel(id: 3,price: 400,chance: 1));
//        items.add(new CalcModel(id: 4,price: 800,chance: 1));
//        items.add(new CalcModel(id: 5,price: 1000,chance: 1));
//        items.add(new CalcModel(id: 6,price: 7000,chance: 1));
//        items.add(new CalcModel(id: 7,price: 5000,chance: 1));
//        items.add(new CalcModel(id: 8,price: 2000,chance: 1));
//      });
//      sum = 0;
//      items.forEach((element) {
//        sum += element.price;
//      });
//      items.forEach((element) {
//        element.chance = element.price / sum;
//      });
//    }
}

class RouletteScore extends StatelessWidget {
  final int selected;

  final Map<int, String> labels = {
    1: '1000\$',
    2: '400\$',
    3: '800\$',
    4: '7000\$',
    5: '5000\$',
    6: '300\$',
    7: '2000\$',
    8: '100\$',
  };

  RouletteScore(this.selected);

  @override
  Widget build(BuildContext context) {
    return Text('${labels[selected]}',
        style: TextStyle(fontStyle: FontStyle.italic, fontSize: 24.0));
  }
}