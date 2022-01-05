// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'article_list_view_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ArticleListViewStateTearOff {
  const _$ArticleListViewStateTearOff();

  _ArticleListViewState call({List<Article> articles = const []}) {
    return _ArticleListViewState(
      articles: articles,
    );
  }
}

/// @nodoc
const $ArticleListViewState = _$ArticleListViewStateTearOff();

/// @nodoc
mixin _$ArticleListViewState {
  List<Article> get articles => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticleListViewStateCopyWith<ArticleListViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticleListViewStateCopyWith<$Res> {
  factory $ArticleListViewStateCopyWith(ArticleListViewState value,
          $Res Function(ArticleListViewState) then) =
      _$ArticleListViewStateCopyWithImpl<$Res>;
  $Res call({List<Article> articles});
}

/// @nodoc
class _$ArticleListViewStateCopyWithImpl<$Res>
    implements $ArticleListViewStateCopyWith<$Res> {
  _$ArticleListViewStateCopyWithImpl(this._value, this._then);

  final ArticleListViewState _value;
  // ignore: unused_field
  final $Res Function(ArticleListViewState) _then;

  @override
  $Res call({
    Object? articles = freezed,
  }) {
    return _then(_value.copyWith(
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc
abstract class _$ArticleListViewStateCopyWith<$Res>
    implements $ArticleListViewStateCopyWith<$Res> {
  factory _$ArticleListViewStateCopyWith(_ArticleListViewState value,
          $Res Function(_ArticleListViewState) then) =
      __$ArticleListViewStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Article> articles});
}

/// @nodoc
class __$ArticleListViewStateCopyWithImpl<$Res>
    extends _$ArticleListViewStateCopyWithImpl<$Res>
    implements _$ArticleListViewStateCopyWith<$Res> {
  __$ArticleListViewStateCopyWithImpl(
      _ArticleListViewState _value, $Res Function(_ArticleListViewState) _then)
      : super(_value, (v) => _then(v as _ArticleListViewState));

  @override
  _ArticleListViewState get _value => super._value as _ArticleListViewState;

  @override
  $Res call({
    Object? articles = freezed,
  }) {
    return _then(_ArticleListViewState(
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$_ArticleListViewState implements _ArticleListViewState {
  const _$_ArticleListViewState({this.articles = const []});

  @JsonKey()
  @override
  final List<Article> articles;

  @override
  String toString() {
    return 'ArticleListViewState(articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ArticleListViewState &&
            const DeepCollectionEquality().equals(other.articles, articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(articles));

  @JsonKey(ignore: true)
  @override
  _$ArticleListViewStateCopyWith<_ArticleListViewState> get copyWith =>
      __$ArticleListViewStateCopyWithImpl<_ArticleListViewState>(
          this, _$identity);
}

abstract class _ArticleListViewState implements ArticleListViewState {
  const factory _ArticleListViewState({List<Article> articles}) =
      _$_ArticleListViewState;

  @override
  List<Article> get articles;
  @override
  @JsonKey(ignore: true)
  _$ArticleListViewStateCopyWith<_ArticleListViewState> get copyWith =>
      throw _privateConstructorUsedError;
}
