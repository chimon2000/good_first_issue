// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Issue _$IssueFromJson(Map<String, dynamic> json) {
  return _Issue.fromJson(json);
}

/// @nodoc
mixin _$Issue {
  @JsonKey()
  String get title => throw _privateConstructorUsedError;
  @JsonKey()
  String get url => throw _privateConstructorUsedError;
  @JsonKey()
  String get bodyHTML => throw _privateConstructorUsedError;
  @JsonKey()
  Repository get repository => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IssueCopyWith<Issue> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssueCopyWith<$Res> {
  factory $IssueCopyWith(Issue value, $Res Function(Issue) then) =
      _$IssueCopyWithImpl<$Res, Issue>;
  @useResult
  $Res call(
      {@JsonKey() String title,
      @JsonKey() String url,
      @JsonKey() String bodyHTML,
      @JsonKey() Repository repository});

  $RepositoryCopyWith<$Res> get repository;
}

/// @nodoc
class _$IssueCopyWithImpl<$Res, $Val extends Issue>
    implements $IssueCopyWith<$Res> {
  _$IssueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
    Object? bodyHTML = null,
    Object? repository = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      bodyHTML: null == bodyHTML
          ? _value.bodyHTML
          : bodyHTML // ignore: cast_nullable_to_non_nullable
              as String,
      repository: null == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as Repository,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RepositoryCopyWith<$Res> get repository {
    return $RepositoryCopyWith<$Res>(_value.repository, (value) {
      return _then(_value.copyWith(repository: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IssueCopyWith<$Res> implements $IssueCopyWith<$Res> {
  factory _$$_IssueCopyWith(_$_Issue value, $Res Function(_$_Issue) then) =
      __$$_IssueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey() String title,
      @JsonKey() String url,
      @JsonKey() String bodyHTML,
      @JsonKey() Repository repository});

  @override
  $RepositoryCopyWith<$Res> get repository;
}

/// @nodoc
class __$$_IssueCopyWithImpl<$Res> extends _$IssueCopyWithImpl<$Res, _$_Issue>
    implements _$$_IssueCopyWith<$Res> {
  __$$_IssueCopyWithImpl(_$_Issue _value, $Res Function(_$_Issue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
    Object? bodyHTML = null,
    Object? repository = null,
  }) {
    return _then(_$_Issue(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      bodyHTML: null == bodyHTML
          ? _value.bodyHTML
          : bodyHTML // ignore: cast_nullable_to_non_nullable
              as String,
      repository: null == repository
          ? _value.repository
          : repository // ignore: cast_nullable_to_non_nullable
              as Repository,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Issue implements _Issue {
  _$_Issue(
      {@JsonKey() required this.title,
      @JsonKey() required this.url,
      @JsonKey() required this.bodyHTML,
      @JsonKey() required this.repository});

  factory _$_Issue.fromJson(Map<String, dynamic> json) =>
      _$$_IssueFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String url;
  @override
  @JsonKey()
  final String bodyHTML;
  @override
  @JsonKey()
  final Repository repository;

  @override
  String toString() {
    return 'Issue(title: $title, url: $url, bodyHTML: $bodyHTML, repository: $repository)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Issue &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.bodyHTML, bodyHTML) ||
                other.bodyHTML == bodyHTML) &&
            (identical(other.repository, repository) ||
                other.repository == repository));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, url, bodyHTML, repository);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IssueCopyWith<_$_Issue> get copyWith =>
      __$$_IssueCopyWithImpl<_$_Issue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IssueToJson(
      this,
    );
  }
}

abstract class _Issue implements Issue {
  factory _Issue(
      {@JsonKey() required final String title,
      @JsonKey() required final String url,
      @JsonKey() required final String bodyHTML,
      @JsonKey() required final Repository repository}) = _$_Issue;

  factory _Issue.fromJson(Map<String, dynamic> json) = _$_Issue.fromJson;

  @override
  @JsonKey()
  String get title;
  @override
  @JsonKey()
  String get url;
  @override
  @JsonKey()
  String get bodyHTML;
  @override
  @JsonKey()
  Repository get repository;
  @override
  @JsonKey(ignore: true)
  _$$_IssueCopyWith<_$_Issue> get copyWith =>
      throw _privateConstructorUsedError;
}

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return _Repository.fromJson(json);
}

/// @nodoc
mixin _$Repository {
  @JsonKey()
  String get nameWithOwner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepositoryCopyWith<Repository> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepositoryCopyWith<$Res> {
  factory $RepositoryCopyWith(
          Repository value, $Res Function(Repository) then) =
      _$RepositoryCopyWithImpl<$Res, Repository>;
  @useResult
  $Res call({@JsonKey() String nameWithOwner});
}

/// @nodoc
class _$RepositoryCopyWithImpl<$Res, $Val extends Repository>
    implements $RepositoryCopyWith<$Res> {
  _$RepositoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameWithOwner = null,
  }) {
    return _then(_value.copyWith(
      nameWithOwner: null == nameWithOwner
          ? _value.nameWithOwner
          : nameWithOwner // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RepositoryCopyWith<$Res>
    implements $RepositoryCopyWith<$Res> {
  factory _$$_RepositoryCopyWith(
          _$_Repository value, $Res Function(_$_Repository) then) =
      __$$_RepositoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey() String nameWithOwner});
}

/// @nodoc
class __$$_RepositoryCopyWithImpl<$Res>
    extends _$RepositoryCopyWithImpl<$Res, _$_Repository>
    implements _$$_RepositoryCopyWith<$Res> {
  __$$_RepositoryCopyWithImpl(
      _$_Repository _value, $Res Function(_$_Repository) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameWithOwner = null,
  }) {
    return _then(_$_Repository(
      nameWithOwner: null == nameWithOwner
          ? _value.nameWithOwner
          : nameWithOwner // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Repository implements _Repository {
  _$_Repository({@JsonKey() required this.nameWithOwner});

  factory _$_Repository.fromJson(Map<String, dynamic> json) =>
      _$$_RepositoryFromJson(json);

  @override
  @JsonKey()
  final String nameWithOwner;

  @override
  String toString() {
    return 'Repository(nameWithOwner: $nameWithOwner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Repository &&
            (identical(other.nameWithOwner, nameWithOwner) ||
                other.nameWithOwner == nameWithOwner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nameWithOwner);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepositoryCopyWith<_$_Repository> get copyWith =>
      __$$_RepositoryCopyWithImpl<_$_Repository>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepositoryToJson(
      this,
    );
  }
}

abstract class _Repository implements Repository {
  factory _Repository({@JsonKey() required final String nameWithOwner}) =
      _$_Repository;

  factory _Repository.fromJson(Map<String, dynamic> json) =
      _$_Repository.fromJson;

  @override
  @JsonKey()
  String get nameWithOwner;
  @override
  @JsonKey(ignore: true)
  _$$_RepositoryCopyWith<_$_Repository> get copyWith =>
      throw _privateConstructorUsedError;
}
