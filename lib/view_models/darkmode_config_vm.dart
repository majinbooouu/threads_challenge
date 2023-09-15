import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:threads_challenge/models/darkmode_config_model.dart';
import 'package:threads_challenge/repos/darkmode_config_repo.dart';

class DarkModeConfigViewModel extends Notifier<DarkModeConfigModel> {
  final DarModeConfigRepository _repository;

  DarkModeConfigViewModel(this._repository);

  void setDarked(bool value) {
    _repository.setDark(value);
    state = DarkModeConfigModel(dark: value);
  }

  @override
  DarkModeConfigModel build() {
    return DarkModeConfigModel(dark: _repository.isDarked());
  }
}

final darkmodeConfigProvider =
    NotifierProvider<DarkModeConfigViewModel, DarkModeConfigModel>(
  () => throw UnimplementedError(),
);
