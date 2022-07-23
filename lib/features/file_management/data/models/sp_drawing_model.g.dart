// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sp_drawing_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetSPDrawingModelCollection on Isar {
  IsarCollection<SPDrawingModel> get sPDrawingModels => getCollection();
}

const SPDrawingModelSchema = CollectionSchema(
  name: 'SPDrawingModel',
  schema:
      '{"name":"SPDrawingModel","idName":"id","properties":[{"name":"createdAt","type":"Long"},{"name":"name","type":"String"},{"name":"updatedAt","type":"Long"}],"indexes":[],"links":[{"name":"strokes","target":"SPStrokeModel"}]}',
  idName: 'id',
  propertyIds: {'createdAt': 0, 'name': 1, 'updatedAt': 2},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {'strokes': 0},
  backlinkLinkNames: {},
  getId: _sPDrawingModelGetId,
  setId: _sPDrawingModelSetId,
  getLinks: _sPDrawingModelGetLinks,
  attachLinks: _sPDrawingModelAttachLinks,
  serializeNative: _sPDrawingModelSerializeNative,
  deserializeNative: _sPDrawingModelDeserializeNative,
  deserializePropNative: _sPDrawingModelDeserializePropNative,
  serializeWeb: _sPDrawingModelSerializeWeb,
  deserializeWeb: _sPDrawingModelDeserializeWeb,
  deserializePropWeb: _sPDrawingModelDeserializePropWeb,
  version: 3,
);

int? _sPDrawingModelGetId(SPDrawingModel object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _sPDrawingModelSetId(SPDrawingModel object, int id) {
  object.id = id;
}

List<IsarLinkBase> _sPDrawingModelGetLinks(SPDrawingModel object) {
  return [object.strokes];
}

void _sPDrawingModelSerializeNative(
    IsarCollection<SPDrawingModel> collection,
    IsarRawObject rawObj,
    SPDrawingModel object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.createdAt;
  final _createdAt = value0;
  final value1 = object.name;
  final _name = IsarBinaryWriter.utf8Encoder.convert(value1);
  dynamicSize += (_name.length) as int;
  final value2 = object.updatedAt;
  final _updatedAt = value2;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDateTime(offsets[0], _createdAt);
  writer.writeBytes(offsets[1], _name);
  writer.writeDateTime(offsets[2], _updatedAt);
}

SPDrawingModel _sPDrawingModelDeserializeNative(
    IsarCollection<SPDrawingModel> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = SPDrawingModel();
  object.createdAt = reader.readDateTime(offsets[0]);
  object.id = id;
  object.name = reader.readString(offsets[1]);
  object.updatedAt = reader.readDateTime(offsets[2]);
  _sPDrawingModelAttachLinks(collection, id, object);
  return object;
}

P _sPDrawingModelDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _sPDrawingModelSerializeWeb(
    IsarCollection<SPDrawingModel> collection, SPDrawingModel object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(
      jsObj, 'createdAt', object.createdAt.toUtc().millisecondsSinceEpoch);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'name', object.name);
  IsarNative.jsObjectSet(
      jsObj, 'updatedAt', object.updatedAt.toUtc().millisecondsSinceEpoch);
  return jsObj;
}

SPDrawingModel _sPDrawingModelDeserializeWeb(
    IsarCollection<SPDrawingModel> collection, dynamic jsObj) {
  final object = SPDrawingModel();
  object.createdAt = IsarNative.jsObjectGet(jsObj, 'createdAt') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, 'createdAt'),
              isUtc: true)
          .toLocal()
      : DateTime.fromMillisecondsSinceEpoch(0);
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  object.name = IsarNative.jsObjectGet(jsObj, 'name') ?? '';
  object.updatedAt = IsarNative.jsObjectGet(jsObj, 'updatedAt') != null
      ? DateTime.fromMillisecondsSinceEpoch(
              IsarNative.jsObjectGet(jsObj, 'updatedAt'),
              isUtc: true)
          .toLocal()
      : DateTime.fromMillisecondsSinceEpoch(0);
  _sPDrawingModelAttachLinks(collection,
      IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity, object);
  return object;
}

