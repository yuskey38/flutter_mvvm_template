// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'beginner_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BeginnerViewStateTearOff {
  const _$BeginnerViewStateTearOff();

  _BeginnerViewState call(
      {List<String> titles = const [], List<String> saved = const []}) {
    return _BeginnerViewState(
      titles: titles,
      saved: saved,
    );
  }
}

/// @nodoc
const $BeginnerViewState = _$BeginnerViewStateTearOff();

/// @nodoc
mixin _$BeginnerViewState {
  List<String> get titles => throw _privateConstructorUsedError;
  List<String> get saved => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BeginnerViewStateCopyWith<BeginnerViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeginnerViewStateCopyWith<$Res> {
  factory $BeginnerViewStateCopyWith(
          BeginnerViewState value, $Res Function(BeginnerViewState) then) =
      _$BeginnerViewStateCopyWithImpl<$Res>;
  $Res call({List<String> titles, List<String> saved});
}

/// @nodoc
class _$BeginnerViewStateCopyWithImpl<$Res>
    implements $BeginnerViewStateCopyWith<$Res> {
  _$BeginnerViewStateCopyWithImpl(this._value, this._then);

  final BeginnerViewState _value;
  // ignore: unused_field
  final $Res Function(BeginnerViewState) _then;

  @override
  $Res call({
    Object? titles = freezed,
    Object? saved = freezed,
  }) {
    return _then(_value.copyWith(
      titles: titles == freezed
          ? _value.titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$BeginnerViewStateCopyWith<$Res>
    implements $BeginnerViewStateCopyWith<$Res> {
  factory _$BeginnerViewStateCopyWith(
          _BeginnerViewState value, $Res Function(_BeginnerViewState) then) =
      __$BeginnerViewStateCopyWithImpl<$Res>;
  @override
  $Res call({List<String> titles, List<String> saved});
}

/// @nodoc
class __$BeginnerViewStateCopyWithImpl<$Res>
    extends _$BeginnerViewStateCopyWithImpl<$Res>
    implements _$BeginnerViewStateCopyWith<$Res> {
  __$BeginnerViewStateCopyWithImpl(
      _BeginnerViewState _value, $Res Function(_BeginnerViewState) _then)
      : super(_value, (v) => _then(v as _BeginnerViewState));

  @override
  _BeginnerViewState get _value => super._value as _BeginnerViewState;

  @override
  $Res call({
    Object? titles = freezed,
    Object? saved = freezed,
  }) {
    return _then(_BeginnerViewState(
      titles: titles == freezed
          ? _value.titles
          : titles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      saved: saved == freezed
          ? _value.saved
          : saved // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_BeginnerViewState implements _BeginnerViewState {
  const _$_BeginnerViewState({this.titles = const [], this.saved = const []});

  @JsonKey()
  @override
  final List<String> titles;
  @JsonKey()
  @override
  final List<String> saved;

  @override
  String toString() {
    return 'BeginnerViewState(titles: $titles, saved: $saved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BeginnerViewState &&
            const DeepCollectionEquality().equals(other.titles, titles) &&
            const DeepCollectionEquality().equals(other.saved, saved));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(titles),
      const DeepCollectionEquality().hash(saved));

  @JsonKey(ignore: true)
  @override
  _$BeginnerViewStateCopyWith<_BeginnerViewState> get copyWith =>
      __$BeginnerViewStateCopyWithImpl<_BeginnerViewState>(this, _$identity);
}

abstract class _BeginnerViewState implements BeginnerViewState {
  const factory _BeginnerViewState({List<String> titles, List<String> saved}) =
      _$_BeginnerViewState;

  @override
  List<String> get titles;
  @override
  List<String> get saved;
  @override
  @JsonKey(ignore: true)
  _$BeginnerViewStateCopyWith<_BeginnerViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
