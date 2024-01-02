import 'package:exampe/screen/music/Model/music_model.dart';
import 'package:exampe/utils/json_helper.dart';
import 'package:flutter/material.dart';


class MusicProvider with ChangeNotifier {
  List<MusicModel> musicl2 = [];

  Future<void> getUserData() async {
    JsonHelper jsonHelper = JsonHelper();
    List<MusicModel> musicl1 = await jsonHelper.musicToList();
    musicl2 = musicl1;
    notifyListeners();
  }
}
