// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, unused_local_variable

extension GetEmployeeCollection on Isar {
  IsarCollection<Employee> get employees => getCollection();
}

const EmployeeSchema = CollectionSchema(
  name: 'Employee',
  schema:
      '{"name":"Employee","idName":"isarId","properties":[{"name":"employeeName","type":"String"}],"indexes":[],"links":[]}',
  idName: 'isarId',
  propertyIds: {'employeeName': 0},
  listProperties: {},
  indexIds: {},
  indexValueTypes: {},
  linkIds: {},
  backlinkLinkNames: {},
  getId: _employeeGetId,
  setId: _employeeSetId,
  getLinks: _employeeGetLinks,
  attachLinks: _employeeAttachLinks,
  serializeNative: _employeeSerializeNative,
  deserializeNative: _employeeDeserializeNative,
  deserializePropNative: _employeeDeserializePropNative,
  serializeWeb: _employeeSerializeWeb,
  deserializeWeb: _employeeDeserializeWeb,
  deserializePropWeb: _employeeDeserializePropWeb,
  version: 3,
);

int? _employeeGetId(Employee object) {
  if (object.isarId == Isar.autoIncrement) {
    return null;
  } else {
    return object.isarId;
  }
}

void _employeeSetId(Employee object, int id) {
  object.isarId = id;
}

List<IsarLinkBase> _employeeGetLinks(Employee object) {
  return [];
}

void _employeeSerializeNative(
    IsarCollection<Employee> collection,
    IsarRawObject rawObj,
    Employee object,
    int staticSize,
    List<int> offsets,
    AdapterAlloc alloc) {
  var dynamicSize = 0;
  final value0 = object.employeeName;
  final _employeeName = IsarBinaryWriter.utf8Encoder.convert(value0);
  dynamicSize += (_employeeName.length) as int;
  final size = staticSize + dynamicSize;

  rawObj.buffer = alloc(size);
  rawObj.buffer_length = size;
  final buffer = IsarNative.bufAsBytes(rawObj.buffer, size);
  final writer = IsarBinaryWriter(buffer, staticSize);
  writer.writeBytes(offsets[0], _employeeName);
}

Employee _employeeDeserializeNative(IsarCollection<Employee> collection, int id,
    IsarBinaryReader reader, List<int> offsets) {
  final object = Employee(
    employeeName: reader.readString(offsets[0]),
  );
  object.isarId = id;
  return object;
}

P _employeeDeserializePropNative<P>(
    int id, IsarBinaryReader reader, int propertyIndex, int offset) {
  switch (propertyIndex) {
    case -1:
      return id as P;
    case 0:
      return (reader.readString(offset)) as P;
    default:
      throw 'Illegal propertyIndex';
  }
}

dynamic _employeeSerializeWeb(
    IsarCollection<Employee> collection, Employee object) {
  final jsObj = IsarNative.newJsObject();
  IsarNative.jsObjectSet(jsObj, 'employeeName', object.employeeName);
  IsarNative.jsObjectSet(jsObj, 'isarId', object.isarId);
  return jsObj;
}

Employee _employeeDeserializeWeb(
    IsarCollection<Employee> collection, dynamic jsObj) {
  final object = Employee(
    employeeName: IsarNative.jsObjectGet(jsObj, 'employeeName') ?? '',
  );
  object.isarId = IsarNative.jsObjectGet(jsObj, 'isarId');
  return object;
}

P _employeeDeserializePropWeb<P>(Object jsObj, String propertyName) {
  switch (propertyName) {
    case 'employeeName':
      return (IsarNative.jsObjectGet(jsObj, 'employeeName') ?? '') as P;
    case 'isarId':
      return (IsarNative.jsObjectGet(jsObj, 'isarId')) as P;
    default:
      throw 'Illegal propertyName';
  }
}

void _employeeAttachLinks(IsarCollection col, int id, Employee object) {}

extension EmployeeQueryWhereSort on QueryBuilder<Employee, Employee, QWhere> {
  QueryBuilder<Employee, Employee, QAfterWhere> anyIsarId() {
    return addWhereClauseInternal(const IdWhereClause.any());
  }
}

