import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'SpinScreen.dart';
import 'Yarislar.dart';
import 'anasayfa.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({Key key}) : super(key: key);

  @override
  _PremiumScreenState createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  PageController _pageController = PageController();
  double currentposition = 0;
  List<bool> isSelected = [false, true, false,];
  FocusNode focusNodeButton1 = FocusNode();
  FocusNode focusNodeButton2 = FocusNode();
  FocusNode focusNodeButton3 = FocusNode();
  var deger ;
   List<FocusNode> focusToggle;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController.addListener(() {
      currentposition =_pageController.page;
      setState(() {
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _bodyy(),
      bottomNavigationBar: _bottomNAvigationBar(context),
    );
  }

  _bodyy() {
    return Center(
      child: Column(
        children: [
          SizedBox(height: 10.h,),
          Expanded(
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                itemCount: 3,
                itemBuilder: (context,i){
                  return Column(
                    children: [
                      Stack(
                        alignment: AlignmentDirectional.center,
                        children: <Widget>[
                          // Max Size
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(200),
                            ),
                          ),
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(200),
                            ),
                            child: Image.asset("assets/images/Horse.png"),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        " Platinum’a Geç",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Daha fazla yarış tahmini görüntüle ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Daha fazla yarış tahmini görüp daha fazla kazanmaya başla ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  );
                }),
          ),
          DotsIndicator(
            position: currentposition,
            dotsCount: 3,
            decorator:
            DotsDecorator(activeColor: Colors.white, size: Size(4, 4)),
          ),
          Row(
            children: [
              SizedBox(
                width: 2.w,
              ),
              ToggleButtons(
                isSelected: isSelected,
                onPressed: (int i ){
                  setState(() {
                    _secfunc(i);
                    deger = i;
                    print('deger : $deger');
                  });
                },
                selectedBorderColor: Colors.white,
                borderRadius: BorderRadius.circular(28),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right:5),
                    child: Stack(
                      children: [
                        Container(
                          width: 30.w,
                          height: 20.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(28)),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "EN POPÜLER PAKET",
                                style: TextStyle(color: Colors.black, fontSize: 10),
                              ),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Container(
                              width: 30.w,
                              height: 20.h,
                              decoration: BoxDecoration(
                                color: Color(0xFF1D1D1D),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(0),
                                    topLeft: Radius.circular(0),
                                    bottomLeft: Radius.circular(28),
                                    bottomRight: Radius.circular(28)),
                              ),
                              child: Column(children: [
                                Text("1",
                                    style: TextStyle(
                                        color: Color(0xFFB1AFAF), fontSize: 40)),
                                Text("ay",
                                    style: TextStyle(
                                        color: Color(0xFFB1AFAF), fontSize: 14)),
                                Text("₺39,17/ay",
                                    style: TextStyle(
                                        color: Color(0xFFB1AFAF), fontSize: 15)),
                                Text("%51 İNDİRİM",
                                    style: TextStyle(
                                        color: Color(0xFF2BAFD6), fontSize: 15)),
                                Text("₺469,99",
                                    style: TextStyle(
                                        color: Color(0xFFB1AFAF), fontSize: 25)),
                              ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right:5),
                    child: Stack(
                      children: [
                        Container(
                          width: 30.w,
                          height: 20.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(28)),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "EN POPÜLER PAKET",
                                style: TextStyle(color: Colors.black, fontSize: 10),
                              ),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Container(
                              width: 30.w,
                              height: 20.h,
                              decoration: BoxDecoration(
                                color: Color(0xFF1D1D1D),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(0),
                                    topLeft: Radius.circular(0),
                                    bottomLeft: Radius.circular(28),
                                    bottomRight: Radius.circular(28)),
                              ),
                              child: Column(children: [
                                Text("6",
                                    style: TextStyle(
                                        color: Color(0xFFB1AFAF), fontSize: 40)),
                                Text("ay",
                                    style: TextStyle(
                                        color: Color(0xFFB1AFAF), fontSize: 14)),
                                Text("₺39,17/ay",
                                    style: TextStyle(
                                        color: Color(0xFFB1AFAF), fontSize: 15)),
                                Text("%51 İNDİRİM",
                                    style: TextStyle(
                                        color: Color(0xFF2BAFD6), fontSize: 15)),
                                Text("₺469,99",
                                    style: TextStyle(
                                        color: Color(0xFFB1AFAF), fontSize: 25)),
                              ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Stack(
                      children: [
                        Container(
                          width: 30.w,
                          height: 20.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(28)),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "EN POPÜLER PAKET",
                                style: TextStyle(color: Colors.black, fontSize: 10),
                              ),
                            ),
                            SizedBox(
                              height: 17,
                            ),
                            Container(
                              width: 30.w,
                              height: 20.h,
                              decoration: BoxDecoration(
                                color: Color(0xFF1D1D1D),
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(0),
                                    topLeft: Radius.circular(0),
                                    bottomLeft: Radius.circular(28),
                                    bottomRight: Radius.circular(28)),
                              ),
                              child: Column(children: [
                                Text("12",
                                    style: TextStyle(
                                        color: Color(0xFFB1AFAF), fontSize: 40)),
                                Text("ay",
                                    style: TextStyle(
                                        color: Color(0xFFB1AFAF), fontSize: 14)),
                                Text("₺39,17/ay",
                                    style: TextStyle(
                                        color: Color(0xFFB1AFAF), fontSize: 15)),
                                Text("%51 İNDİRİM",
                                    style: TextStyle(
                                        color: Color(0xFF2BAFD6), fontSize: 15)),
                                Text("₺469,99",
                                    style: TextStyle(
                                        color: Color(0xFFB1AFAF), fontSize: 25)),
                              ]),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 3.w,
              ),
            ],
          ),
          SizedBox(
            height: 3.h,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: ConstrainedBox(
              constraints:BoxConstraints.tightFor(width: 266, height: 39),
              child: ElevatedButton(
                onPressed: () {
                  print("button deger = $deger");
                },
                child: Text("DEVAM ET",style: TextStyle(color: Colors.black,fontSize: 16),),
                style: ElevatedButton.styleFrom(primary: Colors.white,),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _secfunc(int i) {
    setState(() {
      var tmp=isSelected[i];
      isSelected=[false,false,false];
      isSelected[i]=!tmp;
    });
  }

  int _islemfunc(int i) {
    var t = i ;
    return t ;
  }

  _bottomNAvigationBar(BuildContext context) {
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
      onTap: (index) {
        print(index);
        if (index == 0) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => YarisSayfasi()));
        }
        if (index == 1) {
          Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) => SpinningScreen(stat: false,)));
        }
        if (index == 3) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => Anasayfa()));
        }
      },
    );
  }
}