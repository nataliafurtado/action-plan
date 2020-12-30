import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pa/assets/constants.dart';
import 'package:pa/functions/functions.dart';
import 'package:pa/models/action.dart';
import 'package:pa/modules/list/list_repository.dart';
import 'package:pa/widgets/dialog_circular_progress_indicator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:mobx/mobx.dart';

part 'landing_page_controller.g.dart';

class LandingPageController = LandingPageControllerBase
    with _$LandingPageController;

abstract class LandingPageControllerBase with Store, ChangeNotifier {
  final BuildContext context;
  LandingPageControllerBase(this.context);

  ListRepository _listRepository = ListRepository();

  @observable
  int selectPageIndex = 0;
  @action
  nextPage() {
    selectPageIndex = selectPageIndex + 1;
  }

  @action
  lastPage() {
    selectPageIndex = selectPageIndex - 1;
  }

  checkIfAlreadyHasIDSetted(context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.containsKey("pa-app")) {
      // controllerIdSheet.text = prefs.getString(\"pa-app\");
      Navigator.popAndPushNamed(context, '/list-page');
    }
  }

  // SharedPreferences prefs = await SharedPreferences.getInstance();
  // if (prefs.containsKey(\"pa-app\")) {
  //   controllerIdSheet.text = prefs.getString(\"pa-app\");
  //   Navigator.popAndPushNamed(context, '/list-page');
  // }

  configureAndGoToList(context) async {
    showCustomDialog(DialogCircularProgressIndicator());
    log("message");
    await _listRepository.doPost(ActionEvent(action: Constants.config));
// Provider.of<GlobalAccess>(context, listen: false).controllerIdSheet.text=
    Navigator.pop(context);
    Navigator.popAndPushNamed(context, '/list-page');
  }
}
