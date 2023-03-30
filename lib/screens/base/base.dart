import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:sm_example/enums/view_states.dart';
import 'package:sm_example/scoped_models/base_model.dart';
import 'package:sm_example/scoped_models/home_model.dart';
import '../../services/service_locator.dart';

class BaseView<T extends BaseModel> extends StatelessWidget {
  final ScopedModelDescendantBuilder<T> _builder;

  BaseView({required ScopedModelDescendantBuilder builder})
      : _builder = builder;

  @override
  Widget build(BuildContext context) {
    return ScopedModel<T>(
        model: locator<T>(),
        child: ScopedModelDescendant<T>(builder: _builder));
  }
}
