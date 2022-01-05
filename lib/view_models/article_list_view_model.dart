import 'package:flutter_mvvm_template/repositories/article_repository.dart';
import 'package:flutter_mvvm_template/repositories/article_repository_impl.dart';
import 'package:flutter_mvvm_template/states/article_list_view_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final articleListViewModel = StateNotifierProvider.autoDispose<
    ArticleListViewModel, ArticleListViewState>((ref) {
  return ArticleListViewModel(ArticleRepositoryImpl());
});

class ArticleListViewModel extends StateNotifier<ArticleListViewState> {
  final ArticleRepository repository;

  ArticleListViewModel(this.repository) : super(const ArticleListViewState()) {
    fetchArticles();
  }

  Future<void> fetchArticles() async {
    await repository.fetchArticles().then((result) {
      result.when(success: (articles) {
        state = state.copyWith(articles: articles);
      }, failure: (error) {
        // ignore: avoid_print
        print(error.message);
      });
    });
  }
}
