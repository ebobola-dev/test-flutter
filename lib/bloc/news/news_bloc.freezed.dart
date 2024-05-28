// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() markAllReaded,
    required TResult Function(String articleId) markOneReaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? markAllReaded,
    TResult? Function(String articleId)? markOneReaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? markAllReaded,
    TResult Function(String articleId)? markOneReaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_MarkAllReaded value) markAllReaded,
    required TResult Function(_MarkOneReaded value) markOneReaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_MarkAllReaded value)? markAllReaded,
    TResult? Function(_MarkOneReaded value)? markOneReaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_MarkAllReaded value)? markAllReaded,
    TResult Function(_MarkOneReaded value)? markOneReaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsEventCopyWith<$Res> {
  factory $NewsEventCopyWith(NewsEvent value, $Res Function(NewsEvent) then) =
      _$NewsEventCopyWithImpl<$Res, NewsEvent>;
}

/// @nodoc
class _$NewsEventCopyWithImpl<$Res, $Val extends NewsEvent>
    implements $NewsEventCopyWith<$Res> {
  _$NewsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadImplCopyWith<$Res> {
  factory _$$LoadImplCopyWith(
          _$LoadImpl value, $Res Function(_$LoadImpl) then) =
      __$$LoadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadImplCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$LoadImpl>
    implements _$$LoadImplCopyWith<$Res> {
  __$$LoadImplCopyWithImpl(_$LoadImpl _value, $Res Function(_$LoadImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadImpl implements _Load {
  const _$LoadImpl();

  @override
  String toString() {
    return 'NewsEvent.load()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() markAllReaded,
    required TResult Function(String articleId) markOneReaded,
  }) {
    return load();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? markAllReaded,
    TResult? Function(String articleId)? markOneReaded,
  }) {
    return load?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? markAllReaded,
    TResult Function(String articleId)? markOneReaded,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_MarkAllReaded value) markAllReaded,
    required TResult Function(_MarkOneReaded value) markOneReaded,
  }) {
    return load(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_MarkAllReaded value)? markAllReaded,
    TResult? Function(_MarkOneReaded value)? markOneReaded,
  }) {
    return load?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_MarkAllReaded value)? markAllReaded,
    TResult Function(_MarkOneReaded value)? markOneReaded,
    required TResult orElse(),
  }) {
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _Load implements NewsEvent {
  const factory _Load() = _$LoadImpl;
}

/// @nodoc
abstract class _$$MarkAllReadedImplCopyWith<$Res> {
  factory _$$MarkAllReadedImplCopyWith(
          _$MarkAllReadedImpl value, $Res Function(_$MarkAllReadedImpl) then) =
      __$$MarkAllReadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MarkAllReadedImplCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$MarkAllReadedImpl>
    implements _$$MarkAllReadedImplCopyWith<$Res> {
  __$$MarkAllReadedImplCopyWithImpl(
      _$MarkAllReadedImpl _value, $Res Function(_$MarkAllReadedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$MarkAllReadedImpl implements _MarkAllReaded {
  const _$MarkAllReadedImpl();

  @override
  String toString() {
    return 'NewsEvent.markAllReaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MarkAllReadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() markAllReaded,
    required TResult Function(String articleId) markOneReaded,
  }) {
    return markAllReaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? markAllReaded,
    TResult? Function(String articleId)? markOneReaded,
  }) {
    return markAllReaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? markAllReaded,
    TResult Function(String articleId)? markOneReaded,
    required TResult orElse(),
  }) {
    if (markAllReaded != null) {
      return markAllReaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_MarkAllReaded value) markAllReaded,
    required TResult Function(_MarkOneReaded value) markOneReaded,
  }) {
    return markAllReaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_MarkAllReaded value)? markAllReaded,
    TResult? Function(_MarkOneReaded value)? markOneReaded,
  }) {
    return markAllReaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_MarkAllReaded value)? markAllReaded,
    TResult Function(_MarkOneReaded value)? markOneReaded,
    required TResult orElse(),
  }) {
    if (markAllReaded != null) {
      return markAllReaded(this);
    }
    return orElse();
  }
}

abstract class _MarkAllReaded implements NewsEvent {
  const factory _MarkAllReaded() = _$MarkAllReadedImpl;
}

/// @nodoc
abstract class _$$MarkOneReadedImplCopyWith<$Res> {
  factory _$$MarkOneReadedImplCopyWith(
          _$MarkOneReadedImpl value, $Res Function(_$MarkOneReadedImpl) then) =
      __$$MarkOneReadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String articleId});
}

