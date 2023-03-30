import 'package:flutter/material.dart';
import 'package:sm_example/enums/view_states.dart';
import 'package:sm_example/scoped_models/home_model.dart';
import 'package:sm_example/screens/base/base.dart';
import 'package:sm_example/screens/error/error.dart';
import 'package:sm_example/screens/success/success.dart';
import 'package:sm_example/screens/widgets/busy_overlay.dart';
import '../../services/service_locator.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BaseView<HomeModel>(
        builder: (context, child, model) => BusyOverlay(
          show: (model as HomeModel).state == ViewState.Busy,
              child: Scaffold(
                floatingActionButton: FloatingActionButton(
                  onPressed: () async {
                    var result = await (model as HomeModel).saveData();
                    if (result) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SuccessPage()));
                    } else {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ErrorPage()));
                    }
                  },
                ),
              ),
            ));
  }

  Widget _getBodyUi(ViewState state) {
    switch (state) {
      case ViewState.Busy:
        return CircularProgressIndicator();
      case ViewState.Retrieved:
      default:
        return Text("Done");
    }
  }
}
