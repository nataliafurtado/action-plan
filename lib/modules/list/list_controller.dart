import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../assets/constants.dart';
import '../../functions/functions.dart';
import '../../models/action.dart';
import '../../widgets/dialog_circular_progress_indicator.dart';
import 'list_repository.dart';

part 'list_controller.g.dart';

class ListController = ListControllerBase with _$ListController;

abstract class ListControllerBase with Store, ChangeNotifier {
  final BuildContext context;
  ListControllerBase(this.context);

  ListRepository _listRepository = ListRepository();

  @observable
  List<ActionEvent> actions = [];

  List<ActionEvent> actionsNotFiltered = [];
  @observable
  List<String> responsables = [];

  String selectedResponsable = '';

  List<String> status = [
    'EM PROGRESSO',
    'EM ESPERA',
    'ATRASADA',
    "COMPLETA",
    "CANCELADA"
  ];

  String selectedStatus = 'EM PROGRESSO';

  bool isToSave;

  @observable
  String selectedFilterStatus = 'SEM FILTRO';

  TextEditingController controllerCategoria = TextEditingController();
  TextEditingController controllerOque = TextEditingController();
  TextEditingController controllerComo = TextEditingController();

  TextEditingController controllerFeedBack = TextEditingController();
  TextEditingController controllerObs = TextEditingController();
  String prazo = '';
  String data = '';
  String rowToEdit;

  @action
  loadData() async {
    showCustomDialog(DialogCircularProgressIndicator());
    List<ActionEvent> actionList = await _listRepository.loadActionEvents();

    SharedPreferences prefs = await SharedPreferences.getInstance();
    actionsNotFiltered = actionList;
    filterResponsableColumnValues(actionList);
    if (prefs.containsKey(Constants.filtro)) {
      filterStatusActions(prefs.getString(Constants.filtro));
      selectedFilterStatus = prefs.getString(Constants.filtro);
    } else {
      actions = actionList;
    }
    Navigator.pop(context);
  }

  @action
  filterResponsableColumnValues(List<ActionEvent> list) {
    List<String> responsablesList = [];
    for (var i = 0; i < list.length; i++) {
      responsablesList.add(list[i].quem);
    }
    responsablesList = responsablesList.toSet().toList();
    if (!responsablesList.contains("")) {
      responsablesList.add("");
    }
    responsables = responsablesList;
    log(responsables.toString());
  }

  saveActionEvent() async {
    showCustomDialog(DialogCircularProgressIndicator());
    await _listRepository.doPost(loadActionEventObject());
    await Future.delayed(Duration(seconds: 1));
    Navigator.popAndPushNamed(context, '/list-page');
  }

  @action
  filterStatusActions(String statusPassed) {
    saveFilter(statusPassed);
    List<ActionEvent> actionsList = [];
    for (var i = 0; i < actionsNotFiltered.length; i++) {
      if (actionsNotFiltered[i].status == statusPassed) {
        actionsList.add(actionsNotFiltered[i]);
      }
    }
    selectedFilterStatus = statusPassed;
    actions = actionsList;
  }

  @action
  filterStatusCleanFilter() {
    actions = actionsNotFiltered;
    selectedFilterStatus = "SEM FILTRO";
    deleteFilter();
  }

  saveFilter(String statusPassed) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(Constants.filtro, statusPassed);
  }

  deleteFilter() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(Constants.filtro);
  }

  goToEditActionEventPage(int index) async {
    await loadActionEventControllers(index);
    isToSave = false;
    Navigator.pushNamed(context, '/action-event-page', arguments: this);
  }

  goToNewActionEventPage() async {
    data = DateTime.now().toIso8601String();
    selectedStatus = "EM PROGRESSO";
    isToSave = true;
    selectedResponsable = "";
    Navigator.pushNamed(context, '/action-event-page', arguments: this);
  }

  loadActionEventControllers(int index) async {
    rowToEdit = actions[index].rowToEdit;
    controllerCategoria.text = actions[index].categoria;
    controllerOque.text = actions[index].oQue;
    controllerComo.text = actions[index].como;
    selectedResponsable = actions[index].quem;
    controllerFeedBack.text = actions[index].feedBack;
    controllerObs.text = actions[index].obs;
    prazo = actions[index].prazo;
    data = actions[index].data;
    selectedStatus = actions[index].status;
  }

  ActionEvent loadActionEventObject() {
    if (isToSave) {
      return ActionEvent(
        data: formatData(data, false),
        categoria: controllerCategoria.text,
        oQue: controllerOque.text,
        como: controllerComo.text,
        quem: selectedResponsable,
        prazo: formatData(prazo, false),
        status: selectedStatus,
        feedBack: controllerFeedBack.text,
        obs: controllerObs.text,
        rowToEdit: "",
        action: "save",
      );
    } else {
      return ActionEvent(
        data: formatData(data, false),
        categoria: controllerCategoria.text,
        oQue: controllerOque.text,
        como: controllerComo.text,
        quem: selectedResponsable,
        prazo: formatData(prazo, false),
        status: selectedStatus,
        feedBack: controllerFeedBack.text,
        obs: controllerObs.text,
        rowToEdit: rowToEdit,
        action: "edit",
      );
    }
  }
}
