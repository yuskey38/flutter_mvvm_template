import 'package:flutter/material.dart';
import 'package:flutter_mvvm_template/view_models/article_list_view_model.dart';
import 'package:flutter_mvvm_template/states/article_list_view_state.dart';
import 'package:flutter_mvvm_template/views/article_list_tile.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_mvvm_template/gen/l10n/l10n.dart';

class ArticleListView extends HookConsumerWidget {
  const ArticleListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(articleListViewModel.notifier);
    final state = ref.watch(articleListViewModel);

    return Scaffold(
        appBar: AppBar(title: Text(L10n.of(context)!.hello)),
        body: RefreshIndicator(
            child: _buildListView(state),
            onRefresh: () => viewModel.fetchArticles()));
  }

  Widget _buildListView(ArticleListViewState state) {
    return ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 8),
        itemBuilder: (context, index) {
          return ArticleListTile(article: state.articles[index]);
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: state.articles.length);
  }
}