/// @nodoc
class __$$MarkOneReadedImplCopyWithImpl<$Res>
    extends _$NewsEventCopyWithImpl<$Res, _$MarkOneReadedImpl>
    implements _$$MarkOneReadedImplCopyWith<$Res> {
  __$$MarkOneReadedImplCopyWithImpl(
      _$MarkOneReadedImpl _value, $Res Function(_$MarkOneReadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articleId = null,
  }) {
    return _then(_$MarkOneReadedImpl(
      articleId: null == articleId
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$MarkOneReadedImpl implements _MarkOneReaded {
  const _$MarkOneReadedImpl({required this.articleId});

  @override
  final String articleId;

  @override
  String toString() {
    return 'NewsEvent.markOneReaded(articleId: $articleId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarkOneReadedImpl &&
            (identical(other.articleId, articleId) ||
                other.articleId == articleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MarkOneReadedImplCopyWith<_$MarkOneReadedImpl> get copyWith =>
      __$$MarkOneReadedImplCopyWithImpl<_$MarkOneReadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() load,
    required TResult Function() markAllReaded,
    required TResult Function(String articleId) markOneReaded,
  }) {
    return markOneReaded(articleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? load,
    TResult? Function()? markAllReaded,
    TResult? Function(String articleId)? markOneReaded,
  }) {
    return markOneReaded?.call(articleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? load,
    TResult Function()? markAllReaded,
    TResult Function(String articleId)? markOneReaded,
    required TResult orElse(),
  }) {
    if (markOneReaded != null) {
      return markOneReaded(articleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Load value) load,
    required TResult Function(_MarkAllReaded value) markAllReaded,
    required TResult Function(_MarkOneReaded value) markOneReaded,
  }) {
    return markOneReaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Load value)? load,
    TResult? Function(_MarkAllReaded value)? markAllReaded,
    TResult? Function(_MarkOneReaded value)? markOneReaded,
  }) {
    return markOneReaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Load value)? load,
    TResult Function(_MarkAllReaded value)? markAllReaded,
    TResult Function(_MarkOneReaded value)? markOneReaded,
    required TResult orElse(),
  }) {
    if (markOneReaded != null) {
      return markOneReaded(this);
    }
    return orElse();
  }
}

abstract class _MarkOneReaded implements NewsEvent {
  const factory _MarkOneReaded({required final String articleId}) =
      _$MarkOneReadedImpl;

  String get articleId;
  @JsonKey(ignore: true)
  _$$MarkOneReadedImplCopyWith<_$MarkOneReadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewsState {
  List<Article> get latestNews => throw _privateConstructorUsedError;
  List<Article> get featuredNews => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewsStateCopyWith<NewsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsStateCopyWith<$Res> {
  factory $NewsStateCopyWith(NewsState value, $Res Function(NewsState) then) =
      _$NewsStateCopyWithImpl<$Res, NewsState>;
  @useResult
  $Res call(
      {List<Article> latestNews, List<Article> featuredNews, bool isLoading});
}

/// @nodoc
class _$NewsStateCopyWithImpl<$Res, $Val extends NewsState>
    implements $NewsStateCopyWith<$Res> {
  _$NewsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestNews = null,
    Object? featuredNews = null,
    Object? isLoading = null,
  }) {
    return _then(_value.copyWith(
      latestNews: null == latestNews
          ? _value.latestNews
          : latestNews // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      featuredNews: null == featuredNews
          ? _value.featuredNews
          : featuredNews // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewsStateImplCopyWith<$Res>
    implements $NewsStateCopyWith<$Res> {
  factory _$$NewsStateImplCopyWith(
          _$NewsStateImpl value, $Res Function(_$NewsStateImpl) then) =
      __$$NewsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Article> latestNews, List<Article> featuredNews, bool isLoading});
}

/// @nodoc
class __$$NewsStateImplCopyWithImpl<$Res>
    extends _$NewsStateCopyWithImpl<$Res, _$NewsStateImpl>
    implements _$$NewsStateImplCopyWith<$Res> {
  __$$NewsStateImplCopyWithImpl(
      _$NewsStateImpl _value, $Res Function(_$NewsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latestNews = null,
    Object? featuredNews = null,
    Object? isLoading = null,
  }) {
    return _then(_$NewsStateImpl(
      latestNews: null == latestNews
          ? _value._latestNews
          : latestNews // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      featuredNews: null == featuredNews
          ? _value._featuredNews
          : featuredNews // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$NewsStateImpl extends _NewsState {
  const _$NewsStateImpl(
      {required final List<Article> latestNews,
      required final List<Article> featuredNews,
      required this.isLoading})
      : _latestNews = latestNews,
        _featuredNews = featuredNews,
        super._();

  final List<Article> _latestNews;
  @override
  List<Article> get latestNews {
    if (_latestNews is EqualUnmodifiableListView) return _latestNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_latestNews);
  }

  final List<Article> _featuredNews;
  @override
  List<Article> get featuredNews {
    if (_featuredNews is EqualUnmodifiableListView) return _featuredNews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_featuredNews);
  }

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'NewsState(latestNews: $latestNews, featuredNews: $featuredNews, isLoading: $isLoading)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsStateImpl &&
            const DeepCollectionEquality()
                .equals(other._latestNews, _latestNews) &&
            const DeepCollectionEquality()
                .equals(other._featuredNews, _featuredNews) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_latestNews),
      const DeepCollectionEquality().hash(_featuredNews),
      isLoading);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsStateImplCopyWith<_$NewsStateImpl> get copyWith =>
      __$$NewsStateImplCopyWithImpl<_$NewsStateImpl>(this, _$identity);
}

abstract class _NewsState extends NewsState {
  const factory _NewsState(
      {required final List<Article> latestNews,
      required final List<Article> featuredNews,
      required final bool isLoading}) = _$NewsStateImpl;
  const _NewsState._() : super._();

  @override
  List<Article> get latestNews;
  @override
  List<Article> get featuredNews;
  @override
  bool get isLoading;
  @override
  @JsonKey(ignore: true)
  _$$NewsStateImplCopyWith<_$NewsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
