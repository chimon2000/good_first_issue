// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'issue.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Issue _$IssueFromJson(Map<String, dynamic> json) {
  return _Issue.fromJson(json);
}

class _$IssueTearOff {
  const _$IssueTearOff();

  _Issue call(
      {@JsonKey() String title,
      @JsonKey() String url,
      @JsonKey() String bodyHTML,
      @JsonKey() Repository repository}) {
    return _Issue(
      title: title,
      url: url,
      bodyHTML: bodyHTML,
      repository: repository,
    );
  }
}

// ignore: unused_element
const $Issue = _$IssueTearOff();

mixin _$Issue {
  @JsonKey()
  String get title;
  @JsonKey()
  String get url;
  @JsonKey()
  String get bodyHTML;
  @JsonKey()
  Repository get repository;

  Map<String, dynamic> toJson();
  $IssueCopyWith<Issue> get copyWith;
}

abstract class $IssueCopyWith<$Res> {
  factory $IssueCopyWith(Issue value, $Res Function(Issue) then) =
      _$IssueCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey() String title,
      @JsonKey() String url,
      @JsonKey() String bodyHTML,
      @JsonKey() Repository repository});

  $RepositoryCopyWith<$Res> get repository;
}

class _$IssueCopyWithImpl<$Res> implements $IssueCopyWith<$Res> {
  _$IssueCopyWithImpl(this._value, this._then);

  final Issue _value;
  // ignore: unused_field
  final $Res Function(Issue) _then;

  @override
  $Res call({
    Object title = freezed,
    Object url = freezed,
    Object bodyHTML = freezed,
    Object repository = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      url: url == freezed ? _value.url : url as String,
      bodyHTML: bodyHTML == freezed ? _value.bodyHTML : bodyHTML as String,
      repository:
          repository == freezed ? _value.repository : repository as Repository,
    ));
  }

  @override
  $RepositoryCopyWith<$Res> get repository {
    if (_value.repository == null) {
      return null;
    }
    return $RepositoryCopyWith<$Res>(_value.repository, (value) {
      return _then(_value.copyWith(repository: value));
    });
  }
}

abstract class _$IssueCopyWith<$Res> implements $IssueCopyWith<$Res> {
  factory _$IssueCopyWith(_Issue value, $Res Function(_Issue) then) =
      __$IssueCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey() String title,
      @JsonKey() String url,
      @JsonKey() String bodyHTML,
      @JsonKey() Repository repository});

  @override
  $RepositoryCopyWith<$Res> get repository;
}

class __$IssueCopyWithImpl<$Res> extends _$IssueCopyWithImpl<$Res>
    implements _$IssueCopyWith<$Res> {
  __$IssueCopyWithImpl(_Issue _value, $Res Function(_Issue) _then)
      : super(_value, (v) => _then(v as _Issue));

  @override
  _Issue get _value => super._value as _Issue;

  @override
  $Res call({
    Object title = freezed,
    Object url = freezed,
    Object bodyHTML = freezed,
    Object repository = freezed,
  }) {
    return _then(_Issue(
      title: title == freezed ? _value.title : title as String,
      url: url == freezed ? _value.url : url as String,
      bodyHTML: bodyHTML == freezed ? _value.bodyHTML : bodyHTML as String,
      repository:
          repository == freezed ? _value.repository : repository as Repository,
    ));
  }
}

@JsonSerializable()
class _$_Issue implements _Issue {
  _$_Issue(
      {@JsonKey() this.title,
      @JsonKey() this.url,
      @JsonKey() this.bodyHTML,
      @JsonKey() this.repository});

