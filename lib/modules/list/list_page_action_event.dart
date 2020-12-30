import 'package:flutter/material.dart';
import 'package:pa/assets/style.dart';

import 'package:pa/modules/list/list_controller.dart';
import 'package:pa/widgets/button.dart';
import 'package:pa/widgets/date_picker_prazo.dart';
import 'package:pa/widgets/drop_down_status.dart';
import 'package:provider/provider.dart';

class ActionEventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ListController controllerList =
        Provider.of<ListController>(context, listen: false);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 50),
              Container(padding: EdgeInsets.all(10), child: Text("Categoria")),
              TextFormField(
                controller: controllerList.controllerCategoria,
                decoration: Style.inputDecoration,
              ),
              Container(height: 10),
              Container(padding: EdgeInsets.all(10), child: Text("O que ?")),
              TextFormField(
                controller: controllerList.controllerOque,
                decoration: Style.inputDecoration,
              ),
              //
              Container(height: 10),
              Container(padding: EdgeInsets.all(10), child: Text("Como ?")),
              TextFormField(
                controller: controllerList.controllerComo,
                decoration: Style.inputDecoration,
                maxLines: 5,
              ),
              //
              Container(height: 10),
              Container(padding: EdgeInsets.all(10), child: Text("Prioridade")),
              TextFormField(
                controller: controllerList.controllerPrioridade,
                decoration: Style.inputDecoration,
              ),
              //
              Container(height: 20),
              Container(padding: EdgeInsets.all(10), child: Text("Prazo")),
              //
              DatePickerPrazo(),
              //
              Container(height: 10),
              Container(padding: EdgeInsets.all(10), child: Text("Status")),
              DropDownStatus(),
              //
              Container(height: 10),
              Container(padding: EdgeInsets.all(10), child: Text("Feeb Back")),
              TextFormField(
                controller: controllerList.controllerFeedBack,
                decoration: Style.inputDecoration,
                maxLines: 3,
              ),
              //
              Container(height: 10),
              Container(padding: EdgeInsets.all(10), child: Text("Obs")),
              TextFormField(
                controller: controllerList.controllerObs,
                decoration: Style.inputDecoration,
                maxLines: 3,
              ),
              Container(height: 40),
              Button("SALVAR", () {
                controllerList.saveActionEvent();
              }),
              Container(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
