class MusicModel{
  String? song,Album;
  DateModel? dateModel;

  List<String> singer=[];

  MusicModel({this.song, this.Album, this.dateModel});

  factory MusicModel.mapToModele(m1){
    return MusicModel(
      song: m1['song'],
      Album: m1['Album'],
      dateModel: DateModel.mapToModel(m1['data'])
    );
  }

}
class DateModel{
  String? image,url;

  DateModel({this.image, this.url});

  factory DateModel.mapToModel(m1){
    return DateModel(
      image: m1['image'],
      url: m1['url'],
    );
  }
}