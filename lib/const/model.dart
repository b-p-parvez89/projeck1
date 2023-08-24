class VideoModel {
  static final video = [
    Model(
        id: 01,
        name: "Boba Tannel",
        des: "The Anupam Roy Song",
        url: "asset/anubest.mp4"),
    Model(
        id: 02,
        name: "Ami Anek durer manush",
        des: "The Anupam Roy Song",
        url: "asset/durer_manus.mp4"),
    Model(
        id: 03,
        name: "Ahare",
        des: "The Minar Rahman Song",
        url: "asset/ami_ki_dekhechi.mp4"),
    Model(
        id: 04,
        name: "Bazi",
        des: "One of the best song Of Belal Khan",
        url: "asset/bazi_belal_khan.mp4"),
    Model(
        id: 05,
        name: "Ghor Bari",
        des: "The Anupam Roy Song sort",
        url: "asset/ghor_bari.mp4"),
    Model(
        id: 06,
        name: "Ish Debashis",
        des: "The Anupam Roy",
        url: "asset/Ish_Debashish.mp4"),
  ];
}

class Model {
  int id;
  String name;
  String des;
  String url;

  Model(
      {required this.id,
      required this.name,
      required this.des,
      required this.url});
}
