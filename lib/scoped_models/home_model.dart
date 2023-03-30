import 'package:sm_example/scoped_models/base_model.dart';
import 'package:sm_example/services/service_locator.dart';
import 'package:sm_example/services/storage_service.dart';

import '../enums/view_states.dart';

class HomeModel extends BaseModel {
  StorageService storageService = locator<StorageService>();
  String title = "HomeModel";

  Future<bool> saveData() async {
    setState(ViewState.Busy);
    title = "Saving Data";
    await storageService.saveData();
    title = "Data saved";
    setState(ViewState.Retrieved);
    return true;
  }
}
