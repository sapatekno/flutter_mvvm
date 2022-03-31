import 'package:sapatekno_mvvm/base/view_model_base.dart';
import 'package:sapatekno_mvvm/data/local/hive/hive_repo/config_hive_repo.dart';

class MaterialAppConfigVM extends ViewModelBase {
  final ConfigHiveRepo _configHiveRepo = ConfigHiveRepo();
  bool isDarkMode = false;

  @override
  void onBuild() async {
    super.onBuild();
    isDarkMode = await _configHiveRepo.getIsDarkMode();
    notifyListeners();
  }
}
