import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:news_api/model/news_list_model.dart';

class NewsProvider with ChangeNotifier {
  NewsListModel? _newsList;
  bool _isLoading = false;
  String _errorMessage = '';

  NewsListModel? get newsList => _newsList;
  bool get isLoading => _isLoading;
  String get errorMessage => _errorMessage;

Future<void> fetchNews(String apiKey) async {
  final url = Uri.parse(
      'https://newsapi.org/v2/top-headlines/sources?apiKey=$apiKey');

  _isLoading = true;
  _errorMessage = '';
  notifyListeners();

try {
  final response = await http.get(url);

  if (response.statusCode == 200) {
    _newsList = newsListModelFromJson(response.body);
   
  } else {
    _errorMessage = 'Failed to load news';
  }
} catch (e) {
  _errorMessage = 'Error occurred: $e';
} finally {
  _isLoading = false;
  notifyListeners();
}

}
}
