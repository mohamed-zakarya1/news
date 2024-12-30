class NewsModel {
  List model;
  int total;
  NewsModel({required this.model, required this.total});
  factory NewsModel.fromJson(Map json) {
    return NewsModel(model: json['articles'], total: json['totalResults']);
  }
}