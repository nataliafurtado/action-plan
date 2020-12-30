import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../assets/style.dart';
import '../../../functions/functions.dart';
import '../../../widgets/button.dart';
import '../landing_page_controller.dart';

class InitPage extends StatelessWidget {
  final double totalSizeOfAllWidgets = 750;
  @override
  Widget build(BuildContext context) {
    LandingPageController controllerGlobalAcess =
        Provider.of<LandingPageController>(context, listen: false);
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(height: 100),
            configurationsText(),
            Container(height: 30),
            Container(child: Image.asset('lib/assets/images/page00.png')),
            Container(
                height: calculateBottonButtonsBottonDistance(
                    context, totalSizeOfAllWidgets)),
            Container(
              padding: EdgeInsets.all(24),
              child: Button("Iniciar configurações", () {
                controllerGlobalAcess.nextPage();
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget configurationsText() {
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              "Para configurar é necessario:",
              style: Style.bold.copyWith(fontSize: 23),
            ),
          ),
          Text(
            " - É preciso uma conta no google",
            style: Style.bold.copyWith(fontSize: 17),
          ),
          Text(
            " - Criar uma planilha vazia no google drive",
            style: Style.bold.copyWith(fontSize: 17),
          ),
          Text(
            " - Ir na parte de Editors de Script da planilha e colar um script",
            style: Style.bold.copyWith(fontSize: 17),
          ),
          Text(
            " - Implantar o scrip",
            style: Style.bold.copyWith(fontSize: 17),
          ),
          Text(
            " - Liberar acesso da planilhas para outros aplicativos",
            style: Style.bold.copyWith(fontSize: 17),
          ),
        ],
      ),
    );
  }
}
