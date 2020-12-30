import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pa/functions/functions.dart';
import 'package:pa/global_acess.dart';
import 'package:pa/modules/landing_page/widgets/change_color_button.dart';
import 'package:pa/widgets/button.dart';
import 'package:provider/provider.dart';

class ScriptorPage extends StatelessWidget {
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
          Text("Aperte no campo < > EDITOR DE SCRIPT"),
          Container(height: 50),
          Container(
              padding: EdgeInsets.all(10),
              child: Image.asset('lib/assets/images/page2.png')),
          Container(
              height: calculateBottonButtonsBottonDistance(
                  context, totalSizeOfAllWidgets)),
          ChangeColorButton(),
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
