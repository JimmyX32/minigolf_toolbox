// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scorecard.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetScorecardCollection on Isar {
  IsarCollection<Scorecard> get scorecards => getCollection();
}

const ScorecardSchema = CollectionSchema(
  name: 'Scorecard',
  schema:
      '{"name":"Scorecard","idName":"id","properties":[{"name":"lanes_hits_json","type":"String"},{"name":"player_names","type":"StringList"},{"name":"playground_id","type":"Long"},{"name":"session_end","type":"Long"},{"name":"session_start","type":"Long"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {
    'lanes_hits_json': 0,
    'player_names': 1,
    'playground_id': 2,
    'session_end': 3,
    'session_start': 4
  },
  listProperties: {'player_names'},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _scorecardGetId,
  setId: _scorecardSetId,
  getLinks: _scorecardGetLinks,
  attachLinks: _scorecardAttachLinks,
  serializeNative: _scorecardSerializeNative,
  deserializeNative: _scorecardDeserializeNative,
  deserializePropNative: _scorecardDeserializePropNative,
  serializeWeb: _scorecardSerializeWeb,
  deserializeWeb: _scorecardDeserializeWeb,
  deserializePropWeb: _scorecardDeserializePropWeb,
  version: 3,
);

int? _scorecardGetId(Scorecard object) {
  if (object.session_id == Isar.autoIncrement) {
    return null;
  } else {
    return object.session_id;
  }
}

void _scorecardSetId(Scorecard object, int id) {
  object.session_id = id;
}

List<IsarLinkBase> _scorecardGetLinks(Scorecard object) {
  return [];
}

void _scorecardSerializeNative(
    IsarCollection<Scorecard> collection,
    IsarRawObject rawObj,
    Scorecard object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.lanes_hits_json;
  final _lanes_hits_json = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_lanes_hits_json.length) as int;
  final value1 = object.player_names;
  dynamicSize += (value1.length) * 8;
  final bytesList1 = <IsarUint8List>[];
  for (var str in value1) {
    final bytes = IsarBinaryWriter.utf8Encoder.convert(str);
    bytesList1.add(bytes);
    dynamicSize += bytes.length as int;
  }
  final _player_names = bytesList1;
  final value2 = object.playground_id;
  final _playground_id = value2;
  final value3 = object.session_end;
  final _session_end = value3;
  final value4 = object.session_start;
  final _session_start = value4;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _lanes_hits_json);
  writer.writeStringList(offsets[1], _player_names);
  writer.writeLong(offsets[2], _playground_id);
  writer.writeDateTime(offsets[3], _session_end);
  writer.writeDateTime(offsets[4], _session_start);
}

Scorecard _scorecardDeserializeNative(IsarCollection<Scorecard> collection,
    int id, IsarBinaryReader reader, List<int> offsets) {
  final object = Scorecard();
  object.session_id = id;
  object.lanes_hits_json = reader.readString(offsets[0]);
  object.player_names = reader.readStringList(offsets[1]) ?? [];
  object.playground_id = reader.readLong(offsets[2]);
  object.session_end = reader.readDateTime(offsets[3]);
  object.session_start = reader.readDateTime(offsets[4]);
  return object;
}

P _scorecardDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readStringList(offset) ?? []) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _scorecardSerializeWeb(
    IsarCollection<Scorecard> collection, Scorecard object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'id', object.session_id);
  IsarNative.jsObjectSet(jsObj, 'lanes_hits_json', object.lanes_hits_json);
  IsarNative.jsObjectSet(jsObj, 'player_names', object.player_names);
  IsarNative.jsObjectSet(jsObj, 'playground_id', object.playground_id);
  IsarNative.jsObjectSet(
      jsObj, 'session_end', object.session_end.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'session_start',
      object.session_start.toUtc().millisecondsSinceEpoch);
  return jsObj;
}

