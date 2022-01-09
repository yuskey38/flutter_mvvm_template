// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_mvvm_template/ui/article/views/article_list_view.dart';
import 'package:flutter_mvvm_template/ui/beginner/state/beginner_view_state.dart';
import 'package:flutter_mvvm_template/ui/beginner/view/saved_title_view.dart';
import 'package:flutter_mvvm_template/ui/beginner/view_model/beginner_view_model.dart';

class BeginnerView extends HookConsumerWidget {
  const BeginnerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(beginnerViewModelProvider.notifier);
    final state = ref.watch(beginnerViewModelProvider);

    return MaterialApp(
      title: 'Beginner',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Beginner'),
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacement(context, ArticleListView.route());
                }),
            actions: [
              IconButton(
                icon: const Icon(Icons.list),
                onPressed: () {
                  Navigator.push(
                      context, SavedTitleView.route(initialSaved: state.saved));
                },
                tooltip: 'Saved Suggestions',
              ),
            ],
          ),
          body: _buildSuggestions(viewModel, state)),
    );
  }

  Widget _buildSuggestions(
      BeginnerViewModel viewModel, BeginnerViewState state) {
    final titles = state.titles;
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, i) {
        if (i.isOdd) {
          return const Divider();
        }
        final index = i ~/ 2;
        return _buildRow(viewModel, state, titles[index]);
      },
      itemCount: state.titles.length * 2,
    );
  }

  Widget _buildRow(
      BeginnerViewModel viewModel, BeginnerViewState state, String title) {
    final alreadySaved = state.saved.contains(title);
    return ListTile(
        title: Text(
          title,
        ),
        trailing: Icon(
          alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null,
          semanticLabel: alreadySaved ? 'Remove from saved' : 'Save',
        ),
        onTap: () {
          viewModel.good(title);
        });
  }

  static Route<dynamic> route() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) {
        return const BeginnerView();
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
