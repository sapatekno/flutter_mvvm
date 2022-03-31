import 'package:dio_log/dio_log.dart';
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:sapatekno_mvvm/base/view_model_base.dart';
import 'package:sapatekno_mvvm/config/variable_config.dart';
import 'package:sapatekno_mvvm/data/net/model/page_net_model.dart';
import 'package:sapatekno_mvvm/data/net/model/user_net_model.dart';
import 'package:sapatekno_mvvm/data/net/repo/user_net_repo.dart';

enum LoadType { init, refresh, loadMore }

class CounterPageVM extends ViewModelBase {
  final UserNetRepo _userRepository = UserNetRepo();
  final RefreshController refreshController = RefreshController(initialRefresh: false);

  int page = 1;
  int totalPages = 1;
  List<UserNetModel>? listUser = [];

  @override
  void init() {
    showDebugBtn(context, btnColor: Colors.blue);
    super.init();
  }

  @override
  void onBuild() {
    super.onBuild();

    fetchUsers(loadType: LoadType.init);
  }

  void fetchUsers({required LoadType loadType}) async {
    bool isFetchNeeded = true;
    PageNetModel? response;

    switch (loadType) {
      case LoadType.init:
        showloading(true);
        page = 1;
        break;
      case LoadType.refresh:
        page = 1;
        break;
      case LoadType.loadMore:
        page++;
        isFetchNeeded = page <= totalPages;
        break;
    }

    if (isFetchNeeded) {
      response = await _userRepository.getAllUsers(page: page);
      totalPages = response?.totalPages ?? 1;
      if (loadType != LoadType.loadMore) listUser?.clear();
      response?.data?.forEach((data) => listUser?.add(data));
    }

    switch (loadType) {
      case LoadType.init:
        showloading(false);
        refreshController.resetNoData();
        break;
      case LoadType.refresh:
        refreshController.refreshCompleted();
        refreshController.resetNoData();
        showAlert(message: 'Data has been refreshed', alertType: AlertType.normal);
        break;
      case LoadType.loadMore:
        isFetchNeeded ? refreshController.loadComplete() : refreshController.loadNoData();
        showAlert(message: isFetchNeeded ? 'Data has been loaded' : 'No more data avaliable', alertType: AlertType.normal);
        break;
    }

    notifyListeners();
  }
}
