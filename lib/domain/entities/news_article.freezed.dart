// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$NewsArticle {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get urlToImage => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  /// Create a copy of NewsArticle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NewsArticleCopyWith<NewsArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsArticleCopyWith<$Res> {
  factory $NewsArticleCopyWith(
    NewsArticle value,
    $Res Function(NewsArticle) then,
  ) = _$NewsArticleCopyWithImpl<$Res, NewsArticle>;
  @useResult
  $Res call({String title, String description, String urlToImage, String url});
}

/// @nodoc
class _$NewsArticleCopyWithImpl<$Res, $Val extends NewsArticle>
    implements $NewsArticleCopyWith<$Res> {
  _$NewsArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NewsArticle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? urlToImage = null,
    Object? url = null,
  }) {
    return _then(
      _value.copyWith(
            title:
                null == title
                    ? _value.title
                    : title // ignore: cast_nullable_to_non_nullable
                        as String,
            description:
                null == description
                    ? _value.description
                    : description // ignore: cast_nullable_to_non_nullable
                        as String,
            urlToImage:
                null == urlToImage
                    ? _value.urlToImage
                    : urlToImage // ignore: cast_nullable_to_non_nullable
                        as String,
            url:
                null == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$NewsArticleImplCopyWith<$Res>
    implements $NewsArticleCopyWith<$Res> {
  factory _$$NewsArticleImplCopyWith(
    _$NewsArticleImpl value,
    $Res Function(_$NewsArticleImpl) then,
  ) = __$$NewsArticleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description, String urlToImage, String url});
}

/// @nodoc
class __$$NewsArticleImplCopyWithImpl<$Res>
    extends _$NewsArticleCopyWithImpl<$Res, _$NewsArticleImpl>
    implements _$$NewsArticleImplCopyWith<$Res> {
  __$$NewsArticleImplCopyWithImpl(
    _$NewsArticleImpl _value,
    $Res Function(_$NewsArticleImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of NewsArticle
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? urlToImage = null,
    Object? url = null,
  }) {
    return _then(
      _$NewsArticleImpl(
        title:
            null == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                    as String,
        description:
            null == description
                ? _value.description
                : description // ignore: cast_nullable_to_non_nullable
                    as String,
        urlToImage:
            null == urlToImage
                ? _value.urlToImage
                : urlToImage // ignore: cast_nullable_to_non_nullable
                    as String,
        url:
            null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$NewsArticleImpl implements _NewsArticle {
  const _$NewsArticleImpl({
    required this.title,
    required this.description,
    required this.urlToImage,
    required this.url,
  });

  @override
  final String title;
  @override
  final String description;
  @override
  final String urlToImage;
  @override
  final String url;

  @override
  String toString() {
    return 'NewsArticle(title: $title, description: $description, urlToImage: $urlToImage, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewsArticleImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.urlToImage, urlToImage) ||
                other.urlToImage == urlToImage) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, urlToImage, url);

  /// Create a copy of NewsArticle
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NewsArticleImplCopyWith<_$NewsArticleImpl> get copyWith =>
      __$$NewsArticleImplCopyWithImpl<_$NewsArticleImpl>(this, _$identity);
}

abstract class _NewsArticle implements NewsArticle {
  const factory _NewsArticle({
    required final String title,
    required final String description,
    required final String urlToImage,
    required final String url,
  }) = _$NewsArticleImpl;

  @override
  String get title;
  @override
  String get description;
  @override
  String get urlToImage;
  @override
  String get url;

  /// Create a copy of NewsArticle
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NewsArticleImplCopyWith<_$NewsArticleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
