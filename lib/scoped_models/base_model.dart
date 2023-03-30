import 'package:scoped_model/scoped_model.dart';
import 'package:sm_example/services/service_locator.dart';
import 'package:sm_example/services/storage_service.dart';

import '../enums/view_states.dart';

class BaseModel extends Model {
  StorageService storageService = locator<StorageService>();
  ViewState state = ViewState.Idle;

  void setState(ViewState newState) {
    state = newState;
    notifyListeners();
  }
}
