import 'package:exampe/screen/music/provide/music_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MusicScreen extends StatefulWidget {
  const MusicScreen({super.key});

  @override
  State<MusicScreen> createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  MusicProvider? providerr;
  MusicProvider? providerw;

  @override
  void initState() {
    super.initState();
    context.read<MusicProvider>().getmusicData();
  }

  @override
  Widget build(BuildContext context) {
    providerr = context.read<MusicProvider>();
    providerw = context.watch<MusicProvider>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Music",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
          itemCount: providerw!.musicl2.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'music');
                        },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(
                            "${providerw!.musicl2[index].dataModel!.image}",
                            fit: BoxFit.cover,
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${providerw!.musicl2[index].song}",
                            style: TextStyle(color: Colors.white,fontSize: 18),
                          ),
                          Text(
                            "${providerw!.musicl2[index].Album}",
                            style: TextStyle(color: Colors.white,fontSize: 18),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            );
          },
        ),
        backgroundColor: Colors.black,
      ),
    );
  }
}
