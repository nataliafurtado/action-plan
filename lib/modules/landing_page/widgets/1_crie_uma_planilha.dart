import 'package:flutter/material.dart';
import 'package:pa/functions/functions.dart';
import 'package:pa/global_acess.dart';
import 'package:pa/widgets/button.dart';
import 'package:provider/provider.dart';

class CrieUmaPlanilha extends StatelessWidget {
  final double totalSizeOfAllWidgets = 650;
  @override
  Widget build(BuildContext context) {
    GlobalAccess controllerGlobalAcess =
        Provider.of<GlobalAccess>(context, listen: false);
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height: 150),
          Text("Crie uma planilha vazia no google drive"),
          Container(height: 50),
          Container(
              padding: EdgeInsets.all(10),
              child: Image.asset('lib/assets/images/page1.png')),
          Container(
              height: calculateBottonButtonsBottonDistance(
                  context, totalSizeOfAllWidgets)),
          Container(
            padding: EdgeInsets.all(24),
            child: Button("CONTINUAR", () {
              controllerGlobalAcess.nextPage();
            }),
          ),
        ],
      ),
    );
  }
}
