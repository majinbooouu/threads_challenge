import 'package:flutter/material.dart';
import 'package:threads_challenge/models/darkmode_config_model.dart';
import 'package:threads_challenge/repos/darkmode_config_repo.dart';

class DarkModeConfigViewModel extends ChangeNotifier {
  final DarModeConfigRepository _repository;

  late final DarkModeConfigModel _model =
      DarkModeConfigModel(dark: _repository.isDarked());

  DarkModeConfigViewModel(this._repository);

  bool get darked => _model.dark;

  void setDarked(bool value) {
    _repository.setDark(value);
    _model.dark = value;
    notifyListeners();
  }
}
