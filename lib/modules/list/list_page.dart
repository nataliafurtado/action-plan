import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pa/generated/l10n.dart';
import 'package:provider/provider.dart';

import '../../assets/style.dart';
import '../../widgets/card.dart';
import '../../widgets/filters.dart';
import 'list_controller.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  ListController controllerList;
  @override
  void initState() {
    controllerList = Provider.of<ListController>(context, listen: false);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      controllerList.loadData();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Style.iceBackground,
        body: Observer(builder: (_) {
          return Column(
            children: [
              Container(height: 56),
              Filters(),
              Expanded(
                child: RefreshIndicator(
                  onRefresh: () {
                    return controllerList.loadData();
                  },
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: controllerList.actions.length + 1,
                      itemBuilder: (ctx, index) {
                        return index == controllerList.actions.length
                            ? newAction()
                            : CardAction(controllerList.actions[index], index);
                      }),
                ),
              ),
              Container(height: 30),
            ],
          );
        }));
  }

  Widget newAction() {
    return InkWell(
      onTap: () {
        controllerList.goToNewActionEventPage();
      },
      child: Container(
        margin: EdgeInsets.only(top: 15, left: 15, right: 15),
        padding: EdgeInsets.all(15),
        height: 60,
        color: Style.primaryColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              S.of(context).NOVA_ACAO,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Container(width: 30),
            Icon(Icons.add_circle, color: Colors.white)
          ],
        ),
      ),
    );
  }
}
