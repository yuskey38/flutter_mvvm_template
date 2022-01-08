// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:flutter_mvvm_template/data/model/article.dart';

part 'article_list_view_state.freezed.dart';

@freezed
class ArticleListViewState with _$ArticleListViewState {
  const factory ArticleListViewState({
    @Default([]) List<Article> articles,
  }) = _ArticleListViewState;
}
