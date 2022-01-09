// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beginner_view_state.freezed.dart';

@freezed
class BeginnerViewState with _$BeginnerViewState {
  const factory BeginnerViewState({
    @Default([]) List<String> titles,
    @Default([]) List<String> saved,
  }) = _BeginnerViewState;
}
