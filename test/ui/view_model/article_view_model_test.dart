// Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_mvvm_template/data/model/article.dart';
import 'package:flutter_mvvm_template/data/repository/article_repository_impl.dart';
import 'package:flutter_mvvm_template/ui/article/view_models/article_list_view_model.dart';
import '../../helper/article_factory.dart';
import '../../mock/repository/mock_article_repository.dart';

void main() {
  test('ArticleListViewModelTest', () async {
    final container = ProviderContainer(
      overrides: [
        articleRepositoryProvider.overrideWithValue(MockArticleRepository())
      ],
    );
    final viewModel = container.read(articleListViewModelProvider.notifier);

    await viewModel.fetchArticles();

    List<Article> expectArticles = ArticleFactory.generateArticles(2);
    List<Article> actualArticles = viewModel.debugState.articles;

    expect(expectArticles.length, actualArticles.length);

    expectArticles.asMap().forEach((int index, expectArticle) {
      Article actualArticle = actualArticles[index];
      expect(expectArticle.id, actualArticle.id);
      expect(expectArticle.title, actualArticle.title);
      expect(expectArticle.url, actualArticle.url);
      expect(expectArticle.user.id, actualArticle.user.id);
      expect(expectArticle.user.profileImageUrl,
          actualArticle.user.profileImageUrl);
    });
  });
}