extension EmployeeQueryWhere on QueryBuilder<Employee, Employee, QWhereClause> {
  QueryBuilder<Employee, Employee, QAfterWhereClause> isarIdEqualTo(
      int isarId) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: isarId,
      includeLower: true,
      upper: isarId,
      includeUpper: true,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterWhereClause> isarIdNotEqualTo(
      int isarId) {
    if (whereSortInternal == Sort.asc) {
      return addWhereClauseInternal(
        IdWhereClause.lessThan(upper: isarId, includeUpper: false),
      ).addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: isarId, includeLower: false),
      );
    } else {
      return addWhereClauseInternal(
        IdWhereClause.greaterThan(lower: isarId, includeLower: false),
      ).addWhereClauseInternal(
        IdWhereClause.lessThan(upper: isarId, includeUpper: false),
      );
    }
  }

  QueryBuilder<Employee, Employee, QAfterWhereClause> isarIdGreaterThan(
      int isarId,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.greaterThan(lower: isarId, includeLower: include),
    );
  }

  QueryBuilder<Employee, Employee, QAfterWhereClause> isarIdLessThan(int isarId,
      {bool include = false}) {
    return addWhereClauseInternal(
      IdWhereClause.lessThan(upper: isarId, includeUpper: include),
    );
  }

  QueryBuilder<Employee, Employee, QAfterWhereClause> isarIdBetween(
    int lowerIsarId,
    int upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addWhereClauseInternal(IdWhereClause.between(
      lower: lowerIsarId,
      includeLower: includeLower,
      upper: upperIsarId,
      includeUpper: includeUpper,
    ));
  }
}

extension EmployeeQueryFilter
    on QueryBuilder<Employee, Employee, QFilterCondition> {
  QueryBuilder<Employee, Employee, QAfterFilterCondition> employeeNameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'employeeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      employeeNameGreaterThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'employeeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> employeeNameLessThan(
    String value, {
    bool caseSensitive = true,
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'employeeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> employeeNameBetween(
    String lower,
    String upper, {
    bool caseSensitive = true,
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'employeeName',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition>
      employeeNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.startsWith,
      property: 'employeeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> employeeNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.endsWith,
      property: 'employeeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> employeeNameContains(
      String value,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.contains,
      property: 'employeeName',
      value: value,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> employeeNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.matches,
      property: 'employeeName',
      value: pattern,
      caseSensitive: caseSensitive,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> isarIdIsNull() {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.isNull,
      property: 'isarId',
      value: null,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> isarIdEqualTo(
      int value) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.eq,
      property: 'isarId',
      value: value,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> isarIdGreaterThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.gt,
      include: include,
      property: 'isarId',
      value: value,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> isarIdLessThan(
    int value, {
    bool include = false,
  }) {
    return addFilterConditionInternal(FilterCondition(
      type: ConditionType.lt,
      include: include,
      property: 'isarId',
      value: value,
    ));
  }

  QueryBuilder<Employee, Employee, QAfterFilterCondition> isarIdBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return addFilterConditionInternal(FilterCondition.between(
      property: 'isarId',
      lower: lower,
      includeLower: includeLower,
      upper: upper,
      includeUpper: includeUpper,
    ));
  }
}

extension EmployeeQueryLinks
    on QueryBuilder<Employee, Employee, QFilterCondition> {}

extension EmployeeQueryWhereSortBy
    on QueryBuilder<Employee, Employee, QSortBy> {
  QueryBuilder<Employee, Employee, QAfterSortBy> sortByEmployeeName() {
    return addSortByInternal('employeeName', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByEmployeeNameDesc() {
    return addSortByInternal('employeeName', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByIsarId() {
    return addSortByInternal('isarId', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> sortByIsarIdDesc() {
    return addSortByInternal('isarId', Sort.desc);
  }
}

extension EmployeeQueryWhereSortThenBy
    on QueryBuilder<Employee, Employee, QSortThenBy> {
  QueryBuilder<Employee, Employee, QAfterSortBy> thenByEmployeeName() {
    return addSortByInternal('employeeName', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByEmployeeNameDesc() {
    return addSortByInternal('employeeName', Sort.desc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByIsarId() {
    return addSortByInternal('isarId', Sort.asc);
  }

  QueryBuilder<Employee, Employee, QAfterSortBy> thenByIsarIdDesc() {
    return addSortByInternal('isarId', Sort.desc);
  }
}

extension EmployeeQueryWhereDistinct
    on QueryBuilder<Employee, Employee, QDistinct> {
  QueryBuilder<Employee, Employee, QDistinct> distinctByEmployeeName(
      {bool caseSensitive = true}) {
    return addDistinctByInternal('employeeName', caseSensitive: caseSensitive);
  }

  QueryBuilder<Employee, Employee, QDistinct> distinctByIsarId() {
    return addDistinctByInternal('isarId');
  }
}

extension EmployeeQueryProperty
    on QueryBuilder<Employee, Employee, QQueryProperty> {
  QueryBuilder<Employee, String, QQueryOperations> employeeNameProperty() {
    return addPropertyNameInternal('employeeName');
  }

  QueryBuilder<Employee, int?, QQueryOperations> isarIdProperty() {
    return addPropertyNameInternal('isarId');
  }
}