Scorecard _scorecardDeserializeWeb(
    IsarCollection<Scorecard> collection, dynamic jsObj) {
  final object = Scorecard();
  object.session_id = IsarNative.jsObjectGet(jsObj, 'id');
  object.lanes_hits_json =
      IsarNative.jsObjectGet(jsObj, 'lanes_hits_json') ?? '';
  object.player_names = (IsarNative.jsObjectGet(jsObj, 'player_names') as List?)
          ?.map((e) => e ?? '')
          .toList()
          .cast<String>() ??
      [];
  object.playground_id =
      IsarNative.jsObjectGet(jsObj, 'playground_id') ?? double.negativeInfinity;
  object.session_end = IsarNative.jsObjectGet(jsObj, 'session_end') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, 'session_end'),
              isUtc: true)
          .toLocal()
      : DateTime.fromMillisecondsSinceEpoch(0);
  object.session_start = IsarNative.jsObjectGet(jsObj, 'session_start') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, 'session_start'),
              isUtc: true)
          .toLocal()
      : DateTime.fromMillisecondsSinceEpoch(0);
  return object;
}

P _scorecardDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id')) as P;
    case 'lanes_hits_json':
      return (IsarNative.jsObjectGet(jsObj, 'lanes_hits_json') ?? '') as P;
    case 'player_names':
      return ((IsarNative.jsObjectGet(jsObj, 'player_names') as List?)
              ?.map((e) => e ?? '')
              .toList()
              .cast<String>() ??
          []) as P;
    case 'playground_id':
      return (IsarNative.jsObjectGet(jsObj, 'playground_id') ??
          double.negativeInfinity) as P;
    case 'session_end':
      return (IsarNative.jsObjectGet(jsObj, 'session_end') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'session_end'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'session_start':
      return (IsarNative.jsObjectGet(jsObj, 'session_start') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'session_start'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _scorecardAttachLinks(IsarCollection col, int id, Scorecard object) {}

extension ScorecardQueryWhereSort
    on QueryBuilder<Scorecard, Scorecard, QWhere> {
  QueryBuilder<Scorecard, Scorecard, QAfterWhere> anySession_id() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension ScorecardQueryWhere
    on QueryBuilder<Scorecard, Scorecard, QWhereClause> {
  QueryBuilder<Scorecard, Scorecard, QAfterWhereClause> session_idEqualTo(
      int session_id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: session_id,
      includeLower: true,
      upper: session_id,
      includeUpper: true,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterWhereClause> session_idNotEqualTo(
      int session_id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: session_id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: session_id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: session_id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: session_id, includeUpper: false),
      );
    }
  }

  QueryBuilder<Scorecard, Scorecard, QAfterWhereClause> session_idGreaterThan(
      int session_id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: session_id, includeLower: include),
    );
  }

  QueryBuilder<Scorecard, Scorecard, QAfterWhereClause> session_idLessThan(
      int session_id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: session_id, includeUpper: include),
    );
  }

  QueryBuilder<Scorecard, Scorecard, QAfterWhereClause> session_idBetween(
    int lowerSession_id,
    int upperSession_id, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerSession_id,
      includeLower: includeLower,
      upper: upperSession_id,
      includeUpper: includeUpper,
    ));
  }
}

extension ScorecardQueryFilter
    on QueryBuilder<Scorecard, Scorecard, QFilterCondition> {
  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition> session_idIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'id',
      value: null,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition> session_idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      session_idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition> session_idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition> session_idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      lanes_hits_jsonEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'lanes_hits_json',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      lanes_hits_jsonGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'lanes_hits_json',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      lanes_hits_jsonLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'lanes_hits_json',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      lanes_hits_jsonBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'lanes_hits_json',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      lanes_hits_jsonStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'lanes_hits_json',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      lanes_hits_jsonEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'lanes_hits_json',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      lanes_hits_jsonContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'lanes_hits_json',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      lanes_hits_jsonMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'lanes_hits_json',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      player_namesAnyEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'player_names',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      player_namesAnyGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'player_names',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      player_namesAnyLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'player_names',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      player_namesAnyBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'player_names',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      player_namesAnyStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'player_names',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      player_namesAnyEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'player_names',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      player_namesAnyContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'player_names',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      player_namesAnyMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'player_names',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      playground_idEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'playground_id',
      value: value,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      playground_idGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'playground_id',
      value: value,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      playground_idLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'playground_id',
      value: value,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      playground_idBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'playground_id',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition> session_endEqualTo(
      DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'session_end',
      value: value,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      session_endGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'session_end',
      value: value,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition> session_endLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'session_end',
      value: value,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition> session_endBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'session_end',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      session_startEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'session_start',
      value: value,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      session_startGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'session_start',
      value: value,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      session_startLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'session_start',
      value: value,
    ));
  }

  QueryBuilder<Scorecard, Scorecard, QAfterFilterCondition>
      session_startBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'session_start',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension ScorecardQueryLinks
    on QueryBuilder<Scorecard, Scorecard, QFilterCondition> {}

