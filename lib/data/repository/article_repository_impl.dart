// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_mvvm_template/data/api/qiita_api_client.dart';
import 'package:flutter_mvvm_template/data/model/article.dart';
import 'package:flutter_mvvm_template/data/model/response/result.dart';
import 'package:flutter_mvvm_template/data/repository/article_repository.dart';

final articleRepositoryProvider =
    Provider((ref) => ArticleRepositoryImpl(ref.read));

class ArticleRepositoryImpl implements ArticleRepository {
  ArticleRepositoryImpl(this._reader);

  final Reader _reader;

  late final QiitaApiClient _qiitaApiClient = _reader(qiitaApiClientProvider);

  @override
  Future<Result<List<Article>>> fetchArticles() {
    return _qiitaApiClient
        .fetchArticles()
        .then((articles) => Result<List<Article>>.success(articles))
        .catchError((error) => Result<List<Article>>.failure(error));
  }
}
