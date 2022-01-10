// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_mvvm_template/data/model/article.dart';
import 'package:flutter_mvvm_template/ui/article/view_models/article_list_view_model.dart';
import 'package:flutter_mvvm_template/ui/beginner/state/beginner_view_state.dart';

final beginnerViewModelProvider =
    StateNotifierProvider.autoDispose<BeginnerViewModel, BeginnerViewState>(
        (ref) {
  return BeginnerViewModel(ref.read);
});

class BeginnerViewModel extends StateNotifier<BeginnerViewState> {
  BeginnerViewModel(this._reader) : super(const BeginnerViewState()) {
    addTitles();
  }

  final Reader _reader;

  late final List<Article> _articles =
      _reader(articleListViewModelProvider).articles;

  Future<void> addTitles() async {
    state = state.copyWith(
        titles: _articles.map((article) => article.title).toList());
  }

  void good(String title) {
    var saved = List.of(state.saved);
    if (state.saved.contains(title)) {
      saved.remove(title);
    } else {
      saved.add(title);
    }
    state = state.copyWith(saved: saved);
  }
}
