import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_mvvm_template/models/article.dart';

part 'article_list_view_state.freezed.dart';

@freezed
class ArticleListViewState with _$ArticleListViewState {
  const factory ArticleListViewState({
    @Default([]) List<Article> articles,
  }) = _ArticleListViewState;
}
