// Package imports:
import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:retrofit/http.dart';

// Project imports:
import 'package:flutter_mvvm_template/data/model/article.dart';

part 'qiita_api_client.g.dart';

final qiitaApiClientProvider = Provider(
    (ref) => QiitaApiClient(Dio(), baseUrl: "https://qiita.com/api/v2"));

@RestApi()
abstract class QiitaApiClient {
  factory QiitaApiClient(Dio dio, {String baseUrl}) = _QiitaApiClient;

  @GET("/items")
  Future<List<Article>> fetchArticles();
}
