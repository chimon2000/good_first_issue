// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'issue_query_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$IssuesQueryResult {

 List<Issue> get issues; int get count; int? get maxCount; String? get endCursor; bool get hasNextPage; bool get isFetchingMore;
/// Create a copy of IssuesQueryResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IssuesQueryResultCopyWith<IssuesQueryResult> get copyWith => _$IssuesQueryResultCopyWithImpl<IssuesQueryResult>(this as IssuesQueryResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IssuesQueryResult&&const DeepCollectionEquality().equals(other.issues, issues)&&(identical(other.count, count) || other.count == count)&&(identical(other.maxCount, maxCount) || other.maxCount == maxCount)&&(identical(other.endCursor, endCursor) || other.endCursor == endCursor)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(issues),count,maxCount,endCursor,hasNextPage,isFetchingMore);

@override
String toString() {
  return 'IssuesQueryResult(issues: $issues, count: $count, maxCount: $maxCount, endCursor: $endCursor, hasNextPage: $hasNextPage, isFetchingMore: $isFetchingMore)';
}


}

/// @nodoc
abstract mixin class $IssuesQueryResultCopyWith<$Res>  {
  factory $IssuesQueryResultCopyWith(IssuesQueryResult value, $Res Function(IssuesQueryResult) _then) = _$IssuesQueryResultCopyWithImpl;
@useResult
$Res call({
 List<Issue> issues, int count, int? maxCount, String? endCursor, bool hasNextPage, bool isFetchingMore
});




}
/// @nodoc
class _$IssuesQueryResultCopyWithImpl<$Res>
    implements $IssuesQueryResultCopyWith<$Res> {
  _$IssuesQueryResultCopyWithImpl(this._self, this._then);

  final IssuesQueryResult _self;
  final $Res Function(IssuesQueryResult) _then;

/// Create a copy of IssuesQueryResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? issues = null,Object? count = null,Object? maxCount = freezed,Object? endCursor = freezed,Object? hasNextPage = null,Object? isFetchingMore = null,}) {
  return _then(_self.copyWith(
issues: null == issues ? _self.issues : issues // ignore: cast_nullable_to_non_nullable
as List<Issue>,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,maxCount: freezed == maxCount ? _self.maxCount : maxCount // ignore: cast_nullable_to_non_nullable
as int?,endCursor: freezed == endCursor ? _self.endCursor : endCursor // ignore: cast_nullable_to_non_nullable
as String?,hasNextPage: null == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [IssuesQueryResult].
extension IssuesQueryResultPatterns on IssuesQueryResult {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IssuesQueryResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IssuesQueryResult() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IssuesQueryResult value)  $default,){
final _that = this;
switch (_that) {
case _IssuesQueryResult():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IssuesQueryResult value)?  $default,){
final _that = this;
switch (_that) {
case _IssuesQueryResult() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Issue> issues,  int count,  int? maxCount,  String? endCursor,  bool hasNextPage,  bool isFetchingMore)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IssuesQueryResult() when $default != null:
return $default(_that.issues,_that.count,_that.maxCount,_that.endCursor,_that.hasNextPage,_that.isFetchingMore);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Issue> issues,  int count,  int? maxCount,  String? endCursor,  bool hasNextPage,  bool isFetchingMore)  $default,) {final _that = this;
switch (_that) {
case _IssuesQueryResult():
return $default(_that.issues,_that.count,_that.maxCount,_that.endCursor,_that.hasNextPage,_that.isFetchingMore);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Issue> issues,  int count,  int? maxCount,  String? endCursor,  bool hasNextPage,  bool isFetchingMore)?  $default,) {final _that = this;
switch (_that) {
case _IssuesQueryResult() when $default != null:
return $default(_that.issues,_that.count,_that.maxCount,_that.endCursor,_that.hasNextPage,_that.isFetchingMore);case _:
  return null;

}
}

}

/// @nodoc


class _IssuesQueryResult implements IssuesQueryResult {
   _IssuesQueryResult({required final  List<Issue> issues, required this.count, this.maxCount, this.endCursor, required this.hasNextPage, this.isFetchingMore = false}): _issues = issues;
  

 final  List<Issue> _issues;
@override List<Issue> get issues {
  if (_issues is EqualUnmodifiableListView) return _issues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_issues);
}

@override final  int count;
@override final  int? maxCount;
@override final  String? endCursor;
@override final  bool hasNextPage;
@override@JsonKey() final  bool isFetchingMore;

/// Create a copy of IssuesQueryResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IssuesQueryResultCopyWith<_IssuesQueryResult> get copyWith => __$IssuesQueryResultCopyWithImpl<_IssuesQueryResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IssuesQueryResult&&const DeepCollectionEquality().equals(other._issues, _issues)&&(identical(other.count, count) || other.count == count)&&(identical(other.maxCount, maxCount) || other.maxCount == maxCount)&&(identical(other.endCursor, endCursor) || other.endCursor == endCursor)&&(identical(other.hasNextPage, hasNextPage) || other.hasNextPage == hasNextPage)&&(identical(other.isFetchingMore, isFetchingMore) || other.isFetchingMore == isFetchingMore));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_issues),count,maxCount,endCursor,hasNextPage,isFetchingMore);

@override
String toString() {
  return 'IssuesQueryResult(issues: $issues, count: $count, maxCount: $maxCount, endCursor: $endCursor, hasNextPage: $hasNextPage, isFetchingMore: $isFetchingMore)';
}


}

/// @nodoc
abstract mixin class _$IssuesQueryResultCopyWith<$Res> implements $IssuesQueryResultCopyWith<$Res> {
  factory _$IssuesQueryResultCopyWith(_IssuesQueryResult value, $Res Function(_IssuesQueryResult) _then) = __$IssuesQueryResultCopyWithImpl;
@override @useResult
$Res call({
 List<Issue> issues, int count, int? maxCount, String? endCursor, bool hasNextPage, bool isFetchingMore
});




}
/// @nodoc
class __$IssuesQueryResultCopyWithImpl<$Res>
    implements _$IssuesQueryResultCopyWith<$Res> {
  __$IssuesQueryResultCopyWithImpl(this._self, this._then);

  final _IssuesQueryResult _self;
  final $Res Function(_IssuesQueryResult) _then;

/// Create a copy of IssuesQueryResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? issues = null,Object? count = null,Object? maxCount = freezed,Object? endCursor = freezed,Object? hasNextPage = null,Object? isFetchingMore = null,}) {
  return _then(_IssuesQueryResult(
issues: null == issues ? _self._issues : issues // ignore: cast_nullable_to_non_nullable
as List<Issue>,count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,maxCount: freezed == maxCount ? _self.maxCount : maxCount // ignore: cast_nullable_to_non_nullable
as int?,endCursor: freezed == endCursor ? _self.endCursor : endCursor // ignore: cast_nullable_to_non_nullable
as String?,hasNextPage: null == hasNextPage ? _self.hasNextPage : hasNextPage // ignore: cast_nullable_to_non_nullable
as bool,isFetchingMore: null == isFetchingMore ? _self.isFetchingMore : isFetchingMore // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
