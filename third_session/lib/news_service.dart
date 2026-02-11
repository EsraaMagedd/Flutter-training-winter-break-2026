import 'package:dio/dio.dart';
import 'package:third_session/news_item.dart';

class NewsService {
  final _dio = Dio();

  final String baseUrl = 'https://newsapi.org/v2/';
  final String apiKey = '2331900ba9604bb79ac7c9943306ba6c';

  Future<List<NewsItem>> getHeadlinesNews(String? category)
  async {
    final response = await _dio.get
      ('$baseUrl/top-headlines?country=us&apiKey=$apiKey&category=$category');

    if (response.statusCode == 200) {
      List articles = response.data['articles'];
      return articles.map((article) => NewsItem.fromJson(article)).toList();
    } else {
      throw Exception('Failed to load news');
    }
  }
}