import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pa/modules/landing_page/widgets/1_crie_uma_planilha.dart';
import 'package:pa/modules/landing_page/widgets/2_scriptor.dart';
import 'package:pa/modules/landing_page/widgets/id_page.dart';
import 'package:provider/provider.dart';

import '../../assets/style.dart';
import '../../global_acess.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    GlobalAccess controllerGlobalAcess =
        Provider.of<GlobalAccess>(context, listen: false);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      controllerGlobalAcess.checkIfAlreadyHasIDSetted(context);
    });

    return Scaffold(
      body: Observer(builder: (_) {
        return showPage(controllerGlobalAcess);
      }),
    );
  }

  Widget showPage(GlobalAccess controllerGlobalAcess) {
    if (controllerGlobalAcess.selectPageIndex == 0) {
      return CrieUmaPlanilha();
    } else if (controllerGlobalAcess.selectPageIndex == 1) {
      return ScriptorPage();
    } else if (controllerGlobalAcess.selectPageIndex == 2) {
      return IdPage();
    } else {
      return null;
    }
  }
}