extension ScorecardQueryWhereSortBy
    on QueryBuilder<Scorecard, Scorecard, QSortBy> {
  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> sortBySession_id() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> sortBySession_idDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> sortByLanes_hits_json() {
    return addSortByInternal('lanes_hits_json', Sort.asc);
  }

  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> sortByLanes_hits_jsonDesc() {
    return addSortByInternal('lanes_hits_json', Sort.desc);
  }

  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> sortByPlayground_id() {
    return addSortByInternal('playground_id', Sort.asc);
  }

  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> sortByPlayground_idDesc() {
    return addSortByInternal('playground_id', Sort.desc);
  }

  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> sortBySession_end() {
    return addSortByInternal('session_end', Sort.asc);
  }

  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> sortBySession_endDesc() {
    return addSortByInternal('session_end', Sort.desc);
  }

  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> sortBySession_start() {
    return addSortByInternal('session_start', Sort.asc);
  }

  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> sortBySession_startDesc() {
    return addSortByInternal('session_start', Sort.desc);
  }
}

extension ScorecardQueryWhereSortThenBy
    on QueryBuilder<Scorecard, Scorecard, QSortThenBy> {
  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> thenBySession_id() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> thenBySession_idDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> thenByLanes_hits_json() {
    return addSortByInternal('lanes_hits_json', Sort.asc);
  }

  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> thenByLanes_hits_jsonDesc() {
    return addSortByInternal('lanes_hits_json', Sort.desc);
  }

  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> thenByPlayground_id() {
    return addSortByInternal('playground_id', Sort.asc);
  }

  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> thenByPlayground_idDesc() {
    return addSortByInternal('playground_id', Sort.desc);
  }

  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> thenBySession_end() {
    return addSortByInternal('session_end', Sort.asc);
  }

  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> thenBySession_endDesc() {
    return addSortByInternal('session_end', Sort.desc);
  }

  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> thenBySession_start() {
    return addSortByInternal('session_start', Sort.asc);
  }

  QueryBuilder<Scorecard, Scorecard, QAfterSortBy> thenBySession_startDesc() {
    return addSortByInternal('session_start', Sort.desc);
  }
}

extension ScorecardQueryWhereDistinct
    on QueryBuilder<Scorecard, Scorecard, QDistinct> {
  QueryBuilder<Scorecard, Scorecard, QDistinct> distinctBySession_id() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<Scorecard, Scorecard, QDistinct> distinctByLanes_hits_json(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('lanes_hits_json',
        caseSensitive: caseSensitive);
  }

  QueryBuilder<Scorecard, Scorecard, QDistinct> distinctByPlayground_id() {
    return addDistinctByInternal('playground_id');
  }

  QueryBuilder<Scorecard, Scorecard, QDistinct> distinctBySession_end() {
    return addDistinctByInternal('session_end');
  }

  QueryBuilder<Scorecard, Scorecard, QDistinct> distinctBySession_start() {
    return addDistinctByInternal('session_start');
  }
}

extension ScorecardQueryProperty
    on QueryBuilder<Scorecard, Scorecard, QQueryProperty> {
  QueryBuilder<Scorecard, int?, QQueryOperations> session_idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<Scorecard, String, QQueryOperations> lanes_hits_jsonProperty() {
    return addPropertyNameInternal('lanes_hits_json');
  }

  QueryBuilder<Scorecard, List<String>, QQueryOperations>
      player_namesProperty() {
    return addPropertyNameInternal('player_names');
  }

  QueryBuilder<Scorecard, int, QQueryOperations> playground_idProperty() {
    return addPropertyNameInternal('playground_id');
  }

  QueryBuilder<Scorecard, DateTime, QQueryOperations> session_endProperty() {
    return addPropertyNameInternal('session_end');
  }

  QueryBuilder<Scorecard, DateTime, QQueryOperations> session_startProperty() {
    return addPropertyNameInternal('session_start');
  }
}
