import 'dart:async';
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;

class Variables$Query$ReadIssues {
  factory Variables$Query$ReadIssues({
    required String nQuery,
    int? nLast,
    String? nAfter,
  }) =>
      Variables$Query$ReadIssues._({
        r'nQuery': nQuery,
        if (nLast != null) r'nLast': nLast,
        if (nAfter != null) r'nAfter': nAfter,
      });

  Variables$Query$ReadIssues._(this._$data);

  factory Variables$Query$ReadIssues.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$nQuery = data['nQuery'];
    result$data['nQuery'] = (l$nQuery as String);
    if (data.containsKey('nLast')) {
      final l$nLast = data['nLast'];
      result$data['nLast'] = (l$nLast as int?);
    }
    if (data.containsKey('nAfter')) {
      final l$nAfter = data['nAfter'];
      result$data['nAfter'] = (l$nAfter as String?);
    }
    return Variables$Query$ReadIssues._(result$data);
  }

  Map<String, dynamic> _$data;

  String get nQuery => (_$data['nQuery'] as String);
  int? get nLast => (_$data['nLast'] as int?);
  String? get nAfter => (_$data['nAfter'] as String?);
  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$nQuery = nQuery;
    result$data['nQuery'] = l$nQuery;
    if (_$data.containsKey('nLast')) {
      final l$nLast = nLast;
      result$data['nLast'] = l$nLast;
    }
    if (_$data.containsKey('nAfter')) {
      final l$nAfter = nAfter;
      result$data['nAfter'] = l$nAfter;
    }
    return result$data;
  }

  CopyWith$Variables$Query$ReadIssues<Variables$Query$ReadIssues>
      get copyWith => CopyWith$Variables$Query$ReadIssues(
            this,
            (i) => i,
          );
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$ReadIssues) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$nQuery = nQuery;
    final lOther$nQuery = other.nQuery;
    if (l$nQuery != lOther$nQuery) {
      return false;
    }
    final l$nLast = nLast;
    final lOther$nLast = other.nLast;
    if (_$data.containsKey('nLast') != other._$data.containsKey('nLast')) {
      return false;
    }
    if (l$nLast != lOther$nLast) {
      return false;
    }
    final l$nAfter = nAfter;
    final lOther$nAfter = other.nAfter;
    if (_$data.containsKey('nAfter') != other._$data.containsKey('nAfter')) {
      return false;
    }
    if (l$nAfter != lOther$nAfter) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$nQuery = nQuery;
    final l$nLast = nLast;
    final l$nAfter = nAfter;
    return Object.hashAll([
      l$nQuery,
      _$data.containsKey('nLast') ? l$nLast : const {},
      _$data.containsKey('nAfter') ? l$nAfter : const {},
    ]);
  }
}

abstract class CopyWith$Variables$Query$ReadIssues<TRes> {
  factory CopyWith$Variables$Query$ReadIssues(
    Variables$Query$ReadIssues instance,
    TRes Function(Variables$Query$ReadIssues) then,
  ) = _CopyWithImpl$Variables$Query$ReadIssues;

  factory CopyWith$Variables$Query$ReadIssues.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$ReadIssues;

  TRes call({
    String? nQuery,
    int? nLast,
    String? nAfter,
  });
}

class _CopyWithImpl$Variables$Query$ReadIssues<TRes>
    implements CopyWith$Variables$Query$ReadIssues<TRes> {
  _CopyWithImpl$Variables$Query$ReadIssues(
    this._instance,
    this._then,
  );

  final Variables$Query$ReadIssues _instance;

  final TRes Function(Variables$Query$ReadIssues) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? nQuery = _undefined,
    Object? nLast = _undefined,
    Object? nAfter = _undefined,
  }) =>
      _then(Variables$Query$ReadIssues._({
        ..._instance._$data,
        if (nQuery != _undefined && nQuery != null)
          'nQuery': (nQuery as String),
        if (nLast != _undefined) 'nLast': (nLast as int?),
        if (nAfter != _undefined) 'nAfter': (nAfter as String?),
      }));
}

class _CopyWithStubImpl$Variables$Query$ReadIssues<TRes>
    implements CopyWith$Variables$Query$ReadIssues<TRes> {
  _CopyWithStubImpl$Variables$Query$ReadIssues(this._res);

  TRes _res;

  call({
    String? nQuery,
    int? nLast,
    String? nAfter,
  }) =>
      _res;
}

class Query$ReadIssues {
  Query$ReadIssues({
    required this.search,
    this.$__typename = 'Query',
  });

