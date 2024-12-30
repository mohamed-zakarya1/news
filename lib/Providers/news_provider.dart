import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news/Models/news_model.dart';
import 'package:news/Services/news_service.dart';

class NewsProvider extends ChangeNotifier{
  NewsModel? model;
  fetchAPI(category) async {
    model = await NewsService.generateArticles(category);
    notifyListeners();
  }
}