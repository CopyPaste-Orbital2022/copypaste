// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sp_point_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetSPPointModelCollection on Isar {
  IsarCollection<SPPointModel> get sPPointModels => getCollection();
}

const SPPointModelSchema = CollectionSchema(
  name: 'SPPointModel',
  schema:
      '{"name":"SPPointModel","idName":"id","properties":[{"name":"dx","type":"Double"},{"name":"dy","type":"Double"},{"name":"index","type":"Long"},{"name":"pressure","type":"Double"}],"indexes":[],"links":[]}',
  idName: 'id',
  propertyIds: {'dx': 0, 'dy': 1, 'index': 2, 'pressure': 3},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {'stroke': 0},
  backlinkLinkNames: {'stroke': 'points'},
  getId: _sPPointModelGetId,
  setId: _sPPointModelSetId,
  getLinks: _sPPointModelGetLinks,
  attachLinks: _sPPointModelAttachLinks,
  serializeNative: _sPPointModelSerializeNative,
  deserializeNative: _sPPointModelDeserializeNative,
  deserializePropNative: _sPPointModelDeserializePropNative,
  serializeWeb: _sPPointModelSerializeWeb,
  deserializeWeb: _sPPointModelDeserializeWeb,
  deserializePropWeb: _sPPointModelDeserializePropWeb,
  version: 3,
);

int? _sPPointModelGetId(SPPointModel object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _sPPointModelSetId(SPPointModel object, int id) {
  object.id = id;
}

List<IsarLinkBase> _sPPointModelGetLinks(SPPointModel object) {
  return [object.stroke];
}

void _sPPointModelSerializeNative(
    IsarCollection<SPPointModel> collection,
    IsarRawObject rawObj,
    SPPointModel object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.dx;
  final _dx = value0;
  final value1 = object.dy;
  final _dy = value1;
  final value2 = object.index;
  final _index = value2;
  final value3 = object.pressure;
  final _pressure = value3;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeDouble(offsets[0], _dx);
  writer.writeDouble(offsets[1], _dy);
  writer.writeLong(offsets[2], _index);
  writer.writeDouble(offsets[3], _pressure);
}

SPPointModel _sPPointModelDeserializeNative(
    IsarCollection<SPPointModel> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = SPPointModel();
  object.dx = reader.readDouble(offsets[0]);
  object.dy = reader.readDouble(offsets[1]);
  object.id = id;
  object.index = reader.readLong(offsets[2]);
  object.pressure = reader.readDouble(offsets[3]);
  _sPPointModelAttachLinks(collection, id, object);
  return object;
}

P _sPPointModelDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readDouble(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _sPPointModelSerializeWeb(
    IsarCollection<SPPointModel> collection, SPPointModel object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'dx', object.dx);
  IsarNative.jsObjectSet(jsObj, 'dy', object.dy);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'index', object.index);
  IsarNative.jsObjectSet(jsObj, 'pressure', object.pressure);
  return jsObj;
}

SPPointModel _sPPointModelDeserializeWeb(
    IsarCollection<SPPointModel> collection, dynamic jsObj) {
  final object = SPPointModel();
  object.dx = IsarNative.jsObjectGet(jsObj, 'dx') ?? double.negativeInfinity;
  object.dy = IsarNative.jsObjectGet(jsObj, 'dy') ?? double.negativeInfinity;
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  object.index =
      IsarNative.jsObjectGet(jsObj, 'index') ?? double.negativeInfinity;
  object.pressure =
      IsarNative.jsObjectGet(jsObj, 'pressure') ?? double.negativeInfinity;
  _sPPointModelAttachLinks(collection,
      IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity, object);
  return object;
}

P _sPPointModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'dx':
      return (IsarNative.jsObjectGet(jsObj, 'dx') ?? double.negativeInfinity)
          as P;
    case 'dy':
      return (IsarNative.jsObjectGet(jsObj, 'dy') ?? double.negativeInfinity)
          as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'index':
      return (IsarNative.jsObjectGet(jsObj, 'index') ?? double.negativeInfinity)
          as P;
    case 'pressure':
      return (IsarNative.jsObjectGet(jsObj, 'pressure') ??
          double.negativeInfinity) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _sPPointModelAttachLinks(IsarCollection col, int id, SPPointModel object) {
  object.stroke.attach(col, col.isar.sPStrokeModels, 'stroke', id);
}

