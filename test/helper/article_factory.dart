// Project imports:
import 'package:flutter_mvvm_template/data/model/article.dart';
import 'user_factory.dart';

class ArticleFactory {
  static List<Article> generateArticles(int length) {
    return List<int>.generate(length, (i) => i + 1)
        .map((number) => generateArticle(number))
        .toList();
  }

  static Article generateArticle(int number) {
    return Article(
        id: "id$number",
        title: "title$number",
        url: "url$number",
        user: UserFactory.generateUser(number));
  }
}
