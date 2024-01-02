class MusicModel{
  String? song,Album,singer;
  DataModel? dataModel;

  List<String> Singer1=[];

  MusicModel({this.song, this.Album, this.dataModel,this.singer});

  factory MusicModel.mapToModele(m1){
    return MusicModel(
      song: m1['song'],
      Album: m1['Album'],
      singer: m1['singer'],
      dataModel: DataModel.mapToModel(m1['data'])
    );
  }

}
class DataModel{
  String? image,url;

  DataModel({this.image, this.url});

  factory DataModel.mapToModel(m1){
    return DataModel(
      image: m1['image'],
      url: m1['url'],
    );
  }
}