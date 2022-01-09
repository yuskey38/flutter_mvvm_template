// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_mvvm_template/ui/beginner/state/beginner_view_state.dart';
import 'package:flutter_mvvm_template/ui/beginner/view_model/beginner_view_model.dart';

class SavedTitleView extends HookConsumerWidget {
  const SavedTitleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialSaved =
        ModalRoute.of(context)?.settings.arguments as List<String>;

    final viewModel = ref.watch(beginnerViewModelProvider.notifier);
    final state = ref.watch(beginnerViewModelProvider);

    return MaterialApp(
      title: 'Beginner',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Beginner'),
            actions: [
              IconButton(
                icon: const Icon(Icons.list),
                onPressed: () {
                  Navigator.pop(context);
                },
                tooltip: 'Saved Suggestions',
              ),
            ],
          ),
          body: _buildSuggestions(viewModel, state, initialSaved)),
    );
  }

  Widget _buildSuggestions(BeginnerViewModel viewModel, BeginnerViewState state,
      List<String> initialSaved) {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemBuilder: (context, i) {
        if (i.isOdd) {
          return const Divider();
        }
        final index = i ~/ 2;
        return _buildRow(viewModel, state, initialSaved[index]);
      },
      itemCount: initialSaved.length * 2,
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

  static Route<dynamic> route({
    required List<String> initialSaved,
  }) {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const SavedTitleView(),
      settings: RouteSettings(arguments: initialSaved),
    );
  }
}
