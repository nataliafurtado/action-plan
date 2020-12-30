import 'package:flutter/material.dart';
import 'package:pa/modules/list/list_controller.dart';
import 'package:pa/widgets/chips_filter.dart';
import 'package:provider/provider.dart';

class Filters extends StatefulWidget {
  @override
  _FiltersState createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  ListController controllerList;
  @override
  void initState() {
    controllerList = Provider.of<ListController>(context, listen: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            reservationFilterButton(context),
            Container(width: 8),
          ],
        ),
      ),
    );
  }

  Widget reservationFilterButton(context) {
    return ChipsFilter(
      textDefault: controllerList.selectedFilterStatus,
      width: 150,
      onClick: _statusFilter,
    );
  }

  void _statusFilter(
    context,
  ) {
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        builder: (BuildContext bc) {
          return Wrap(
            children: <Widget>[
              Container(
                  height: 400,
                  child: ListView.builder(
                      itemCount: controllerList.status.length + 1,
                      itemBuilder: (ctx, index) {
                        return index == controllerList.status.length
                            ? ListTile(
                                leading: new Icon(Icons.not_interested),
                                title: new Text("Limpar filtro"),
                                onTap: () {
                                  Navigator.pop(context);
                                  controllerList.filterStatusCleanFilter();
                                },
                              )
                            : ListTile(
                                leading: new Icon(Icons.label_important),
                                title: new Text(controllerList.status[index]),
                                onTap: () {
                                  Navigator.pop(context);
                                  controllerList.filterStatusActions(
                                      controllerList.status[index]);
                                },
                              );
                      })),
            ],
          );
        });
  }
}
