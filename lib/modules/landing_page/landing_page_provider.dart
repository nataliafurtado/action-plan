import 'package:flutter/material.dart';
import 'package:pa/global_acess.dart';
import 'package:pa/modules/landing_page/landing_page.dart';
import 'package:provider/provider.dart';

class LandingPageProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<GlobalAccess>(
      create: (context) => GlobalAccess(context),
      child: LandingPage(),
    );
  }
}