P _sPDrawingModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'createdAt':
      return (IsarNative.jsObjectGet(jsObj, 'createdAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'createdAt'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'name':
      return (IsarNative.jsObjectGet(jsObj, 'name') ?? '') as P;
    case 'updatedAt':
      return (IsarNative.jsObjectGet(jsObj, 'updatedAt') != null
          ? DateTime.fromMillisecondsSinceEpoch(
                  IsarNative.jsObjectGet(jsObj, 'updatedAt'),
                  isUtc: true)
              .toLocal()
          : DateTime.fromMillisecondsSinceEpoch(0)) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _sPDrawingModelAttachLinks(
    IsarCollection col, int id, SPDrawingModel object) {
  object.strokes.attach(col, col.isar.sPStrokeModels, 'strokes', id);
}

extension SPDrawingModelQueryWhereSort
    on QueryBuilder<SPDrawingModel, SPDrawingModel, QWhere> {
  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension SPDrawingModelQueryWhere
    on QueryBuilder<SPDrawingModel, SPDrawingModel, QWhereClause> {
  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterWhereClause> idNotEqualTo(
      int id) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: id, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: id, includeUpper: false),
      );
    }
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterWhereClause> idLessThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterWhereClause> idBetween(
    int lowerId,
    int upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerId,
      includeLower: includeLower,
      upper: upperId,
      includeUpper: includeUpper,
    ));
  }
}

extension SPDrawingModelQueryFilter
    on QueryBuilder<SPDrawingModel, SPDrawingModel, QFilterCondition> {
  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'createdAt',
      value: value,
    ));
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'createdAt',
      value: value,
    ));
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition>
      createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'createdAt',
      value: value,
    ));
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition>
      createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'createdAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition>
      nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition>
      nameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition>
      nameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition>
      nameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'name',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition>
      nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition>
      nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition>
      nameContains(String value, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'name',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition>
      nameMatches(String pattern, {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'name',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition>
      updatedAtEqualTo(DateTime value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition>
      updatedAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition>
      updatedAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'updatedAt',
      value: value,
    ));
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition>
      updatedAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'updatedAt',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension SPDrawingModelQueryLinks
    on QueryBuilder<SPDrawingModel, SPDrawingModel, QFilterCondition> {
  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterFilterCondition> strokes(
      FilterQuery<SPStrokeModel> q) {
    return linkInternal(
      isar.sPStrokeModels,
      q,
      'strokes',
    );
  }
}

extension SPDrawingModelQueryWhereSortBy
    on QueryBuilder<SPDrawingModel, SPDrawingModel, QSortBy> {
  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterSortBy> sortByCreatedAt() {
    return addSortByInternal('createdAt', Sort.asc);
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterSortBy>
      sortByCreatedAtDesc() {
    return addSortByInternal('createdAt', Sort.desc);
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterSortBy> sortByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterSortBy> sortByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterSortBy> sortByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterSortBy>
      sortByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }
}

extension SPDrawingModelQueryWhereSortThenBy
    on QueryBuilder<SPDrawingModel, SPDrawingModel, QSortThenBy> {
  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterSortBy> thenByCreatedAt() {
    return addSortByInternal('createdAt', Sort.asc);
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterSortBy>
      thenByCreatedAtDesc() {
    return addSortByInternal('createdAt', Sort.desc);
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterSortBy> thenByName() {
    return addSortByInternal('name', Sort.asc);
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterSortBy> thenByNameDesc() {
    return addSortByInternal('name', Sort.desc);
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterSortBy> thenByUpdatedAt() {
    return addSortByInternal('updatedAt', Sort.asc);
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QAfterSortBy>
      thenByUpdatedAtDesc() {
    return addSortByInternal('updatedAt', Sort.desc);
  }
}

extension SPDrawingModelQueryWhereDistinct
    on QueryBuilder<SPDrawingModel, SPDrawingModel, QDistinct> {
  QueryBuilder<SPDrawingModel, SPDrawingModel, QDistinct>
      distinctByCreatedAt() {
    return addDistinctByInternal('createdAt');
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('name', caseSensitive: caseSensitive);
  }

  QueryBuilder<SPDrawingModel, SPDrawingModel, QDistinct>
      distinctByUpdatedAt() {
    return addDistinctByInternal('updatedAt');
  }
}

extension SPDrawingModelQueryProperty
    on QueryBuilder<SPDrawingModel, SPDrawingModel, QQueryProperty> {
  QueryBuilder<SPDrawingModel, DateTime, QQueryOperations> createdAtProperty() {
    return addPropertyNameInternal('createdAt');
  }

  QueryBuilder<SPDrawingModel, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<SPDrawingModel, String, QQueryOperations> nameProperty() {
    return addPropertyNameInternal('name');
  }

  QueryBuilder<SPDrawingModel, DateTime, QQueryOperations> updatedAtProperty() {
    return addPropertyNameInternal('updatedAt');
  }
}
