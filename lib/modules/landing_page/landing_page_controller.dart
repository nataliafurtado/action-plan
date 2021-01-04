import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../assets/constants.dart';
import '../../functions/functions.dart';
import '../../global_acess.dart';
import '../../models/action.dart';
import '../../widgets/dialog_circular_progress_indicator.dart';
import '../list/list_repository.dart';

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
      Provider.of<GlobalAccess>(context, listen: false).controllerIdSheet.text =
          prefs.getString("pa-app");
      Navigator.popAndPushNamed(context, '/list-page');
    }
  }

  configureAndGoToList(context) async {
    showCustomDialog(DialogCircularProgressIndicator());
    saveId();
    await _listRepository.doPost(ActionEvent(action: Constants.config));
    Navigator.pop(context);
    Navigator.popAndPushNamed(context, '/list-page');
  }

  Future saveId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(
        "pa-app",
        Provider.of<GlobalAccess>(context, listen: false)
            .controllerIdSheet
            .text);
  }
}
