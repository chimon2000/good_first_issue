// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'issue_query_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$IssuesQueryResultTearOff {
  const _$IssuesQueryResultTearOff();

  _IssuesQueryResult call(
      {List<Issue> issues,
      int count,
      int maxCount,
      String endCursor,
      bool hasNextPage,
      bool isFetchingMore = false}) {
    return _IssuesQueryResult(
      issues: issues,
      count: count,
      maxCount: maxCount,
      endCursor: endCursor,
      hasNextPage: hasNextPage,
      isFetchingMore: isFetchingMore,
    );
  }
}

// ignore: unused_element
const $IssuesQueryResult = _$IssuesQueryResultTearOff();

mixin _$IssuesQueryResult {
  List<Issue> get issues;
  int get count;
  int get maxCount;
  String get endCursor;
  bool get hasNextPage;
  bool get isFetchingMore;

  $IssuesQueryResultCopyWith<IssuesQueryResult> get copyWith;
}

abstract class $IssuesQueryResultCopyWith<$Res> {
  factory $IssuesQueryResultCopyWith(
          IssuesQueryResult value, $Res Function(IssuesQueryResult) then) =
      _$IssuesQueryResultCopyWithImpl<$Res>;
  $Res call(
      {List<Issue> issues,
      int count,
      int maxCount,
      String endCursor,
      bool hasNextPage,
      bool isFetchingMore});
}

class _$IssuesQueryResultCopyWithImpl<$Res>
    implements $IssuesQueryResultCopyWith<$Res> {
  _$IssuesQueryResultCopyWithImpl(this._value, this._then);

  final IssuesQueryResult _value;
  // ignore: unused_field
  final $Res Function(IssuesQueryResult) _then;

  @override
  $Res call({
    Object issues = freezed,
    Object count = freezed,
    Object maxCount = freezed,
    Object endCursor = freezed,
    Object hasNextPage = freezed,
    Object isFetchingMore = freezed,
  }) {
    return _then(_value.copyWith(
      issues: issues == freezed ? _value.issues : issues as List<Issue>,
      count: count == freezed ? _value.count : count as int,
      maxCount: maxCount == freezed ? _value.maxCount : maxCount as int,
      endCursor: endCursor == freezed ? _value.endCursor : endCursor as String,
      hasNextPage:
          hasNextPage == freezed ? _value.hasNextPage : hasNextPage as bool,
      isFetchingMore: isFetchingMore == freezed
          ? _value.isFetchingMore
          : isFetchingMore as bool,
    ));
  }
}

abstract class _$IssuesQueryResultCopyWith<$Res>
    implements $IssuesQueryResultCopyWith<$Res> {
  factory _$IssuesQueryResultCopyWith(
          _IssuesQueryResult value, $Res Function(_IssuesQueryResult) then) =
      __$IssuesQueryResultCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Issue> issues,
      int count,
      int maxCount,
      String endCursor,
      bool hasNextPage,
      bool isFetchingMore});
}

class __$IssuesQueryResultCopyWithImpl<$Res>
    extends _$IssuesQueryResultCopyWithImpl<$Res>
    implements _$IssuesQueryResultCopyWith<$Res> {
  __$IssuesQueryResultCopyWithImpl(
      _IssuesQueryResult _value, $Res Function(_IssuesQueryResult) _then)
      : super(_value, (v) => _then(v as _IssuesQueryResult));

  @override
  _IssuesQueryResult get _value => super._value as _IssuesQueryResult;

  @override
  $Res call({
    Object issues = freezed,
    Object count = freezed,
    Object maxCount = freezed,
    Object endCursor = freezed,
    Object hasNextPage = freezed,
    Object isFetchingMore = freezed,
  }) {
    return _then(_IssuesQueryResult(
      issues: issues == freezed ? _value.issues : issues as List<Issue>,
      count: count == freezed ? _value.count : count as int,
      maxCount: maxCount == freezed ? _value.maxCount : maxCount as int,
      endCursor: endCursor == freezed ? _value.endCursor : endCursor as String,
      hasNextPage:
          hasNextPage == freezed ? _value.hasNextPage : hasNextPage as bool,
      isFetchingMore: isFetchingMore == freezed
          ? _value.isFetchingMore
          : isFetchingMore as bool,
    ));
  }
}

class _$_IssuesQueryResult implements _IssuesQueryResult {
  _$_IssuesQueryResult(
      {this.issues,
      this.count,
      this.maxCount,
      this.endCursor,
      this.hasNextPage,
      this.isFetchingMore = false})
      : assert(isFetchingMore != null);

  @override
  final List<Issue> issues;
  @override
  final int count;
  @override
  final int maxCount;
  @override
  final String endCursor;
  @override
  final bool hasNextPage;
  @JsonKey(defaultValue: false)
  @override
  final bool isFetchingMore;

  @override
  String toString() {
    return 'IssuesQueryResult(issues: $issues, count: $count, maxCount: $maxCount, endCursor: $endCursor, hasNextPage: $hasNextPage, isFetchingMore: $isFetchingMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _IssuesQueryResult &&
            (identical(other.issues, issues) ||
                const DeepCollectionEquality().equals(other.issues, issues)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.maxCount, maxCount) ||
                const DeepCollectionEquality()
                    .equals(other.maxCount, maxCount)) &&
            (identical(other.endCursor, endCursor) ||
                const DeepCollectionEquality()
                    .equals(other.endCursor, endCursor)) &&
            (identical(other.hasNextPage, hasNextPage) ||
                const DeepCollectionEquality()
                    .equals(other.hasNextPage, hasNextPage)) &&
            (identical(other.isFetchingMore, isFetchingMore) ||
                const DeepCollectionEquality()
                    .equals(other.isFetchingMore, isFetchingMore)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(issues) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(maxCount) ^
      const DeepCollectionEquality().hash(endCursor) ^
      const DeepCollectionEquality().hash(hasNextPage) ^
      const DeepCollectionEquality().hash(isFetchingMore);

  @override
  _$IssuesQueryResultCopyWith<_IssuesQueryResult> get copyWith =>
      __$IssuesQueryResultCopyWithImpl<_IssuesQueryResult>(this, _$identity);
}

abstract class _IssuesQueryResult implements IssuesQueryResult {
  factory _IssuesQueryResult(
      {List<Issue> issues,
      int count,
      int maxCount,
      String endCursor,
      bool hasNextPage,
      bool isFetchingMore}) = _$_IssuesQueryResult;

  @override
  List<Issue> get issues;
  @override
  int get count;
  @override
  int get maxCount;
  @override
  String get endCursor;
  @override
  bool get hasNextPage;
  @override
  bool get isFetchingMore;
  @override
  _$IssuesQueryResultCopyWith<_IssuesQueryResult> get copyWith;
}
