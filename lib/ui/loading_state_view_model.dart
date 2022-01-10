// Package imports:
import 'package:hooks_riverpod/hooks_riverpod.dart';

final loadingStateViewModelProvider =
    StateNotifierProvider.autoDispose<LoadingStateViewModel, bool>((ref) {
  return LoadingStateViewModel();
});

class LoadingStateViewModel extends StateNotifier<bool> {
  LoadingStateViewModel() : super(false);

  Future<dynamic> whileLoading(Future Function() future) {
    return Future.microtask(toLoading)
        .then((_) => future())
        .whenComplete(toIdle);
  }

  void toLoading() {
    if (!state) state = !state;
  }

  void toIdle() {
    if (state) state = !state;
  }
}
