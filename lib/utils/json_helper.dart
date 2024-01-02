import 'dart:convert';
import 'package:exampe/screen/music/Model/music_model.dart';
import 'package:flutter/services.dart';

class JsonHelper{
  Future<List<MusicModel>> musicToList() async {
    var musicString = await rootBundle.loadString("assets/json/music.json");

    List music = jsonDecode(musicString);

    List<MusicModel> musicModelList =
    music.map((e) => MusicModel.mapToModele(e)).toList();

    return musicModelList;
  }
}