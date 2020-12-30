import 'package:flutter/material.dart';
import 'package:pa/assets/style.dart';
import 'package:pa/global_acess.dart';
import 'package:pa/widgets/button.dart';
import 'package:provider/provider.dart';

class IdPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    GlobalAccess controllerGlobalAcess =
        Provider.of<GlobalAccess>(context, listen: false);
    return Container(
      padding: EdgeInsets.all(24),
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Insira caminho end point da planilha",
            style: Style.bold,
          ),
          Container(height: 20),
          Form(
            key: _formKey,
            child: TextFormField(
              controller: controllerGlobalAcess.controllerIdSheet,
              decoration: Style.inputDecoration,
              validator: (String text) {
                if (text.isEmpty) {
                  return "O campo é obrigatório";
                }
                return null;
              },
            ),
          ),
          Container(height: 20),
          Button("PLANO DE AÇÂO", () {
            if (_formKey.currentState.validate()) {
              controllerGlobalAcess.configureAndGoToList(context);
            }
          }),
        ],
      ),
    );
  }
}
