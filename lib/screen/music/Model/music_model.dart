class MusicModel{
  String? song,Album;
  DataModel? dataModel;

  List<String> singer=['singer'];

  MusicModel({this.song, this.Album, this.dataModel});

  factory MusicModel.mapToModele(m1){
    return MusicModel(
      song: m1['song'],
      Album: m1['Album'],
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