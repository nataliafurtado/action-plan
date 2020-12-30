import 'package:flutter/material.dart';
import 'package:pa/assets/style.dart';

class ChipsFilter extends StatefulWidget {
  final String textDefault;
  final String textSelected;
  final Function onClick;
  final double width;
  const ChipsFilter(
      {this.textDefault, this.textSelected, this.onClick, this.width});
  @override
  _ChipsFilterState createState() => _ChipsFilterState();
}

class _ChipsFilterState extends State<ChipsFilter> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.onClick(context);
      },
      child: Container(
        width: widget.width ?? 120,
        padding: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
            border: Border.all(
              color: Style.primaryColor,
            ),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              widget.textSelected ?? widget.textDefault,
              style: TextStyle(
                color: Style.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            Icon(
              Icons.sort,
              size: 20,
              color: Style.secondaryColor,
            )
          ],
        ),
      ),
    );
  }
}