  factory _$_Issue.fromJson(Map<String, dynamic> json) =>
      _$_$_IssueFromJson(json);

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
        (other is _Issue &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.bodyHTML, bodyHTML) ||
                const DeepCollectionEquality()
                    .equals(other.bodyHTML, bodyHTML)) &&
            (identical(other.repository, repository) ||
                const DeepCollectionEquality()
                    .equals(other.repository, repository)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(bodyHTML) ^
      const DeepCollectionEquality().hash(repository);

  @override
  _$IssueCopyWith<_Issue> get copyWith =>
      __$IssueCopyWithImpl<_Issue>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_IssueToJson(this);
  }
}

abstract class _Issue implements Issue {
  factory _Issue(
      {@JsonKey() String title,
      @JsonKey() String url,
      @JsonKey() String bodyHTML,
      @JsonKey() Repository repository}) = _$_Issue;

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
  _$IssueCopyWith<_Issue> get copyWith;
}

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return _Repository.fromJson(json);
}

class _$RepositoryTearOff {
  const _$RepositoryTearOff();

  _Repository call({@JsonKey() String nameWithOwner}) {
    return _Repository(
      nameWithOwner: nameWithOwner,
    );
  }
}

// ignore: unused_element
const $Repository = _$RepositoryTearOff();

mixin _$Repository {
  @JsonKey()
  String get nameWithOwner;

  Map<String, dynamic> toJson();
  $RepositoryCopyWith<Repository> get copyWith;
}

abstract class $RepositoryCopyWith<$Res> {
  factory $RepositoryCopyWith(
          Repository value, $Res Function(Repository) then) =
      _$RepositoryCopyWithImpl<$Res>;
  $Res call({@JsonKey() String nameWithOwner});
}

class _$RepositoryCopyWithImpl<$Res> implements $RepositoryCopyWith<$Res> {
  _$RepositoryCopyWithImpl(this._value, this._then);

  final Repository _value;
  // ignore: unused_field
  final $Res Function(Repository) _then;

  @override
  $Res call({
    Object nameWithOwner = freezed,
  }) {
    return _then(_value.copyWith(
      nameWithOwner: nameWithOwner == freezed
          ? _value.nameWithOwner
          : nameWithOwner as String,
    ));
  }
}

abstract class _$RepositoryCopyWith<$Res> implements $RepositoryCopyWith<$Res> {
  factory _$RepositoryCopyWith(
          _Repository value, $Res Function(_Repository) then) =
      __$RepositoryCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey() String nameWithOwner});
}

class __$RepositoryCopyWithImpl<$Res> extends _$RepositoryCopyWithImpl<$Res>
    implements _$RepositoryCopyWith<$Res> {
  __$RepositoryCopyWithImpl(
      _Repository _value, $Res Function(_Repository) _then)
      : super(_value, (v) => _then(v as _Repository));

  @override
  _Repository get _value => super._value as _Repository;

  @override
  $Res call({
    Object nameWithOwner = freezed,
  }) {
    return _then(_Repository(
      nameWithOwner: nameWithOwner == freezed
          ? _value.nameWithOwner
          : nameWithOwner as String,
    ));
  }
}

@JsonSerializable()
class _$_Repository implements _Repository {
  _$_Repository({@JsonKey() this.nameWithOwner});

  factory _$_Repository.fromJson(Map<String, dynamic> json) =>
      _$_$_RepositoryFromJson(json);

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
        (other is _Repository &&
            (identical(other.nameWithOwner, nameWithOwner) ||
                const DeepCollectionEquality()
                    .equals(other.nameWithOwner, nameWithOwner)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(nameWithOwner);

  @override
  _$RepositoryCopyWith<_Repository> get copyWith =>
      __$RepositoryCopyWithImpl<_Repository>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RepositoryToJson(this);
  }
}

abstract class _Repository implements Repository {
  factory _Repository({@JsonKey() String nameWithOwner}) = _$_Repository;

  factory _Repository.fromJson(Map<String, dynamic> json) =
      _$_Repository.fromJson;

  @override
  @JsonKey()
  String get nameWithOwner;
  @override
  _$RepositoryCopyWith<_Repository> get copyWith;
}
