
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sdsd/constants/captions.dart';
import 'package:sdsd/constants/constants.dart';
import 'package:sdsd/provider/card_name_provider.dart';

class CardName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final defaultName =
    Provider.of<Captions>(context).getCaption('NAME_SURNAME').toUpperCase();
    final String name =
    Provider.of<CardNameProvider>(context).cardName.toUpperCase();

    return Text(name.isNotEmpty ? name : defaultName,
        style: name.isNotEmpty ? kNametextStyle : kDefaultNameTextStyle);
  }
}