  factory Query$ReadIssues.fromJson(Map<String, dynamic> json) {
    final l$search = json['search'];
    final l$$__typename = json['__typename'];
    return Query$ReadIssues(
      search:
          Query$ReadIssues$search.fromJson((l$search as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ReadIssues$search search;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$search = search;
    _resultData['search'] = l$search.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$search = search;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$search,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ReadIssues) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$search = search;
    final lOther$search = other.search;
    if (l$search != lOther$search) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ReadIssues on Query$ReadIssues {
  CopyWith$Query$ReadIssues<Query$ReadIssues> get copyWith =>
      CopyWith$Query$ReadIssues(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ReadIssues<TRes> {
  factory CopyWith$Query$ReadIssues(
    Query$ReadIssues instance,
    TRes Function(Query$ReadIssues) then,
  ) = _CopyWithImpl$Query$ReadIssues;

  factory CopyWith$Query$ReadIssues.stub(TRes res) =
      _CopyWithStubImpl$Query$ReadIssues;

  TRes call({
    Query$ReadIssues$search? search,
    String? $__typename,
  });
  CopyWith$Query$ReadIssues$search<TRes> get search;
}

class _CopyWithImpl$Query$ReadIssues<TRes>
    implements CopyWith$Query$ReadIssues<TRes> {
  _CopyWithImpl$Query$ReadIssues(
    this._instance,
    this._then,
  );

  final Query$ReadIssues _instance;

  final TRes Function(Query$ReadIssues) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? search = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReadIssues(
        search: search == _undefined || search == null
            ? _instance.search
            : (search as Query$ReadIssues$search),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ReadIssues$search<TRes> get search {
    final local$search = _instance.search;
    return CopyWith$Query$ReadIssues$search(
        local$search, (e) => call(search: e));
  }
}

class _CopyWithStubImpl$Query$ReadIssues<TRes>
    implements CopyWith$Query$ReadIssues<TRes> {
  _CopyWithStubImpl$Query$ReadIssues(this._res);

  TRes _res;

  call({
    Query$ReadIssues$search? search,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ReadIssues$search<TRes> get search =>
      CopyWith$Query$ReadIssues$search.stub(_res);
}

const documentNodeQueryReadIssues = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'ReadIssues'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nQuery')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nLast')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'nAfter')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: false,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      ),
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'search'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'query'),
            value: VariableNode(name: NameNode(value: 'nQuery')),
          ),
          ArgumentNode(
            name: NameNode(value: 'type'),
            value: EnumValueNode(name: NameNode(value: 'ISSUE')),
          ),
          ArgumentNode(
            name: NameNode(value: 'last'),
            value: VariableNode(name: NameNode(value: 'nLast')),
          ),
          ArgumentNode(
            name: NameNode(value: 'after'),
            value: VariableNode(name: NameNode(value: 'nAfter')),
          ),
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'pageInfo'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'endCursor'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: 'hasNextPage'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: 'issueCount'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'edges'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(selections: [
              FieldNode(
                name: NameNode(value: 'node'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: SelectionSetNode(selections: [
                  InlineFragmentNode(
                    typeCondition: TypeConditionNode(
                        on: NamedTypeNode(
                      name: NameNode(value: 'Issue'),
                      isNonNull: false,
                    )),
                    directives: [],
                    selectionSet: SelectionSetNode(selections: [
                      FieldNode(
                        name: NameNode(value: 'id'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'title'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'body'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'bodyHTML'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'url'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'repository'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: SelectionSetNode(selections: [
                          FieldNode(
                            name: NameNode(value: 'id'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: 'nameWithOwner'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                          FieldNode(
                            name: NameNode(value: '__typename'),
                            alias: null,
                            arguments: [],
                            directives: [],
                            selectionSet: null,
                          ),
                        ]),
                      ),
                      FieldNode(
                        name: NameNode(value: '__typename'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                    ]),
                  ),
                  FieldNode(
                    name: NameNode(value: '__typename'),
                    alias: null,
                    arguments: [],
                    directives: [],
                    selectionSet: null,
                  ),
                ]),
              ),
              FieldNode(
                name: NameNode(value: '__typename'),
                alias: null,
                arguments: [],
                directives: [],
                selectionSet: null,
              ),
            ]),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$ReadIssues _parserFn$Query$ReadIssues(Map<String, dynamic> data) =>
    Query$ReadIssues.fromJson(data);
typedef OnQueryComplete$Query$ReadIssues = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$ReadIssues?,
);

class Options$Query$ReadIssues extends graphql.QueryOptions<Query$ReadIssues> {
  Options$Query$ReadIssues({
    String? operationName,
    required Variables$Query$ReadIssues variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ReadIssues? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$ReadIssues? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$ReadIssues(data),
                  ),
          onError: onError,
          document: documentNodeQueryReadIssues,
          parserFn: _parserFn$Query$ReadIssues,
        );

  final OnQueryComplete$Query$ReadIssues? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$ReadIssues
    extends graphql.WatchQueryOptions<Query$ReadIssues> {
  WatchOptions$Query$ReadIssues({
    String? operationName,
    required Variables$Query$ReadIssues variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$ReadIssues? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryReadIssues,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$ReadIssues,
        );
}

class FetchMoreOptions$Query$ReadIssues extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$ReadIssues({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$ReadIssues variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryReadIssues,
        );
}

extension ClientExtension$Query$ReadIssues on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$ReadIssues>> query$ReadIssues(
          Options$Query$ReadIssues options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$ReadIssues> watchQuery$ReadIssues(
          WatchOptions$Query$ReadIssues options) =>
      this.watchQuery(options);
  void writeQuery$ReadIssues({
    required Query$ReadIssues data,
    required Variables$Query$ReadIssues variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryReadIssues),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$ReadIssues? readQuery$ReadIssues({
    required Variables$Query$ReadIssues variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryReadIssues),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$ReadIssues.fromJson(result);
  }
}

class Query$ReadIssues$search {
  Query$ReadIssues$search({
    required this.pageInfo,
    required this.issueCount,
    this.edges,
    this.$__typename = 'SearchResultItemConnection',
  });

  factory Query$ReadIssues$search.fromJson(Map<String, dynamic> json) {
    final l$pageInfo = json['pageInfo'];
    final l$issueCount = json['issueCount'];
    final l$edges = json['edges'];
    final l$$__typename = json['__typename'];
    return Query$ReadIssues$search(
      pageInfo: Query$ReadIssues$search$pageInfo.fromJson(
          (l$pageInfo as Map<String, dynamic>)),
      issueCount: (l$issueCount as int),
      edges: (l$edges as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$ReadIssues$search$edges.fromJson(
                  (e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ReadIssues$search$pageInfo pageInfo;

  final int issueCount;

  final List<Query$ReadIssues$search$edges?>? edges;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pageInfo = pageInfo;
    _resultData['pageInfo'] = l$pageInfo.toJson();
    final l$issueCount = issueCount;
    _resultData['issueCount'] = l$issueCount;
    final l$edges = edges;
    _resultData['edges'] = l$edges?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pageInfo = pageInfo;
    final l$issueCount = issueCount;
    final l$edges = edges;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pageInfo,
      l$issueCount,
      l$edges == null ? null : Object.hashAll(l$edges.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ReadIssues$search) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pageInfo = pageInfo;
    final lOther$pageInfo = other.pageInfo;
    if (l$pageInfo != lOther$pageInfo) {
      return false;
    }
    final l$issueCount = issueCount;
    final lOther$issueCount = other.issueCount;
    if (l$issueCount != lOther$issueCount) {
      return false;
    }
    final l$edges = edges;
    final lOther$edges = other.edges;
    if (l$edges != null && lOther$edges != null) {
      if (l$edges.length != lOther$edges.length) {
        return false;
      }
      for (int i = 0; i < l$edges.length; i++) {
        final l$edges$entry = l$edges[i];
        final lOther$edges$entry = lOther$edges[i];
        if (l$edges$entry != lOther$edges$entry) {
          return false;
        }
      }
    } else if (l$edges != lOther$edges) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ReadIssues$search on Query$ReadIssues$search {
  CopyWith$Query$ReadIssues$search<Query$ReadIssues$search> get copyWith =>
      CopyWith$Query$ReadIssues$search(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$ReadIssues$search<TRes> {
  factory CopyWith$Query$ReadIssues$search(
    Query$ReadIssues$search instance,
    TRes Function(Query$ReadIssues$search) then,
  ) = _CopyWithImpl$Query$ReadIssues$search;

  factory CopyWith$Query$ReadIssues$search.stub(TRes res) =
      _CopyWithStubImpl$Query$ReadIssues$search;

  TRes call({
    Query$ReadIssues$search$pageInfo? pageInfo,
    int? issueCount,
    List<Query$ReadIssues$search$edges?>? edges,
    String? $__typename,
  });
  CopyWith$Query$ReadIssues$search$pageInfo<TRes> get pageInfo;
  TRes edges(
      Iterable<Query$ReadIssues$search$edges?>? Function(
              Iterable<
                  CopyWith$Query$ReadIssues$search$edges<
                      Query$ReadIssues$search$edges>?>?)
          _fn);
}

class _CopyWithImpl$Query$ReadIssues$search<TRes>
    implements CopyWith$Query$ReadIssues$search<TRes> {
  _CopyWithImpl$Query$ReadIssues$search(
    this._instance,
    this._then,
  );

  final Query$ReadIssues$search _instance;

  final TRes Function(Query$ReadIssues$search) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pageInfo = _undefined,
    Object? issueCount = _undefined,
    Object? edges = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReadIssues$search(
        pageInfo: pageInfo == _undefined || pageInfo == null
            ? _instance.pageInfo
            : (pageInfo as Query$ReadIssues$search$pageInfo),
        issueCount: issueCount == _undefined || issueCount == null
            ? _instance.issueCount
            : (issueCount as int),
        edges: edges == _undefined
            ? _instance.edges
            : (edges as List<Query$ReadIssues$search$edges?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ReadIssues$search$pageInfo<TRes> get pageInfo {
    final local$pageInfo = _instance.pageInfo;
    return CopyWith$Query$ReadIssues$search$pageInfo(
        local$pageInfo, (e) => call(pageInfo: e));
  }

  TRes edges(
          Iterable<Query$ReadIssues$search$edges?>? Function(
                  Iterable<
                      CopyWith$Query$ReadIssues$search$edges<
                          Query$ReadIssues$search$edges>?>?)
              _fn) =>
      call(
          edges: _fn(_instance.edges?.map((e) => e == null
              ? null
              : CopyWith$Query$ReadIssues$search$edges(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$ReadIssues$search<TRes>
    implements CopyWith$Query$ReadIssues$search<TRes> {
  _CopyWithStubImpl$Query$ReadIssues$search(this._res);

  TRes _res;

  call({
    Query$ReadIssues$search$pageInfo? pageInfo,
    int? issueCount,
    List<Query$ReadIssues$search$edges?>? edges,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ReadIssues$search$pageInfo<TRes> get pageInfo =>
      CopyWith$Query$ReadIssues$search$pageInfo.stub(_res);
  edges(_fn) => _res;
}

class Query$ReadIssues$search$pageInfo {
  Query$ReadIssues$search$pageInfo({
    this.endCursor,
    required this.hasNextPage,
    this.$__typename = 'PageInfo',
  });

  factory Query$ReadIssues$search$pageInfo.fromJson(Map<String, dynamic> json) {
    final l$endCursor = json['endCursor'];
    final l$hasNextPage = json['hasNextPage'];
    final l$$__typename = json['__typename'];
    return Query$ReadIssues$search$pageInfo(
      endCursor: (l$endCursor as String?),
      hasNextPage: (l$hasNextPage as bool),
      $__typename: (l$$__typename as String),
    );
  }

  final String? endCursor;

  final bool hasNextPage;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$endCursor = endCursor;
    _resultData['endCursor'] = l$endCursor;
    final l$hasNextPage = hasNextPage;
    _resultData['hasNextPage'] = l$hasNextPage;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$endCursor = endCursor;
    final l$hasNextPage = hasNextPage;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$endCursor,
      l$hasNextPage,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ReadIssues$search$pageInfo) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$endCursor = endCursor;
    final lOther$endCursor = other.endCursor;
    if (l$endCursor != lOther$endCursor) {
      return false;
    }
    final l$hasNextPage = hasNextPage;
    final lOther$hasNextPage = other.hasNextPage;
    if (l$hasNextPage != lOther$hasNextPage) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ReadIssues$search$pageInfo
    on Query$ReadIssues$search$pageInfo {
  CopyWith$Query$ReadIssues$search$pageInfo<Query$ReadIssues$search$pageInfo>
      get copyWith => CopyWith$Query$ReadIssues$search$pageInfo(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReadIssues$search$pageInfo<TRes> {
  factory CopyWith$Query$ReadIssues$search$pageInfo(
    Query$ReadIssues$search$pageInfo instance,
    TRes Function(Query$ReadIssues$search$pageInfo) then,
  ) = _CopyWithImpl$Query$ReadIssues$search$pageInfo;

  factory CopyWith$Query$ReadIssues$search$pageInfo.stub(TRes res) =
      _CopyWithStubImpl$Query$ReadIssues$search$pageInfo;

  TRes call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ReadIssues$search$pageInfo<TRes>
    implements CopyWith$Query$ReadIssues$search$pageInfo<TRes> {
  _CopyWithImpl$Query$ReadIssues$search$pageInfo(
    this._instance,
    this._then,
  );

  final Query$ReadIssues$search$pageInfo _instance;

  final TRes Function(Query$ReadIssues$search$pageInfo) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? endCursor = _undefined,
    Object? hasNextPage = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReadIssues$search$pageInfo(
        endCursor: endCursor == _undefined
            ? _instance.endCursor
            : (endCursor as String?),
        hasNextPage: hasNextPage == _undefined || hasNextPage == null
            ? _instance.hasNextPage
            : (hasNextPage as bool),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ReadIssues$search$pageInfo<TRes>
    implements CopyWith$Query$ReadIssues$search$pageInfo<TRes> {
  _CopyWithStubImpl$Query$ReadIssues$search$pageInfo(this._res);

  TRes _res;

  call({
    String? endCursor,
    bool? hasNextPage,
    String? $__typename,
  }) =>
      _res;
}

class Query$ReadIssues$search$edges {
  Query$ReadIssues$search$edges({
    this.node,
    this.$__typename = 'SearchResultItemEdge',
  });

  factory Query$ReadIssues$search$edges.fromJson(Map<String, dynamic> json) {
    final l$node = json['node'];
    final l$$__typename = json['__typename'];
    return Query$ReadIssues$search$edges(
      node: l$node == null
          ? null
          : Query$ReadIssues$search$edges$node.fromJson(
              (l$node as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ReadIssues$search$edges$node? node;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$node = node;
    _resultData['node'] = l$node?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$node = node;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$node,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ReadIssues$search$edges) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$node = node;
    final lOther$node = other.node;
    if (l$node != lOther$node) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ReadIssues$search$edges
    on Query$ReadIssues$search$edges {
  CopyWith$Query$ReadIssues$search$edges<Query$ReadIssues$search$edges>
      get copyWith => CopyWith$Query$ReadIssues$search$edges(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReadIssues$search$edges<TRes> {
  factory CopyWith$Query$ReadIssues$search$edges(
    Query$ReadIssues$search$edges instance,
    TRes Function(Query$ReadIssues$search$edges) then,
  ) = _CopyWithImpl$Query$ReadIssues$search$edges;

  factory CopyWith$Query$ReadIssues$search$edges.stub(TRes res) =
      _CopyWithStubImpl$Query$ReadIssues$search$edges;

  TRes call({
    Query$ReadIssues$search$edges$node? node,
    String? $__typename,
  });
  CopyWith$Query$ReadIssues$search$edges$node<TRes> get node;
}

class _CopyWithImpl$Query$ReadIssues$search$edges<TRes>
    implements CopyWith$Query$ReadIssues$search$edges<TRes> {
  _CopyWithImpl$Query$ReadIssues$search$edges(
    this._instance,
    this._then,
  );

  final Query$ReadIssues$search$edges _instance;

  final TRes Function(Query$ReadIssues$search$edges) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? node = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReadIssues$search$edges(
        node: node == _undefined
            ? _instance.node
            : (node as Query$ReadIssues$search$edges$node?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ReadIssues$search$edges$node<TRes> get node {
    final local$node = _instance.node;
    return local$node == null
        ? CopyWith$Query$ReadIssues$search$edges$node.stub(_then(_instance))
        : CopyWith$Query$ReadIssues$search$edges$node(
            local$node, (e) => call(node: e));
  }
}

class _CopyWithStubImpl$Query$ReadIssues$search$edges<TRes>
    implements CopyWith$Query$ReadIssues$search$edges<TRes> {
  _CopyWithStubImpl$Query$ReadIssues$search$edges(this._res);

  TRes _res;

  call({
    Query$ReadIssues$search$edges$node? node,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ReadIssues$search$edges$node<TRes> get node =>
      CopyWith$Query$ReadIssues$search$edges$node.stub(_res);
}

class Query$ReadIssues$search$edges$node {
  Query$ReadIssues$search$edges$node({required this.$__typename});

  factory Query$ReadIssues$search$edges$node.fromJson(
      Map<String, dynamic> json) {
    switch (json["__typename"] as String) {
      case "Issue":
        return Query$ReadIssues$search$edges$node$$Issue.fromJson(json);

      case "App":
        return Query$ReadIssues$search$edges$node$$App.fromJson(json);

      case "Discussion":
        return Query$ReadIssues$search$edges$node$$Discussion.fromJson(json);

      case "MarketplaceListing":
        return Query$ReadIssues$search$edges$node$$MarketplaceListing.fromJson(
            json);

      case "Organization":
        return Query$ReadIssues$search$edges$node$$Organization.fromJson(json);

      case "PullRequest":
        return Query$ReadIssues$search$edges$node$$PullRequest.fromJson(json);

      case "Repository":
        return Query$ReadIssues$search$edges$node$$Repository.fromJson(json);

      case "User":
        return Query$ReadIssues$search$edges$node$$User.fromJson(json);

      default:
        final l$$__typename = json['__typename'];
        return Query$ReadIssues$search$edges$node(
            $__typename: (l$$__typename as String));
    }
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ReadIssues$search$edges$node) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ReadIssues$search$edges$node
    on Query$ReadIssues$search$edges$node {
  CopyWith$Query$ReadIssues$search$edges$node<
          Query$ReadIssues$search$edges$node>
      get copyWith => CopyWith$Query$ReadIssues$search$edges$node(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReadIssues$search$edges$node<TRes> {
  factory CopyWith$Query$ReadIssues$search$edges$node(
    Query$ReadIssues$search$edges$node instance,
    TRes Function(Query$ReadIssues$search$edges$node) then,
  ) = _CopyWithImpl$Query$ReadIssues$search$edges$node;

  factory CopyWith$Query$ReadIssues$search$edges$node.stub(TRes res) =
      _CopyWithStubImpl$Query$ReadIssues$search$edges$node;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$ReadIssues$search$edges$node<TRes>
    implements CopyWith$Query$ReadIssues$search$edges$node<TRes> {
  _CopyWithImpl$Query$ReadIssues$search$edges$node(
    this._instance,
    this._then,
  );

  final Query$ReadIssues$search$edges$node _instance;

  final TRes Function(Query$ReadIssues$search$edges$node) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$ReadIssues$search$edges$node(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$ReadIssues$search$edges$node<TRes>
    implements CopyWith$Query$ReadIssues$search$edges$node<TRes> {
  _CopyWithStubImpl$Query$ReadIssues$search$edges$node(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$ReadIssues$search$edges$node$$Issue
    implements Query$ReadIssues$search$edges$node {
  Query$ReadIssues$search$edges$node$$Issue({
    required this.id,
    required this.title,
    required this.body,
    required this.bodyHTML,
    required this.url,
    required this.repository,
    this.$__typename = 'Issue',
  });

  factory Query$ReadIssues$search$edges$node$$Issue.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$body = json['body'];
    final l$bodyHTML = json['bodyHTML'];
    final l$url = json['url'];
    final l$repository = json['repository'];
    final l$$__typename = json['__typename'];
    return Query$ReadIssues$search$edges$node$$Issue(
      id: (l$id as String),
      title: (l$title as String),
      body: (l$body as String),
      bodyHTML: (l$bodyHTML as String),
      url: (l$url as String),
      repository: Query$ReadIssues$search$edges$node$$Issue$repository.fromJson(
          (l$repository as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String body;

  final String bodyHTML;

  final String url;

  final Query$ReadIssues$search$edges$node$$Issue$repository repository;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$title = title;
    _resultData['title'] = l$title;
    final l$body = body;
    _resultData['body'] = l$body;
    final l$bodyHTML = bodyHTML;
    _resultData['bodyHTML'] = l$bodyHTML;
    final l$url = url;
    _resultData['url'] = l$url;
    final l$repository = repository;
    _resultData['repository'] = l$repository.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$body = body;
    final l$bodyHTML = bodyHTML;
    final l$url = url;
    final l$repository = repository;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$body,
      l$bodyHTML,
      l$url,
      l$repository,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ReadIssues$search$edges$node$$Issue) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$body = body;
    final lOther$body = other.body;
    if (l$body != lOther$body) {
      return false;
    }
    final l$bodyHTML = bodyHTML;
    final lOther$bodyHTML = other.bodyHTML;
    if (l$bodyHTML != lOther$bodyHTML) {
      return false;
    }
    final l$url = url;
    final lOther$url = other.url;
    if (l$url != lOther$url) {
      return false;
    }
    final l$repository = repository;
    final lOther$repository = other.repository;
    if (l$repository != lOther$repository) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ReadIssues$search$edges$node$$Issue
    on Query$ReadIssues$search$edges$node$$Issue {
  CopyWith$Query$ReadIssues$search$edges$node$$Issue<
          Query$ReadIssues$search$edges$node$$Issue>
      get copyWith => CopyWith$Query$ReadIssues$search$edges$node$$Issue(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReadIssues$search$edges$node$$Issue<TRes> {
  factory CopyWith$Query$ReadIssues$search$edges$node$$Issue(
    Query$ReadIssues$search$edges$node$$Issue instance,
    TRes Function(Query$ReadIssues$search$edges$node$$Issue) then,
  ) = _CopyWithImpl$Query$ReadIssues$search$edges$node$$Issue;

  factory CopyWith$Query$ReadIssues$search$edges$node$$Issue.stub(TRes res) =
      _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$Issue;

  TRes call({
    String? id,
    String? title,
    String? body,
    String? bodyHTML,
    String? url,
    Query$ReadIssues$search$edges$node$$Issue$repository? repository,
    String? $__typename,
  });
  CopyWith$Query$ReadIssues$search$edges$node$$Issue$repository<TRes>
      get repository;
}

class _CopyWithImpl$Query$ReadIssues$search$edges$node$$Issue<TRes>
    implements CopyWith$Query$ReadIssues$search$edges$node$$Issue<TRes> {
  _CopyWithImpl$Query$ReadIssues$search$edges$node$$Issue(
    this._instance,
    this._then,
  );

  final Query$ReadIssues$search$edges$node$$Issue _instance;

  final TRes Function(Query$ReadIssues$search$edges$node$$Issue) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? body = _undefined,
    Object? bodyHTML = _undefined,
    Object? url = _undefined,
    Object? repository = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReadIssues$search$edges$node$$Issue(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        title: title == _undefined || title == null
            ? _instance.title
            : (title as String),
        body: body == _undefined || body == null
            ? _instance.body
            : (body as String),
        bodyHTML: bodyHTML == _undefined || bodyHTML == null
            ? _instance.bodyHTML
            : (bodyHTML as String),
        url: url == _undefined || url == null ? _instance.url : (url as String),
        repository: repository == _undefined || repository == null
            ? _instance.repository
            : (repository
                as Query$ReadIssues$search$edges$node$$Issue$repository),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
  CopyWith$Query$ReadIssues$search$edges$node$$Issue$repository<TRes>
      get repository {
    final local$repository = _instance.repository;
    return CopyWith$Query$ReadIssues$search$edges$node$$Issue$repository(
        local$repository, (e) => call(repository: e));
  }
}

class _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$Issue<TRes>
    implements CopyWith$Query$ReadIssues$search$edges$node$$Issue<TRes> {
  _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$Issue(this._res);

  TRes _res;

  call({
    String? id,
    String? title,
    String? body,
    String? bodyHTML,
    String? url,
    Query$ReadIssues$search$edges$node$$Issue$repository? repository,
    String? $__typename,
  }) =>
      _res;
  CopyWith$Query$ReadIssues$search$edges$node$$Issue$repository<TRes>
      get repository =>
          CopyWith$Query$ReadIssues$search$edges$node$$Issue$repository.stub(
              _res);
}

class Query$ReadIssues$search$edges$node$$Issue$repository {
  Query$ReadIssues$search$edges$node$$Issue$repository({
    required this.id,
    required this.nameWithOwner,
    this.$__typename = 'Repository',
  });

  factory Query$ReadIssues$search$edges$node$$Issue$repository.fromJson(
      Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$nameWithOwner = json['nameWithOwner'];
    final l$$__typename = json['__typename'];
    return Query$ReadIssues$search$edges$node$$Issue$repository(
      id: (l$id as String),
      nameWithOwner: (l$nameWithOwner as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String nameWithOwner;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$nameWithOwner = nameWithOwner;
    _resultData['nameWithOwner'] = l$nameWithOwner;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$nameWithOwner = nameWithOwner;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$nameWithOwner,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ReadIssues$search$edges$node$$Issue$repository) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$nameWithOwner = nameWithOwner;
    final lOther$nameWithOwner = other.nameWithOwner;
    if (l$nameWithOwner != lOther$nameWithOwner) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ReadIssues$search$edges$node$$Issue$repository
    on Query$ReadIssues$search$edges$node$$Issue$repository {
  CopyWith$Query$ReadIssues$search$edges$node$$Issue$repository<
          Query$ReadIssues$search$edges$node$$Issue$repository>
      get copyWith =>
          CopyWith$Query$ReadIssues$search$edges$node$$Issue$repository(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReadIssues$search$edges$node$$Issue$repository<
    TRes> {
  factory CopyWith$Query$ReadIssues$search$edges$node$$Issue$repository(
    Query$ReadIssues$search$edges$node$$Issue$repository instance,
    TRes Function(Query$ReadIssues$search$edges$node$$Issue$repository) then,
  ) = _CopyWithImpl$Query$ReadIssues$search$edges$node$$Issue$repository;

  factory CopyWith$Query$ReadIssues$search$edges$node$$Issue$repository.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$Issue$repository;

  TRes call({
    String? id,
    String? nameWithOwner,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ReadIssues$search$edges$node$$Issue$repository<TRes>
    implements
        CopyWith$Query$ReadIssues$search$edges$node$$Issue$repository<TRes> {
  _CopyWithImpl$Query$ReadIssues$search$edges$node$$Issue$repository(
    this._instance,
    this._then,
  );

  final Query$ReadIssues$search$edges$node$$Issue$repository _instance;

  final TRes Function(Query$ReadIssues$search$edges$node$$Issue$repository)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? nameWithOwner = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$ReadIssues$search$edges$node$$Issue$repository(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        nameWithOwner: nameWithOwner == _undefined || nameWithOwner == null
            ? _instance.nameWithOwner
            : (nameWithOwner as String),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$Issue$repository<
        TRes>
    implements
        CopyWith$Query$ReadIssues$search$edges$node$$Issue$repository<TRes> {
  _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$Issue$repository(
      this._res);

  TRes _res;

  call({
    String? id,
    String? nameWithOwner,
    String? $__typename,
  }) =>
      _res;
}

class Query$ReadIssues$search$edges$node$$App
    implements Query$ReadIssues$search$edges$node {
  Query$ReadIssues$search$edges$node$$App({this.$__typename = 'App'});

  factory Query$ReadIssues$search$edges$node$$App.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$ReadIssues$search$edges$node$$App(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ReadIssues$search$edges$node$$App) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ReadIssues$search$edges$node$$App
    on Query$ReadIssues$search$edges$node$$App {
  CopyWith$Query$ReadIssues$search$edges$node$$App<
          Query$ReadIssues$search$edges$node$$App>
      get copyWith => CopyWith$Query$ReadIssues$search$edges$node$$App(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReadIssues$search$edges$node$$App<TRes> {
  factory CopyWith$Query$ReadIssues$search$edges$node$$App(
    Query$ReadIssues$search$edges$node$$App instance,
    TRes Function(Query$ReadIssues$search$edges$node$$App) then,
  ) = _CopyWithImpl$Query$ReadIssues$search$edges$node$$App;

  factory CopyWith$Query$ReadIssues$search$edges$node$$App.stub(TRes res) =
      _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$App;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$ReadIssues$search$edges$node$$App<TRes>
    implements CopyWith$Query$ReadIssues$search$edges$node$$App<TRes> {
  _CopyWithImpl$Query$ReadIssues$search$edges$node$$App(
    this._instance,
    this._then,
  );

  final Query$ReadIssues$search$edges$node$$App _instance;

  final TRes Function(Query$ReadIssues$search$edges$node$$App) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$ReadIssues$search$edges$node$$App(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$App<TRes>
    implements CopyWith$Query$ReadIssues$search$edges$node$$App<TRes> {
  _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$App(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$ReadIssues$search$edges$node$$Discussion
    implements Query$ReadIssues$search$edges$node {
  Query$ReadIssues$search$edges$node$$Discussion(
      {this.$__typename = 'Discussion'});

  factory Query$ReadIssues$search$edges$node$$Discussion.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$ReadIssues$search$edges$node$$Discussion(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ReadIssues$search$edges$node$$Discussion) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ReadIssues$search$edges$node$$Discussion
    on Query$ReadIssues$search$edges$node$$Discussion {
  CopyWith$Query$ReadIssues$search$edges$node$$Discussion<
          Query$ReadIssues$search$edges$node$$Discussion>
      get copyWith => CopyWith$Query$ReadIssues$search$edges$node$$Discussion(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReadIssues$search$edges$node$$Discussion<TRes> {
  factory CopyWith$Query$ReadIssues$search$edges$node$$Discussion(
    Query$ReadIssues$search$edges$node$$Discussion instance,
    TRes Function(Query$ReadIssues$search$edges$node$$Discussion) then,
  ) = _CopyWithImpl$Query$ReadIssues$search$edges$node$$Discussion;

  factory CopyWith$Query$ReadIssues$search$edges$node$$Discussion.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$Discussion;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$ReadIssues$search$edges$node$$Discussion<TRes>
    implements CopyWith$Query$ReadIssues$search$edges$node$$Discussion<TRes> {
  _CopyWithImpl$Query$ReadIssues$search$edges$node$$Discussion(
    this._instance,
    this._then,
  );

  final Query$ReadIssues$search$edges$node$$Discussion _instance;

  final TRes Function(Query$ReadIssues$search$edges$node$$Discussion) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$ReadIssues$search$edges$node$$Discussion(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$Discussion<TRes>
    implements CopyWith$Query$ReadIssues$search$edges$node$$Discussion<TRes> {
  _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$Discussion(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$ReadIssues$search$edges$node$$MarketplaceListing
    implements Query$ReadIssues$search$edges$node {
  Query$ReadIssues$search$edges$node$$MarketplaceListing(
      {this.$__typename = 'MarketplaceListing'});

  factory Query$ReadIssues$search$edges$node$$MarketplaceListing.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$ReadIssues$search$edges$node$$MarketplaceListing(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ReadIssues$search$edges$node$$MarketplaceListing) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ReadIssues$search$edges$node$$MarketplaceListing
    on Query$ReadIssues$search$edges$node$$MarketplaceListing {
  CopyWith$Query$ReadIssues$search$edges$node$$MarketplaceListing<
          Query$ReadIssues$search$edges$node$$MarketplaceListing>
      get copyWith =>
          CopyWith$Query$ReadIssues$search$edges$node$$MarketplaceListing(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReadIssues$search$edges$node$$MarketplaceListing<
    TRes> {
  factory CopyWith$Query$ReadIssues$search$edges$node$$MarketplaceListing(
    Query$ReadIssues$search$edges$node$$MarketplaceListing instance,
    TRes Function(Query$ReadIssues$search$edges$node$$MarketplaceListing) then,
  ) = _CopyWithImpl$Query$ReadIssues$search$edges$node$$MarketplaceListing;

  factory CopyWith$Query$ReadIssues$search$edges$node$$MarketplaceListing.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$MarketplaceListing;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$ReadIssues$search$edges$node$$MarketplaceListing<TRes>
    implements
        CopyWith$Query$ReadIssues$search$edges$node$$MarketplaceListing<TRes> {
  _CopyWithImpl$Query$ReadIssues$search$edges$node$$MarketplaceListing(
    this._instance,
    this._then,
  );

  final Query$ReadIssues$search$edges$node$$MarketplaceListing _instance;

  final TRes Function(Query$ReadIssues$search$edges$node$$MarketplaceListing)
      _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$ReadIssues$search$edges$node$$MarketplaceListing(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$MarketplaceListing<
        TRes>
    implements
        CopyWith$Query$ReadIssues$search$edges$node$$MarketplaceListing<TRes> {
  _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$MarketplaceListing(
      this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$ReadIssues$search$edges$node$$Organization
    implements Query$ReadIssues$search$edges$node {
  Query$ReadIssues$search$edges$node$$Organization(
      {this.$__typename = 'Organization'});

  factory Query$ReadIssues$search$edges$node$$Organization.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$ReadIssues$search$edges$node$$Organization(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ReadIssues$search$edges$node$$Organization) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ReadIssues$search$edges$node$$Organization
    on Query$ReadIssues$search$edges$node$$Organization {
  CopyWith$Query$ReadIssues$search$edges$node$$Organization<
          Query$ReadIssues$search$edges$node$$Organization>
      get copyWith => CopyWith$Query$ReadIssues$search$edges$node$$Organization(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReadIssues$search$edges$node$$Organization<TRes> {
  factory CopyWith$Query$ReadIssues$search$edges$node$$Organization(
    Query$ReadIssues$search$edges$node$$Organization instance,
    TRes Function(Query$ReadIssues$search$edges$node$$Organization) then,
  ) = _CopyWithImpl$Query$ReadIssues$search$edges$node$$Organization;

  factory CopyWith$Query$ReadIssues$search$edges$node$$Organization.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$Organization;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$ReadIssues$search$edges$node$$Organization<TRes>
    implements CopyWith$Query$ReadIssues$search$edges$node$$Organization<TRes> {
  _CopyWithImpl$Query$ReadIssues$search$edges$node$$Organization(
    this._instance,
    this._then,
  );

  final Query$ReadIssues$search$edges$node$$Organization _instance;

  final TRes Function(Query$ReadIssues$search$edges$node$$Organization) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$ReadIssues$search$edges$node$$Organization(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$Organization<TRes>
    implements CopyWith$Query$ReadIssues$search$edges$node$$Organization<TRes> {
  _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$Organization(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$ReadIssues$search$edges$node$$PullRequest
    implements Query$ReadIssues$search$edges$node {
  Query$ReadIssues$search$edges$node$$PullRequest(
      {this.$__typename = 'PullRequest'});

  factory Query$ReadIssues$search$edges$node$$PullRequest.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$ReadIssues$search$edges$node$$PullRequest(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ReadIssues$search$edges$node$$PullRequest) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ReadIssues$search$edges$node$$PullRequest
    on Query$ReadIssues$search$edges$node$$PullRequest {
  CopyWith$Query$ReadIssues$search$edges$node$$PullRequest<
          Query$ReadIssues$search$edges$node$$PullRequest>
      get copyWith => CopyWith$Query$ReadIssues$search$edges$node$$PullRequest(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReadIssues$search$edges$node$$PullRequest<TRes> {
  factory CopyWith$Query$ReadIssues$search$edges$node$$PullRequest(
    Query$ReadIssues$search$edges$node$$PullRequest instance,
    TRes Function(Query$ReadIssues$search$edges$node$$PullRequest) then,
  ) = _CopyWithImpl$Query$ReadIssues$search$edges$node$$PullRequest;

  factory CopyWith$Query$ReadIssues$search$edges$node$$PullRequest.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$PullRequest;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$ReadIssues$search$edges$node$$PullRequest<TRes>
    implements CopyWith$Query$ReadIssues$search$edges$node$$PullRequest<TRes> {
  _CopyWithImpl$Query$ReadIssues$search$edges$node$$PullRequest(
    this._instance,
    this._then,
  );

  final Query$ReadIssues$search$edges$node$$PullRequest _instance;

  final TRes Function(Query$ReadIssues$search$edges$node$$PullRequest) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$ReadIssues$search$edges$node$$PullRequest(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$PullRequest<TRes>
    implements CopyWith$Query$ReadIssues$search$edges$node$$PullRequest<TRes> {
  _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$PullRequest(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$ReadIssues$search$edges$node$$Repository
    implements Query$ReadIssues$search$edges$node {
  Query$ReadIssues$search$edges$node$$Repository(
      {this.$__typename = 'Repository'});

  factory Query$ReadIssues$search$edges$node$$Repository.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$ReadIssues$search$edges$node$$Repository(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ReadIssues$search$edges$node$$Repository) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ReadIssues$search$edges$node$$Repository
    on Query$ReadIssues$search$edges$node$$Repository {
  CopyWith$Query$ReadIssues$search$edges$node$$Repository<
          Query$ReadIssues$search$edges$node$$Repository>
      get copyWith => CopyWith$Query$ReadIssues$search$edges$node$$Repository(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReadIssues$search$edges$node$$Repository<TRes> {
  factory CopyWith$Query$ReadIssues$search$edges$node$$Repository(
    Query$ReadIssues$search$edges$node$$Repository instance,
    TRes Function(Query$ReadIssues$search$edges$node$$Repository) then,
  ) = _CopyWithImpl$Query$ReadIssues$search$edges$node$$Repository;

  factory CopyWith$Query$ReadIssues$search$edges$node$$Repository.stub(
          TRes res) =
      _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$Repository;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$ReadIssues$search$edges$node$$Repository<TRes>
    implements CopyWith$Query$ReadIssues$search$edges$node$$Repository<TRes> {
  _CopyWithImpl$Query$ReadIssues$search$edges$node$$Repository(
    this._instance,
    this._then,
  );

  final Query$ReadIssues$search$edges$node$$Repository _instance;

  final TRes Function(Query$ReadIssues$search$edges$node$$Repository) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$ReadIssues$search$edges$node$$Repository(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$Repository<TRes>
    implements CopyWith$Query$ReadIssues$search$edges$node$$Repository<TRes> {
  _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$Repository(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}

class Query$ReadIssues$search$edges$node$$User
    implements Query$ReadIssues$search$edges$node {
  Query$ReadIssues$search$edges$node$$User({this.$__typename = 'User'});

  factory Query$ReadIssues$search$edges$node$$User.fromJson(
      Map<String, dynamic> json) {
    final l$$__typename = json['__typename'];
    return Query$ReadIssues$search$edges$node$$User(
        $__typename: (l$$__typename as String));
  }

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$$__typename = $__typename;
    return Object.hashAll([l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$ReadIssues$search$edges$node$$User) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ReadIssues$search$edges$node$$User
    on Query$ReadIssues$search$edges$node$$User {
  CopyWith$Query$ReadIssues$search$edges$node$$User<
          Query$ReadIssues$search$edges$node$$User>
      get copyWith => CopyWith$Query$ReadIssues$search$edges$node$$User(
            this,
            (i) => i,
          );
}

abstract class CopyWith$Query$ReadIssues$search$edges$node$$User<TRes> {
  factory CopyWith$Query$ReadIssues$search$edges$node$$User(
    Query$ReadIssues$search$edges$node$$User instance,
    TRes Function(Query$ReadIssues$search$edges$node$$User) then,
  ) = _CopyWithImpl$Query$ReadIssues$search$edges$node$$User;

  factory CopyWith$Query$ReadIssues$search$edges$node$$User.stub(TRes res) =
      _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$User;

  TRes call({String? $__typename});
}

class _CopyWithImpl$Query$ReadIssues$search$edges$node$$User<TRes>
    implements CopyWith$Query$ReadIssues$search$edges$node$$User<TRes> {
  _CopyWithImpl$Query$ReadIssues$search$edges$node$$User(
    this._instance,
    this._then,
  );

  final Query$ReadIssues$search$edges$node$$User _instance;

  final TRes Function(Query$ReadIssues$search$edges$node$$User) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? $__typename = _undefined}) =>
      _then(Query$ReadIssues$search$edges$node$$User(
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String)));
}

class _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$User<TRes>
    implements CopyWith$Query$ReadIssues$search$edges$node$$User<TRes> {
  _CopyWithStubImpl$Query$ReadIssues$search$edges$node$$User(this._res);

  TRes _res;

  call({String? $__typename}) => _res;
}
