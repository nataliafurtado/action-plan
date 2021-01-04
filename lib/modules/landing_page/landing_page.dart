import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'landing_page_controller.dart';
import 'widgets/1_init.dart';
import 'widgets/2_configurations.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    LandingPageController controllerGlobalAcess =
        Provider.of<LandingPageController>(context, listen: false);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      controllerGlobalAcess.checkIfAlreadyHasIDSetted(context);
    });

    return Scaffold(
      body: Observer(builder: (_) {
        return showPage(controllerGlobalAcess);
      }),
    );
  }

  Widget showPage(LandingPageController controllerGlobalAcess) {
    if (controllerGlobalAcess.selectPageIndex == 0) {
      return InitPage();
    } else if (controllerGlobalAcess.selectPageIndex == 1) {
      return Configurations2();
    } else {
      return null;
    }
  }
}
