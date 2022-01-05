import 'package:flutter_mvvm_template/models/article.dart';
import 'package:flutter_mvvm_template/models/response/result.dart';

abstract class ArticleRepository {
  Future<Result<List<Article>>> fetchArticles();
}
