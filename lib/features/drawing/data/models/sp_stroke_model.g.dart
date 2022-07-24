// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sp_stroke_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetSPStrokeModelCollection on Isar {
  IsarCollection<SPStrokeModel> get sPStrokeModels => getCollection();
}

const SPStrokeModelSchema = CollectionSchema(
  name: 'SPStrokeModel',
  schema:
      '{"name":"SPStrokeModel","idName":"id","properties":[{"name":"capEnd","type":"Bool"},{"name":"capStart","type":"Bool"},{"name":"color","type":"Long"},{"name":"isComplete","type":"Bool"},{"name":"simulatePressure","type":"Bool"},{"name":"size","type":"Double"},{"name":"smoothing","type":"Double"},{"name":"streamline","type":"Double"},{"name":"synced","type":"Bool"},{"name":"taperEnd","type":"Double"},{"name":"taperStart","type":"Double"},{"name":"thinning","type":"Double"}],"indexes":[],"links":[{"name":"points","target":"SPPointModel"}]}',
  idName: 'id',
  propertyIds: {
    'capEnd': 0,
    'capStart': 1,
    'color': 2,
    'isComplete': 3,
    'simulatePressure': 4,
    'size': 5,
    'smoothing': 6,
    'streamline': 7,
    'synced': 8,
    'taperEnd': 9,
    'taperStart': 10,
    'thinning': 11
  },
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {'points': 0, 'drawing': 1},
  backlinkLinkNames: {'drawing': 'strokes'},
  getId: _sPStrokeModelGetId,
  setId: _sPStrokeModelSetId,
  getLinks: _sPStrokeModelGetLinks,
  attachLinks: _sPStrokeModelAttachLinks,
  serializeNative: _sPStrokeModelSerializeNative,
  deserializeNative: _sPStrokeModelDeserializeNative,
  deserializePropNative: _sPStrokeModelDeserializePropNative,
  serializeWeb: _sPStrokeModelSerializeWeb,
  deserializeWeb: _sPStrokeModelDeserializeWeb,
  deserializePropWeb: _sPStrokeModelDeserializePropWeb,
  version: 3,
);

int? _sPStrokeModelGetId(SPStrokeModel object) {
  if (object.id == Isar.autoIncrement) {
    return null;
  } else {
    return object.id;
  }
}

void _sPStrokeModelSetId(SPStrokeModel object, int id) {
  object.id = id;
}

List<IsarLinkBase> _sPStrokeModelGetLinks(SPStrokeModel object) {
  return [object.points, object.drawing];
}

void _sPStrokeModelSerializeNative(
    IsarCollection<SPStrokeModel> collection,
    IsarRawObject rawObj,
    SPStrokeModel object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.capEnd;
  final _capEnd = value0;
  final value1 = object.capStart;
  final _capStart = value1;
  final value2 = object.color;
  final _color = value2;
  final value3 = object.isComplete;
  final _isComplete = value3;
  final value4 = object.simulatePressure;
  final _simulatePressure = value4;
  final value5 = object.size;
  final _size = value5;
  final value6 = object.smoothing;
  final _smoothing = value6;
  final value7 = object.streamline;
  final _streamline = value7;
  final value8 = object.synced;
  final _synced = value8;
  final value9 = object.taperEnd;
  final _taperEnd = value9;
  final value10 = object.taperStart;
  final _taperStart = value10;
  final value11 = object.thinning;
  final _thinning = value11;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBool(offsets[0], _capEnd);
  writer.writeBool(offsets[1], _capStart);
  writer.writeLong(offsets[2], _color);
  writer.writeBool(offsets[3], _isComplete);
  writer.writeBool(offsets[4], _simulatePressure);
  writer.writeDouble(offsets[5], _size);
  writer.writeDouble(offsets[6], _smoothing);
  writer.writeDouble(offsets[7], _streamline);
  writer.writeBool(offsets[8], _synced);
  writer.writeDouble(offsets[9], _taperEnd);
  writer.writeDouble(offsets[10], _taperStart);
  writer.writeDouble(offsets[11], _thinning);
}

