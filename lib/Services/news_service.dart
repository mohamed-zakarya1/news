import 'package:dio/dio.dart';
import 'package:news/Models/news_model.dart';
class NewsService {
  static Dio dio = Dio();
  static generateArticles(category) async {
    try {
      category ??= 'general';
      Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=02a63347dba54e61ad8312004419737a&category=$category');
      if (response.statusCode == 200) {
        return NewsModel.fromJson(response.data);
      } else {
        throw Exception(response.statusCode);
      }
    } catch (e) {
      throw Exception('$e');
    }
  }
}