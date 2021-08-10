
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdsd/constants/constants.dart';
import 'package:sdsd/provider/card_number_provider.dart';
import 'package:sdsd/util/util.dart';


class CardLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String cardNumber = Provider.of<CardNumberProvider>(context).cardNumber;

    CardCompany cardCompany = detectCardCompany(cardNumber);

    return Stack(
      children: <Widget>[
        AnimatedOpacity(
          opacity: cardCompany == CardCompany.VISA ? 1 : 0,
          child: visa,
          duration: Duration(milliseconds: 200),
        ),
        AnimatedOpacity(
            opacity: cardCompany == CardCompany.MASTER ? 1 : 0,
            child: master,
            duration: Duration(milliseconds: 200)),
        AnimatedOpacity(
            opacity: cardCompany == CardCompany.DISCOVER ? 1 : 0,
            child: discover,
            duration: Duration(milliseconds: 200)),
        AnimatedOpacity(
            opacity: cardCompany == CardCompany.AMERICAN_EXPRESS ? 1 : 0,
            child: amex,
            duration: Duration(milliseconds: 200)),
      ],
    );
  }
}
