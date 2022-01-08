// Project imports:
import 'package:flutter_mvvm_template/data/model/article.dart';
import 'package:flutter_mvvm_template/data/model/response/result.dart';

abstract class ArticleRepository {
  Future<Result<List<Article>>> fetchArticles();
}
