// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'package:flutter_mvvm_template/ui/beginner/state/beginner_view_state.dart';

final beginnerViewModelProvider =
    StateNotifierProvider.autoDispose<BeginnerViewModel, BeginnerViewState>(
        (ref) {
  return BeginnerViewModel();
});

class BeginnerViewModel extends StateNotifier<BeginnerViewState> {
  BeginnerViewModel() : super(const BeginnerViewState()) {
    addTitles();
  }

  Future<void> addTitles() async {
    const titles = ["a", "b", "c", "d", "e"];
    state = state.copyWith(titles: titles);
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