SPStrokeModel _sPStrokeModelDeserializeNative(
    IsarCollection<SPStrokeModel> collection,
    int id,
    IsarBinaryReader reader,
    List<int> offsets) {
  final object = SPStrokeModel();
  object.capEnd = reader.readBool(offsets[0]);
  object.capStart = reader.readBool(offsets[1]);
  object.color = reader.readLong(offsets[2]);
  object.id = id;
  object.isComplete = reader.readBool(offsets[3]);
  object.simulatePressure = reader.readBool(offsets[4]);
  object.size = reader.readDouble(offsets[5]);
  object.smoothing = reader.readDouble(offsets[6]);
  object.streamline = reader.readDouble(offsets[7]);
  object.synced = reader.readBool(offsets[8]);
  object.taperEnd = reader.readDouble(offsets[9]);
  object.taperStart = reader.readDouble(offsets[10]);
  object.thinning = reader.readDouble(offsets[11]);
  _sPStrokeModelAttachLinks(collection, id, object);
  return object;
}

P _sPStrokeModelDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readBool(offset)) as P;
    case 1:
      return (reader.readBool(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readBool(offset)) as P;
    case 4:
      return (reader.readBool(offset)) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readDouble(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
      return (reader.readDouble(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    case 11:
      return (reader.readDouble(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _sPStrokeModelSerializeWeb(
    IsarCollection<SPStrokeModel> collection, SPStrokeModel object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'capEnd', object.capEnd);
  IsarNative.jsObjectSet(jsObj, 'capStart', object.capStart);
  IsarNative.jsObjectSet(jsObj, 'color', object.color);
  IsarNative.jsObjectSet(jsObj, 'id', object.id);
  IsarNative.jsObjectSet(jsObj, 'isComplete', object.isComplete);
  IsarNative.jsObjectSet(jsObj, 'simulatePressure', object.simulatePressure);
  IsarNative.jsObjectSet(jsObj, 'size', object.size);
  IsarNative.jsObjectSet(jsObj, 'smoothing', object.smoothing);
  IsarNative.jsObjectSet(jsObj, 'streamline', object.streamline);
  IsarNative.jsObjectSet(jsObj, 'synced', object.synced);
  IsarNative.jsObjectSet(jsObj, 'taperEnd', object.taperEnd);
  IsarNative.jsObjectSet(jsObj, 'taperStart', object.taperStart);
  IsarNative.jsObjectSet(jsObj, 'thinning', object.thinning);
  return jsObj;
}

SPStrokeModel _sPStrokeModelDeserializeWeb(
    IsarCollection<SPStrokeModel> collection, dynamic jsObj) {
  final object = SPStrokeModel();
  object.capEnd = IsarNative.jsObjectGet(jsObj, 'capEnd') ?? false;
  object.capStart = IsarNative.jsObjectGet(jsObj, 'capStart') ?? false;
  object.color =
      IsarNative.jsObjectGet(jsObj, 'color') ?? double.negativeInfinity;
  object.id = IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity;
  object.isComplete = IsarNative.jsObjectGet(jsObj, 'isComplete') ?? false;
  object.simulatePressure =
      IsarNative.jsObjectGet(jsObj, 'simulatePressure') ?? false;
  object.size =
      IsarNative.jsObjectGet(jsObj, 'size') ?? double.negativeInfinity;
  object.smoothing =
      IsarNative.jsObjectGet(jsObj, 'smoothing') ?? double.negativeInfinity;
  object.streamline =
      IsarNative.jsObjectGet(jsObj, 'streamline') ?? double.negativeInfinity;
  object.synced = IsarNative.jsObjectGet(jsObj, 'synced') ?? false;
  object.taperEnd =
      IsarNative.jsObjectGet(jsObj, 'taperEnd') ?? double.negativeInfinity;
  object.taperStart =
      IsarNative.jsObjectGet(jsObj, 'taperStart') ?? double.negativeInfinity;
  object.thinning =
      IsarNative.jsObjectGet(jsObj, 'thinning') ?? double.negativeInfinity;
  _sPStrokeModelAttachLinks(collection,
      IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity, object);
  return object;
}

P _sPStrokeModelDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'capEnd':
      return (IsarNative.jsObjectGet(jsObj, 'capEnd') ?? false) as P;
    case 'capStart':
      return (IsarNative.jsObjectGet(jsObj, 'capStart') ?? false) as P;
    case 'color':
      return (IsarNative.jsObjectGet(jsObj, 'color') ?? double.negativeInfinity)
          as P;
    case 'id':
      return (IsarNative.jsObjectGet(jsObj, 'id') ?? double.negativeInfinity)
          as P;
    case 'isComplete':
      return (IsarNative.jsObjectGet(jsObj, 'isComplete') ?? false) as P;
    case 'simulatePressure':
      return (IsarNative.jsObjectGet(jsObj, 'simulatePressure') ?? false) as P;
    case 'size':
      return (IsarNative.jsObjectGet(jsObj, 'size') ?? double.negativeInfinity)
          as P;
    case 'smoothing':
      return (IsarNative.jsObjectGet(jsObj, 'smoothing') ??
          double.negativeInfinity) as P;
    case 'streamline':
      return (IsarNative.jsObjectGet(jsObj, 'streamline') ??
          double.negativeInfinity) as P;
    case 'synced':
      return (IsarNative.jsObjectGet(jsObj, 'synced') ?? false) as P;
    case 'taperEnd':
      return (IsarNative.jsObjectGet(jsObj, 'taperEnd') ??
          double.negativeInfinity) as P;
    case 'taperStart':
      return (IsarNative.jsObjectGet(jsObj, 'taperStart') ??
          double.negativeInfinity) as P;
    case 'thinning':
      return (IsarNative.jsObjectGet(jsObj, 'thinning') ??
          double.negativeInfinity) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _sPStrokeModelAttachLinks(
    IsarCollection col, int id, SPStrokeModel object) {
  object.points.attach(col, col.isar.sPPointModels, 'points', id);
  object.drawing.attach(col, col.isar.sPDrawingModels, 'drawing', id);
}

extension SPStrokeModelQueryWhereSort
    on QueryBuilder<SPStrokeModel, SPStrokeModel, QWhere> {
  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterWhere> anyId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension SPStrokeModelQueryWhere
    on QueryBuilder<SPStrokeModel, SPStrokeModel, QWhereClause> {
  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterWhereClause> idEqualTo(
      int id) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: id,
      includeLower: true,
      upper: id,
      includeUpper: true,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterWhereClause> idNotEqualTo(
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

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterWhereClause> idGreaterThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: id, includeLower: include),
    );
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterWhereClause> idLessThan(
      int id,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: id, includeUpper: include),
    );
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterWhereClause> idBetween(
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

extension SPStrokeModelQueryFilter
    on QueryBuilder<SPStrokeModel, SPStrokeModel, QFilterCondition> {
  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      capEndEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'capEnd',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      capStartEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'capStart',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      colorEqualTo(int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'color',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      colorGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'color',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      colorLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'color',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      colorBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'color',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition> idEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'id',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
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

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition> idBetween(
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

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      isCompleteEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'isComplete',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      simulatePressureEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'simulatePressure',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      sizeGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'size',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      sizeLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'size',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition> sizeBetween(
      double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'size',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      smoothingGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'smoothing',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      smoothingLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'smoothing',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      smoothingBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'smoothing',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      streamlineGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'streamline',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      streamlineLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'streamline',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      streamlineBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'streamline',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      syncedEqualTo(bool value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'synced',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      taperEndGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'taperEnd',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      taperEndLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'taperEnd',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      taperEndBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taperEnd',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      taperStartGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'taperStart',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      taperStartLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'taperStart',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      taperStartBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'taperStart',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      thinningGreaterThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: false,
      property: 'thinning',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      thinningLessThan(double value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: false,
      property: 'thinning',
      value: value,
    ));
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition>
      thinningBetween(double lower, double upper) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'thinning',
      lower: lower,
      includeLower: false,
      upper: upper,
      includeUpper: false,
    ));
  }
}

extension SPStrokeModelQueryLinks
    on QueryBuilder<SPStrokeModel, SPStrokeModel, QFilterCondition> {
  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition> points(
      FilterQuery<SPPointModel> q) {
    return linkInternal(
      isar.sPPointModels,
      q,
      'points',
    );
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterFilterCondition> drawing(
      FilterQuery<SPDrawingModel> q) {
    return linkInternal(
      isar.sPDrawingModels,
      q,
      'drawing',
    );
  }
}

extension SPStrokeModelQueryWhereSortBy
    on QueryBuilder<SPStrokeModel, SPStrokeModel, QSortBy> {
  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> sortByCapEnd() {
    return addSortByInternal('capEnd', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> sortByCapEndDesc() {
    return addSortByInternal('capEnd', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> sortByCapStart() {
    return addSortByInternal('capStart', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy>
      sortByCapStartDesc() {
    return addSortByInternal('capStart', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> sortByColor() {
    return addSortByInternal('color', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> sortByColorDesc() {
    return addSortByInternal('color', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> sortById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> sortByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> sortByIsComplete() {
    return addSortByInternal('isComplete', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy>
      sortByIsCompleteDesc() {
    return addSortByInternal('isComplete', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy>
      sortBySimulatePressure() {
    return addSortByInternal('simulatePressure', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy>
      sortBySimulatePressureDesc() {
    return addSortByInternal('simulatePressure', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> sortBySize() {
    return addSortByInternal('size', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> sortBySizeDesc() {
    return addSortByInternal('size', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> sortBySmoothing() {
    return addSortByInternal('smoothing', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy>
      sortBySmoothingDesc() {
    return addSortByInternal('smoothing', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> sortByStreamline() {
    return addSortByInternal('streamline', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy>
      sortByStreamlineDesc() {
    return addSortByInternal('streamline', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> sortBySynced() {
    return addSortByInternal('synced', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> sortBySyncedDesc() {
    return addSortByInternal('synced', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> sortByTaperEnd() {
    return addSortByInternal('taperEnd', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy>
      sortByTaperEndDesc() {
    return addSortByInternal('taperEnd', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> sortByTaperStart() {
    return addSortByInternal('taperStart', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy>
      sortByTaperStartDesc() {
    return addSortByInternal('taperStart', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> sortByThinning() {
    return addSortByInternal('thinning', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy>
      sortByThinningDesc() {
    return addSortByInternal('thinning', Sort.desc);
  }
}

extension SPStrokeModelQueryWhereSortThenBy
    on QueryBuilder<SPStrokeModel, SPStrokeModel, QSortThenBy> {
  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> thenByCapEnd() {
    return addSortByInternal('capEnd', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> thenByCapEndDesc() {
    return addSortByInternal('capEnd', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> thenByCapStart() {
    return addSortByInternal('capStart', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy>
      thenByCapStartDesc() {
    return addSortByInternal('capStart', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> thenByColor() {
    return addSortByInternal('color', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> thenByColorDesc() {
    return addSortByInternal('color', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> thenById() {
    return addSortByInternal('id', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> thenByIdDesc() {
    return addSortByInternal('id', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> thenByIsComplete() {
    return addSortByInternal('isComplete', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy>
      thenByIsCompleteDesc() {
    return addSortByInternal('isComplete', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy>
      thenBySimulatePressure() {
    return addSortByInternal('simulatePressure', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy>
      thenBySimulatePressureDesc() {
    return addSortByInternal('simulatePressure', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> thenBySize() {
    return addSortByInternal('size', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> thenBySizeDesc() {
    return addSortByInternal('size', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> thenBySmoothing() {
    return addSortByInternal('smoothing', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy>
      thenBySmoothingDesc() {
    return addSortByInternal('smoothing', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> thenByStreamline() {
    return addSortByInternal('streamline', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy>
      thenByStreamlineDesc() {
    return addSortByInternal('streamline', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> thenBySynced() {
    return addSortByInternal('synced', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> thenBySyncedDesc() {
    return addSortByInternal('synced', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> thenByTaperEnd() {
    return addSortByInternal('taperEnd', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy>
      thenByTaperEndDesc() {
    return addSortByInternal('taperEnd', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> thenByTaperStart() {
    return addSortByInternal('taperStart', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy>
      thenByTaperStartDesc() {
    return addSortByInternal('taperStart', Sort.desc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy> thenByThinning() {
    return addSortByInternal('thinning', Sort.asc);
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QAfterSortBy>
      thenByThinningDesc() {
    return addSortByInternal('thinning', Sort.desc);
  }
}

extension SPStrokeModelQueryWhereDistinct
    on QueryBuilder<SPStrokeModel, SPStrokeModel, QDistinct> {
  QueryBuilder<SPStrokeModel, SPStrokeModel, QDistinct> distinctByCapEnd() {
    return addDistinctByInternal('capEnd');
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QDistinct> distinctByCapStart() {
    return addDistinctByInternal('capStart');
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QDistinct> distinctByColor() {
    return addDistinctByInternal('color');
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QDistinct> distinctById() {
    return addDistinctByInternal('id');
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QDistinct> distinctByIsComplete() {
    return addDistinctByInternal('isComplete');
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QDistinct>
      distinctBySimulatePressure() {
    return addDistinctByInternal('simulatePressure');
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QDistinct> distinctBySize() {
    return addDistinctByInternal('size');
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QDistinct> distinctBySmoothing() {
    return addDistinctByInternal('smoothing');
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QDistinct> distinctByStreamline() {
    return addDistinctByInternal('streamline');
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QDistinct> distinctBySynced() {
    return addDistinctByInternal('synced');
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QDistinct> distinctByTaperEnd() {
    return addDistinctByInternal('taperEnd');
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QDistinct> distinctByTaperStart() {
    return addDistinctByInternal('taperStart');
  }

  QueryBuilder<SPStrokeModel, SPStrokeModel, QDistinct> distinctByThinning() {
    return addDistinctByInternal('thinning');
  }
}

extension SPStrokeModelQueryProperty
    on QueryBuilder<SPStrokeModel, SPStrokeModel, QQueryProperty> {
  QueryBuilder<SPStrokeModel, bool, QQueryOperations> capEndProperty() {
    return addPropertyNameInternal('capEnd');
  }

  QueryBuilder<SPStrokeModel, bool, QQueryOperations> capStartProperty() {
    return addPropertyNameInternal('capStart');
  }

  QueryBuilder<SPStrokeModel, int, QQueryOperations> colorProperty() {
    return addPropertyNameInternal('color');
  }

  QueryBuilder<SPStrokeModel, int, QQueryOperations> idProperty() {
    return addPropertyNameInternal('id');
  }

  QueryBuilder<SPStrokeModel, bool, QQueryOperations> isCompleteProperty() {
    return addPropertyNameInternal('isComplete');
  }

  QueryBuilder<SPStrokeModel, bool, QQueryOperations>
      simulatePressureProperty() {
    return addPropertyNameInternal('simulatePressure');
  }

  QueryBuilder<SPStrokeModel, double, QQueryOperations> sizeProperty() {
    return addPropertyNameInternal('size');
  }

  QueryBuilder<SPStrokeModel, double, QQueryOperations> smoothingProperty() {
    return addPropertyNameInternal('smoothing');
  }

  QueryBuilder<SPStrokeModel, double, QQueryOperations> streamlineProperty() {
    return addPropertyNameInternal('streamline');
  }

  QueryBuilder<SPStrokeModel, bool, QQueryOperations> syncedProperty() {
    return addPropertyNameInternal('synced');
  }

  QueryBuilder<SPStrokeModel, double, QQueryOperations> taperEndProperty() {
    return addPropertyNameInternal('taperEnd');
  }

  QueryBuilder<SPStrokeModel, double, QQueryOperations> taperStartProperty() {
    return addPropertyNameInternal('taperStart');
  }

  QueryBuilder<SPStrokeModel, double, QQueryOperations> thinningProperty() {
    return addPropertyNameInternal('thinning');
  }
}
