// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issue_query_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IssuesQueryResult {
  List<Issue> get issues => throw _privateConstructorUsedError;
  int get count => throw _privateConstructorUsedError;
  int? get maxCount => throw _privateConstructorUsedError;
  String? get endCursor => throw _privateConstructorUsedError;
  bool get hasNextPage => throw _privateConstructorUsedError;
  bool get isFetchingMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IssuesQueryResultCopyWith<IssuesQueryResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IssuesQueryResultCopyWith<$Res> {
  factory $IssuesQueryResultCopyWith(
          IssuesQueryResult value, $Res Function(IssuesQueryResult) then) =
      _$IssuesQueryResultCopyWithImpl<$Res, IssuesQueryResult>;
  @useResult
  $Res call(
      {List<Issue> issues,
      int count,
      int? maxCount,
      String? endCursor,
      bool hasNextPage,
      bool isFetchingMore});
}

/// @nodoc
class _$IssuesQueryResultCopyWithImpl<$Res, $Val extends IssuesQueryResult>
    implements $IssuesQueryResultCopyWith<$Res> {
  _$IssuesQueryResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issues = null,
    Object? count = null,
    Object? maxCount = freezed,
    Object? endCursor = freezed,
    Object? hasNextPage = null,
    Object? isFetchingMore = null,
  }) {
    return _then(_value.copyWith(
      issues: null == issues
          ? _value.issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<Issue>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      maxCount: freezed == maxCount
          ? _value.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      endCursor: freezed == endCursor
          ? _value.endCursor
          : endCursor // ignore: cast_nullable_to_non_nullable
              as String?,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingMore: null == isFetchingMore
          ? _value.isFetchingMore
          : isFetchingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_IssuesQueryResultCopyWith<$Res>
    implements $IssuesQueryResultCopyWith<$Res> {
  factory _$$_IssuesQueryResultCopyWith(_$_IssuesQueryResult value,
          $Res Function(_$_IssuesQueryResult) then) =
      __$$_IssuesQueryResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Issue> issues,
      int count,
      int? maxCount,
      String? endCursor,
      bool hasNextPage,
      bool isFetchingMore});
}

/// @nodoc
class __$$_IssuesQueryResultCopyWithImpl<$Res>
    extends _$IssuesQueryResultCopyWithImpl<$Res, _$_IssuesQueryResult>
    implements _$$_IssuesQueryResultCopyWith<$Res> {
  __$$_IssuesQueryResultCopyWithImpl(
      _$_IssuesQueryResult _value, $Res Function(_$_IssuesQueryResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? issues = null,
    Object? count = null,
    Object? maxCount = freezed,
    Object? endCursor = freezed,
    Object? hasNextPage = null,
    Object? isFetchingMore = null,
  }) {
    return _then(_$_IssuesQueryResult(
      issues: null == issues
          ? _value._issues
          : issues // ignore: cast_nullable_to_non_nullable
              as List<Issue>,
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      maxCount: freezed == maxCount
          ? _value.maxCount
          : maxCount // ignore: cast_nullable_to_non_nullable
              as int?,
      endCursor: freezed == endCursor
          ? _value.endCursor
          : endCursor // ignore: cast_nullable_to_non_nullable
              as String?,
      hasNextPage: null == hasNextPage
          ? _value.hasNextPage
          : hasNextPage // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingMore: null == isFetchingMore
          ? _value.isFetchingMore
          : isFetchingMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_IssuesQueryResult implements _IssuesQueryResult {
  _$_IssuesQueryResult(
      {required final List<Issue> issues,
      required this.count,
      this.maxCount,
      this.endCursor,
      required this.hasNextPage,
      this.isFetchingMore = false})
      : _issues = issues;

  final List<Issue> _issues;
  @override
  List<Issue> get issues {
    if (_issues is EqualUnmodifiableListView) return _issues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_issues);
  }

  @override
  final int count;
  @override
  final int? maxCount;
  @override
  final String? endCursor;
  @override
  final bool hasNextPage;
  @override
  @JsonKey()
  final bool isFetchingMore;

  @override
  String toString() {
    return 'IssuesQueryResult(issues: $issues, count: $count, maxCount: $maxCount, endCursor: $endCursor, hasNextPage: $hasNextPage, isFetchingMore: $isFetchingMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IssuesQueryResult &&
            const DeepCollectionEquality().equals(other._issues, _issues) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.maxCount, maxCount) ||
                other.maxCount == maxCount) &&
            (identical(other.endCursor, endCursor) ||
                other.endCursor == endCursor) &&
            (identical(other.hasNextPage, hasNextPage) ||
                other.hasNextPage == hasNextPage) &&
            (identical(other.isFetchingMore, isFetchingMore) ||
                other.isFetchingMore == isFetchingMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_issues),
      count,
      maxCount,
      endCursor,
      hasNextPage,
      isFetchingMore);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IssuesQueryResultCopyWith<_$_IssuesQueryResult> get copyWith =>
      __$$_IssuesQueryResultCopyWithImpl<_$_IssuesQueryResult>(
          this, _$identity);
}

abstract class _IssuesQueryResult implements IssuesQueryResult {
  factory _IssuesQueryResult(
      {required final List<Issue> issues,
      required final int count,
      final int? maxCount,
      final String? endCursor,
      required final bool hasNextPage,
      final bool isFetchingMore}) = _$_IssuesQueryResult;

  @override
  List<Issue> get issues;
  @override
  int get count;
  @override
  int? get maxCount;
  @override
  String? get endCursor;
  @override
  bool get hasNextPage;
  @override
  bool get isFetchingMore;
  @override
  @JsonKey(ignore: true)
  _$$_IssuesQueryResultCopyWith<_$_IssuesQueryResult> get copyWith =>
      throw _privateConstructorUsedError;
}
