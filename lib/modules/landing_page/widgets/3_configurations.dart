import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../functions/functions.dart';
import '../../../widgets/button.dart';
import '../landing_page_controller.dart';
import 'change_color_button.dart';

class Configurations3 extends StatelessWidget {
  final double totalSizeOfAllWidgets = 650;
  @override
  Widget build(BuildContext context) {
    LandingPageController controllerGlobalAcess =
        Provider.of<LandingPageController>(context, listen: false);
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
