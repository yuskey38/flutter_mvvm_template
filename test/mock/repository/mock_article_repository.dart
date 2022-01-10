// Project imports:
import 'package:flutter_mvvm_template/data/model/article.dart';
import 'package:flutter_mvvm_template/data/model/response/result.dart';
import 'package:flutter_mvvm_template/data/repository/article_repository_impl.dart';
import '../../helper/article_factory.dart';

class MockArticleRepository implements ArticleRepositoryImpl {
  @override
  Future<Result<List<Article>>> fetchArticles() async {
    return Result.success(ArticleFactory.generateArticles(2));
  }
}
