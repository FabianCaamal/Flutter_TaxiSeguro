import 'package:flutter/material.dart';

import 'package:taxi_seguro/components/appBarComp.dart';
import 'package:taxi_seguro/components/drawerComp.dart';

import 'package:taxi_seguro/pages/fabian/homePageFabian.dart';

class NavegationComp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarPrincipal(),
      body: HomePageFabian(),
      drawer: drawerComp(context),
    );
  }  
}