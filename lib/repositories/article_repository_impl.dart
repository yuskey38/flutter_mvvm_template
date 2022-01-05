import 'package:dio/dio.dart';
import 'package:flutter_mvvm_template/apis/qiita_api_client.dart';
import 'package:flutter_mvvm_template/models/article.dart';
import 'package:flutter_mvvm_template/repositories/article_repository.dart';
import 'package:flutter_mvvm_template/models/response/result.dart';

class ArticleRepositoryImpl with ArticleRepository {
  final QiitaApiClient _client;

  ArticleRepositoryImpl([QiitaApiClient? client])
      : _client = client ?? QiitaApiClient(Dio());

  @override
  Future<Result<List<Article>>> fetchArticles() {
    return _client
        .fetchArticles()
        .then((articles) => Result<List<Article>>.success(articles))
        .catchError((error) => Result<List<Article>>.failure(error));
  }
}
