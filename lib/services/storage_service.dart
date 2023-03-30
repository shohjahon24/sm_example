class StorageService {
  Future<bool> saveData() async {
    await Future.delayed(const Duration(seconds: 2)).then((_){});
    return true;
  }
}
