// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_mvvm_template/ui/article/states/article_list_view_state.dart';
import 'package:flutter_mvvm_template/ui/article/view_models/article_list_view_model.dart';
import 'package:flutter_mvvm_template/ui/article/views/article_list_tile.dart';
import 'package:flutter_mvvm_template/ui/beginner/view/begginer_view.dart';
import 'package:flutter_mvvm_template/ui/hook/use_l10n.dart';

class ArticleListView extends HookConsumerWidget {
  const ArticleListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(articleListViewModelProvider.notifier);
    final state = ref.watch(articleListViewModelProvider);
    final l10n = useL10n();

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.hello),
        leading: IconButton(
          icon: const Icon(Icons.star_rounded),
          onPressed: () {
            Navigator.pushReplacement(context, BeginnerView.route());
          },
        ),
      ),
      body: RefreshIndicator(
          child: _buildListView(state),
          onRefresh: () => viewModel.fetchArticles()),
    );
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

  static Route<dynamic> route() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return const ArticleListView();
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const double begin = 0.0;
        const double end = 1.0;
        final Animatable<double> tween = Tween(begin: begin, end: end)
            .chain(CurveTween(curve: Curves.easeInOut));
        final Animation<double> doubleAnimation = animation.drive(tween);
        return FadeTransition(
          opacity: doubleAnimation,
          child: child,
        );
      },
    );
  }
}
