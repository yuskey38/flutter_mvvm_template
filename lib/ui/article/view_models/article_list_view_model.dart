// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_mvvm_template/data/repository/article_repository.dart';
import 'package:flutter_mvvm_template/data/repository/article_repository_impl.dart';
import 'package:flutter_mvvm_template/ui/article/states/article_list_view_state.dart';
import 'package:flutter_mvvm_template/ui/loading_state_view_model.dart';

final articleListViewModelProvider = StateNotifierProvider.autoDispose<
    ArticleListViewModel, ArticleListViewState>((ref) {
  return ArticleListViewModel(ref.read);
});

class ArticleListViewModel extends StateNotifier<ArticleListViewState> {
  ArticleListViewModel(this._reader) : super(const ArticleListViewState()) {
    fetchArticles();
  }

  final Reader _reader;

  late final ArticleRepository _repository = _reader(articleRepositoryProvider);
  late final LoadingStateViewModel loading =
      _reader(loadingStateViewModelProvider.notifier);

  Future<void> fetchArticles() async {
    await _repository.fetchArticles().then((result) {
      result.when(success: (articles) {
        if (!mounted) {
          return;
        }
        state = state.copyWith(articles: articles);
      }, failure: (error) {
        // ignore: avoid_print
        print(error.message);
      });
    });
  }
}
