// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:flutter_mvvm_template/data/api/qiita_api_client.dart';
import 'package:flutter_mvvm_template/data/model/article.dart';
import 'package:flutter_mvvm_template/data/model/response/result.dart';
import 'package:flutter_mvvm_template/data/repository/article_repository.dart';

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