extension SPPointModelQueryWhereSort
    on QueryBuilder<SPPointModel, SPPointModel, QWhere> {
  QueryBuilder<SPPointModel, SPPointModel, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension SPPointModelQueryWhere
    on QueryBuilder<SPPointModel, SPPointModel, QWhereClause> {
  QueryBuilder<SPPointModel, SPPointModel, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<SPPointModel, SPPointModel, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterWhereClause> idLessThan(int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterWhereClause> idBetween(
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

extension SPPointModelQueryFilter
    on QueryBuilder<SPPointModel, SPPointModel, QFilterCondition> {
  QueryBuilder<SPPointModel, SPPointModel, QAfterFilterCondition> dxGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'dx',
      value: value,
    ));
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterFilterCondition> dxLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'dx',
      value: value,
    ));
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterFilterCondition> dxBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'dx',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterFilterCondition> dyGreaterThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'dy',
      value: value,
    ));
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterFilterCondition> dyLessThan(
      double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'dy',
      value: value,
    ));
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterFilterCondition> dyBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'dy',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<SPPointModel, SPPointModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SPPointModel, SPPointModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SPPointModel, SPPointModel, QAfterFilterCondition> indexEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'index',
      value: value,
    ));
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterFilterCondition>
      indexGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'index',
      value: value,
    ));
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterFilterCondition> indexLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'index',
      value: value,
    ));
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterFilterCondition> indexBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'index',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterFilterCondition>
      pressureGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'pressure',
      value: value,
    ));
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterFilterCondition>
      pressureLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'pressure',
      value: value,
    ));
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterFilterCondition>
      pressureBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'pressure',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }
}

extension SPPointModelQueryLinks
    on QueryBuilder<SPPointModel, SPPointModel, QFilterCondition> {
  QueryBuilder<SPPointModel, SPPointModel, QAfterFilterCondition> stroke(
      FilterQuery<SPStrokeModel> q) {
    return linkInternal(
      isar.sPStrokeModels,
      q,
      'stroke',
    );
  }
}

extension SPPointModelQueryWhereSortBy
    on QueryBuilder<SPPointModel, SPPointModel, QSortBy> {
  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> sortByDx() {
    return addSortByInternal('dx', Sort.asc);
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> sortByDxDesc() {
    return addSortByInternal('dx', Sort.desc);
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> sortByDy() {
    return addSortByInternal('dy', Sort.asc);
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> sortByDyDesc() {
    return addSortByInternal('dy', Sort.desc);
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> sortByIndex() {
    return addSortByInternal('index', Sort.asc);
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> sortByIndexDesc() {
    return addSortByInternal('index', Sort.desc);
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> sortByPressure() {
    return addSortByInternal('pressure', Sort.asc);
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> sortByPressureDesc() {
    return addSortByInternal('pressure', Sort.desc);
  }
}

extension SPPointModelQueryWhereSortThenBy
    on QueryBuilder<SPPointModel, SPPointModel, QSortThenBy> {
  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> thenByDx() {
    return addSortByInternal('dx', Sort.asc);
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> thenByDxDesc() {
    return addSortByInternal('dx', Sort.desc);
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> thenByDy() {
    return addSortByInternal('dy', Sort.asc);
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> thenByDyDesc() {
    return addSortByInternal('dy', Sort.desc);
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> thenByIndex() {
    return addSortByInternal('index', Sort.asc);
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> thenByIndexDesc() {
    return addSortByInternal('index', Sort.desc);
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> thenByPressure() {
    return addSortByInternal('pressure', Sort.asc);
  }

  QueryBuilder<SPPointModel, SPPointModel, QAfterSortBy> thenByPressureDesc() {
    return addSortByInternal('pressure', Sort.desc);
  }
}

extension SPPointModelQueryWhereDistinct
    on QueryBuilder<SPPointModel, SPPointModel, QDistinct> {
  QueryBuilder<SPPointModel, SPPointModel, QDistinct> distinctByDx() {
    return addDistinctByInternal('dx');
  }

  QueryBuilder<SPPointModel, SPPointModel, QDistinct> distinctByDy() {
    return addDistinctByInternal('dy');
  }

  QueryBuilder<SPPointModel, SPPointModel, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<SPPointModel, SPPointModel, QDistinct> distinctByIndex() {
    return addDistinctByInternal('index');
  }

  QueryBuilder<SPPointModel, SPPointModel, QDistinct> distinctByPressure() {
    return addDistinctByInternal('pressure');
  }
}

extension SPPointModelQueryProperty
    on QueryBuilder<SPPointModel, SPPointModel, QQueryProperty> {
  QueryBuilder<SPPointModel, double, QQueryOperations> dxProperty() {
    return addPropertyNameInternal('dx');
  }

  QueryBuilder<SPPointModel, double, QQueryOperations> dyProperty() {
    return addPropertyNameInternal('dy');
  }

  QueryBuilder<SPPointModel, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<SPPointModel, int, QQueryOperations> indexProperty() {
    return addPropertyNameInternal('index');
  }

  QueryBuilder<SPPointModel, double, QQueryOperations> pressureProperty() {
    return addPropertyNameInternal('pressure');
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SPPointJsonModel _$SPPointJsonModelFromJson(Map<String, dynamic> json) =>
    SPPointJsonModel(
      id: json['point_id'] as int,
      index: json['index'] as int,
      dx: (json['dx'] as num).toDouble(),
      dy: (json['dy'] as num).toDouble(),
      pressure: (json['pressure'] as num).toDouble(),
    );

Map<String, dynamic> _$SPPointJsonModelToJson(SPPointJsonModel instance) =>
    <String, dynamic>{
      'point_id': instance.id,
      'index': instance.index,
      'dx': instance.dx,
      'dy': instance.dy,
      'pressure': instance.pressure,
    };
