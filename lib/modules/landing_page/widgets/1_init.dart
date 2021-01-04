import 'package:flutter/material.dart';
import 'package:pa/generated/l10n.dart';
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
            configurationsText(context),
            Container(height: 30),
            Container(child: Image.asset('lib/assets/images/page00.png')),
            Container(
                height: calculateBottonButtonsBottonDistance(
                    context, totalSizeOfAllWidgets)),
            Container(
              padding: EdgeInsets.all(24),
              child: Button(S.of(context).INICIAR_CONFIG, () {
                controllerGlobalAcess.nextPage();
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget configurationsText(context) {
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
              S.of(context).PARA_CONFIGURAR_E_NEC,
              style: Style.bold.copyWith(fontSize: 23),
            ),
          ),
          Text(
            S.of(context).E_PRECISO_UMA,
            style: Style.bold.copyWith(fontSize: 17),
          ),
          Text(
            S.of(context).CRIAR_UMA_PLANILHA,
            style: Style.bold.copyWith(fontSize: 17),
          ),
          Text(
            S.of(context).IR_NA_PARTE,
            style: Style.bold.copyWith(fontSize: 17),
          ),
          Text(
            S.of(context).IMPALNTAR_O_SCRIP,
            style: Style.bold.copyWith(fontSize: 17),
          ),
          Text(
            S.of(context).LIBERAR_O_ACESSO,
            style: Style.bold.copyWith(fontSize: 17),
          ),
        ],
      ),
    );
  }
}
