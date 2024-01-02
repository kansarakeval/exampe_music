import 'package:exampe/screen/music/view/music_screen.dart';
import 'package:exampe/screen/musicplay/veiw/musicplay_screen.dart';
import 'package:flutter/material.dart';

Map<String,WidgetBuilder> app_routes={
  '/':(context) => const MusicScreen(),
  'music':(context) => const MusicPlayScreen(),
};
