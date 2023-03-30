import 'package:flutter/material.dart';
import 'package:sm_example/enums/view_states.dart';
import 'package:sm_example/scoped_models/home_model.dart';
import 'package:sm_example/scoped_models/success_model.dart';
import 'package:sm_example/screens/base/base.dart';
import '../../services/service_locator.dart';

class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<SuccessModel>(
      builder: (context, child, model) => Scaffold(
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(this.runtimeType.toString()),
          ],
        )),
      ),
    );
  }
}
