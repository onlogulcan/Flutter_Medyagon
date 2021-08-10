import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_spinning_wheel/flutter_spinning_wheel.dart';

import 'models/CalcModel.dart';
import 'models/fiyat.dart';

class MyHomePage extends StatefulWidget {
  final bool stat;

  const MyHomePage({Key key, this.stat}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final StreamController _dividerController = StreamController<int>();

  final StreamController _wheelNotifier = StreamController<double>();
  List<CalcModel> items = [];
  double sum = 0;
  @override
  void initState() {
    super.initState();
    getChance();
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
              /* setState(() {
               _randomfunc();
              });
              _wheelNotifier.sink.add(_randomVelocity());*/
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (_)=>MyHomePage(stat: true,)));
            }, color: Colors.green, child: Text("tıkla"),),

          ],
        ),
      ),
    );
  }

  double _generateRandomAngle() => Random().nextDouble() * pi * 2;

  double _randomfunc() {
    var min = (items.reduce((value, element) => value.price < element.price ? value : element).price);
    var max = (items.reduce((value, element) => value.price > element.price ? value : element).price);
    print("Max :$max");
    print("min :$min");
    var rng = new Random().nextInt(min);
    print(double.tryParse(rng.toString()) % (2 * pi));
    return double.tryParse(rng.toString()) % (2 * pi);
    //if (rng >= 50 && rng < 100) {
    //       return pi;
    //     }
    //     else if (rng >= 30 && rng < 50) {
    //       return pi + pi / 2;
    //     }
    //     else if (rng >= 20 && rng < 30) {
    //       return pi / 2;
    //     }
    //     else if (rng >= 13 && rng < 20) {
    //       return pi / 4;
    //     }
    //     else if (rng >= 7 && rng < 13) {
    //       return 3 * pi / 4;
    //     }
    //     else if (rng >= 3 && rng < 7) {
    //       return pi + pi / 4;
    //     }
    //     else if (rng > 1 && rng < 3) {
    //       return pi + 3 * (pi / 4);
    //     }
    //     else if (rng == 1) {
    //       return 2 * pi;
    //     } else {
    //       return 1;
    //     }
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

  void getChance() {
    setState(() {
      items.add(new CalcModel(id: 1,price: 100,chance: 1));
      items.add(new CalcModel(id: 2,price: 300,chance: 1));
      items.add(new CalcModel(id: 3,price: 400,chance: 1));
      items.add(new CalcModel(id: 4,price: 800,chance: 1));
      items.add(new CalcModel(id: 5,price: 1000,chance: 1));
      items.add(new CalcModel(id: 6,price: 7000,chance: 1));
      items.add(new CalcModel(id: 7,price: 5000,chance: 1));
      items.add(new CalcModel(id: 8,price: 2000,chance: 1));
    });
    sum = 0;
    items.forEach((element) {
      sum += element.price;
    });
    items.forEach((element) {
      element.chance = element.price / sum;
    });
  }
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
