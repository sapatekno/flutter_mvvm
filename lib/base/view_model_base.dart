import 'package:flutter/material.dart';
import 'package:pmvvm/pmvvm.dart';
import 'package:sapatekno_mvvm/config/variable_config.dart';

abstract class ViewModelBase extends ViewModel {
  bool isLoading = false;

  showAlert({required String message, required AlertType alertType}) {
    SnackBar snackBar = SnackBar(
      content: Text(message),
      backgroundColor: alertType == AlertType.error ? Colors.red : null,
      duration: const Duration(milliseconds: 1500),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  showloading(bool enable) {
    isLoading = enable;
    notifyListeners();
  }
}
