// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $PetTable extends Pet with TableInfo<$PetTable, PetData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PetTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
    'name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 100,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 100,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _breedMeta = const VerificationMeta('breed');
  @override
  late final GeneratedColumn<String> breed = GeneratedColumn<String>(
    'breed',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 100,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumn<String> gender = GeneratedColumn<String>(
    'gender',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 10,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dobMeta = const VerificationMeta('dob');
  @override
  late final GeneratedColumn<DateTime> dob = GeneratedColumn<DateTime>(
    'dob',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _weightMeta = const VerificationMeta('weight');
  @override
  late final GeneratedColumn<double> weight = GeneratedColumn<double>(
    'weight',
    aliasedName,
    true,
    type: DriftSqlType.double,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _owner_nameMeta = const VerificationMeta(
    'owner_name',
  );
  @override
  late final GeneratedColumn<String> owner_name = GeneratedColumn<String>(
    'owner_name',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 100,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _owner_contactMeta = const VerificationMeta(
    'owner_contact',
  );
  @override
  late final GeneratedColumn<String> owner_contact = GeneratedColumn<String>(
    'owner_contact',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 100,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    name,
    type,
    breed,
    gender,
    dob,
    weight,
    owner_name,
    owner_contact,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pet';
  @override
  VerificationContext validateIntegrity(
    Insertable<PetData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta,
        name.isAcceptableOrUnknown(data['name']!, _nameMeta),
      );
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('breed')) {
      context.handle(
        _breedMeta,
        breed.isAcceptableOrUnknown(data['breed']!, _breedMeta),
      );
    } else if (isInserting) {
      context.missing(_breedMeta);
    }
    if (data.containsKey('gender')) {
      context.handle(
        _genderMeta,
        gender.isAcceptableOrUnknown(data['gender']!, _genderMeta),
      );
    } else if (isInserting) {
      context.missing(_genderMeta);
    }
    if (data.containsKey('dob')) {
      context.handle(
        _dobMeta,
        dob.isAcceptableOrUnknown(data['dob']!, _dobMeta),
      );
    } else if (isInserting) {
      context.missing(_dobMeta);
    }
    if (data.containsKey('weight')) {
      context.handle(
        _weightMeta,
        weight.isAcceptableOrUnknown(data['weight']!, _weightMeta),
      );
    }
    if (data.containsKey('owner_name')) {
      context.handle(
        _owner_nameMeta,
        owner_name.isAcceptableOrUnknown(data['owner_name']!, _owner_nameMeta),
      );
    } else if (isInserting) {
      context.missing(_owner_nameMeta);
    }
    if (data.containsKey('owner_contact')) {
      context.handle(
        _owner_contactMeta,
        owner_contact.isAcceptableOrUnknown(
          data['owner_contact']!,
          _owner_contactMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_owner_contactMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PetData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PetData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}name'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      breed: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}breed'],
      )!,
      gender: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}gender'],
      )!,
      dob: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}dob'],
      )!,
      weight: attachedDatabase.typeMapping.read(
        DriftSqlType.double,
        data['${effectivePrefix}weight'],
      ),
      owner_name: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}owner_name'],
      )!,
      owner_contact: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}owner_contact'],
      )!,
    );
  }

  @override
  $PetTable createAlias(String alias) {
    return $PetTable(attachedDatabase, alias);
  }
}

class PetData extends DataClass implements Insertable<PetData> {
  final int id;
  final String name;
  final String type;
  final String breed;
  final String gender;
  final DateTime dob;
  final double? weight;
  final String owner_name;
  final String owner_contact;
  const PetData({
    required this.id,
    required this.name,
    required this.type,
    required this.breed,
    required this.gender,
    required this.dob,
    this.weight,
    required this.owner_name,
    required this.owner_contact,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    map['type'] = Variable<String>(type);
    map['breed'] = Variable<String>(breed);
    map['gender'] = Variable<String>(gender);
    map['dob'] = Variable<DateTime>(dob);
    if (!nullToAbsent || weight != null) {
      map['weight'] = Variable<double>(weight);
    }
    map['owner_name'] = Variable<String>(owner_name);
    map['owner_contact'] = Variable<String>(owner_contact);
    return map;
  }

  PetCompanion toCompanion(bool nullToAbsent) {
    return PetCompanion(
      id: Value(id),
      name: Value(name),
      type: Value(type),
      breed: Value(breed),
      gender: Value(gender),
      dob: Value(dob),
      weight: weight == null && nullToAbsent
          ? const Value.absent()
          : Value(weight),
      owner_name: Value(owner_name),
      owner_contact: Value(owner_contact),
    );
  }

  factory PetData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PetData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      type: serializer.fromJson<String>(json['type']),
      breed: serializer.fromJson<String>(json['breed']),
      gender: serializer.fromJson<String>(json['gender']),
      dob: serializer.fromJson<DateTime>(json['dob']),
      weight: serializer.fromJson<double?>(json['weight']),
      owner_name: serializer.fromJson<String>(json['owner_name']),
      owner_contact: serializer.fromJson<String>(json['owner_contact']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'type': serializer.toJson<String>(type),
      'breed': serializer.toJson<String>(breed),
      'gender': serializer.toJson<String>(gender),
      'dob': serializer.toJson<DateTime>(dob),
      'weight': serializer.toJson<double?>(weight),
      'owner_name': serializer.toJson<String>(owner_name),
      'owner_contact': serializer.toJson<String>(owner_contact),
    };
  }

  PetData copyWith({
    int? id,
    String? name,
    String? type,
    String? breed,
    String? gender,
    DateTime? dob,
    Value<double?> weight = const Value.absent(),
    String? owner_name,
    String? owner_contact,
  }) => PetData(
    id: id ?? this.id,
    name: name ?? this.name,
    type: type ?? this.type,
    breed: breed ?? this.breed,
    gender: gender ?? this.gender,
    dob: dob ?? this.dob,
    weight: weight.present ? weight.value : this.weight,
    owner_name: owner_name ?? this.owner_name,
    owner_contact: owner_contact ?? this.owner_contact,
  );
  PetData copyWithCompanion(PetCompanion data) {
    return PetData(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
      type: data.type.present ? data.type.value : this.type,
      breed: data.breed.present ? data.breed.value : this.breed,
      gender: data.gender.present ? data.gender.value : this.gender,
      dob: data.dob.present ? data.dob.value : this.dob,
      weight: data.weight.present ? data.weight.value : this.weight,
      owner_name: data.owner_name.present
          ? data.owner_name.value
          : this.owner_name,
      owner_contact: data.owner_contact.present
          ? data.owner_contact.value
          : this.owner_contact,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PetData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('breed: $breed, ')
          ..write('gender: $gender, ')
          ..write('dob: $dob, ')
          ..write('weight: $weight, ')
          ..write('owner_name: $owner_name, ')
          ..write('owner_contact: $owner_contact')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    name,
    type,
    breed,
    gender,
    dob,
    weight,
    owner_name,
    owner_contact,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PetData &&
          other.id == this.id &&
          other.name == this.name &&
          other.type == this.type &&
          other.breed == this.breed &&
          other.gender == this.gender &&
          other.dob == this.dob &&
          other.weight == this.weight &&
          other.owner_name == this.owner_name &&
          other.owner_contact == this.owner_contact);
}

class PetCompanion extends UpdateCompanion<PetData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> type;
  final Value<String> breed;
  final Value<String> gender;
  final Value<DateTime> dob;
  final Value<double?> weight;
  final Value<String> owner_name;
  final Value<String> owner_contact;
  const PetCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.breed = const Value.absent(),
    this.gender = const Value.absent(),
    this.dob = const Value.absent(),
    this.weight = const Value.absent(),
    this.owner_name = const Value.absent(),
    this.owner_contact = const Value.absent(),
  });
  PetCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String type,
    required String breed,
    required String gender,
    required DateTime dob,
    this.weight = const Value.absent(),
    required String owner_name,
    required String owner_contact,
  }) : name = Value(name),
       type = Value(type),
       breed = Value(breed),
       gender = Value(gender),
       dob = Value(dob),
       owner_name = Value(owner_name),
       owner_contact = Value(owner_contact);
  static Insertable<PetData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? type,
    Expression<String>? breed,
    Expression<String>? gender,
    Expression<DateTime>? dob,
    Expression<double>? weight,
    Expression<String>? owner_name,
    Expression<String>? owner_contact,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (breed != null) 'breed': breed,
      if (gender != null) 'gender': gender,
      if (dob != null) 'dob': dob,
      if (weight != null) 'weight': weight,
      if (owner_name != null) 'owner_name': owner_name,
      if (owner_contact != null) 'owner_contact': owner_contact,
    });
  }

  PetCompanion copyWith({
    Value<int>? id,
    Value<String>? name,
    Value<String>? type,
    Value<String>? breed,
    Value<String>? gender,
    Value<DateTime>? dob,
    Value<double?>? weight,
    Value<String>? owner_name,
    Value<String>? owner_contact,
  }) {
    return PetCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      breed: breed ?? this.breed,
      gender: gender ?? this.gender,
      dob: dob ?? this.dob,
      weight: weight ?? this.weight,
      owner_name: owner_name ?? this.owner_name,
      owner_contact: owner_contact ?? this.owner_contact,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (breed.present) {
      map['breed'] = Variable<String>(breed.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(gender.value);
    }
    if (dob.present) {
      map['dob'] = Variable<DateTime>(dob.value);
    }
    if (weight.present) {
      map['weight'] = Variable<double>(weight.value);
    }
    if (owner_name.present) {
      map['owner_name'] = Variable<String>(owner_name.value);
    }
    if (owner_contact.present) {
      map['owner_contact'] = Variable<String>(owner_contact.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PetCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('breed: $breed, ')
          ..write('gender: $gender, ')
          ..write('dob: $dob, ')
          ..write('weight: $weight, ')
          ..write('owner_name: $owner_name, ')
          ..write('owner_contact: $owner_contact')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PetTable pet = $PetTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [pet];
}

typedef $$PetTableCreateCompanionBuilder =
    PetCompanion Function({
      Value<int> id,
      required String name,
      required String type,
      required String breed,
      required String gender,
      required DateTime dob,
      Value<double?> weight,
      required String owner_name,
      required String owner_contact,
    });
typedef $$PetTableUpdateCompanionBuilder =
    PetCompanion Function({
      Value<int> id,
      Value<String> name,
      Value<String> type,
      Value<String> breed,
      Value<String> gender,
      Value<DateTime> dob,
      Value<double?> weight,
      Value<String> owner_name,
      Value<String> owner_contact,
    });

class $$PetTableFilterComposer extends Composer<_$AppDatabase, $PetTable> {
  $$PetTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get breed => $composableBuilder(
    column: $table.breed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get dob => $composableBuilder(
    column: $table.dob,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<double> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get owner_name => $composableBuilder(
    column: $table.owner_name,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get owner_contact => $composableBuilder(
    column: $table.owner_contact,
    builder: (column) => ColumnFilters(column),
  );
}

class $$PetTableOrderingComposer extends Composer<_$AppDatabase, $PetTable> {
  $$PetTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get name => $composableBuilder(
    column: $table.name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get breed => $composableBuilder(
    column: $table.breed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get gender => $composableBuilder(
    column: $table.gender,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get dob => $composableBuilder(
    column: $table.dob,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<double> get weight => $composableBuilder(
    column: $table.weight,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get owner_name => $composableBuilder(
    column: $table.owner_name,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get owner_contact => $composableBuilder(
    column: $table.owner_contact,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$PetTableAnnotationComposer extends Composer<_$AppDatabase, $PetTable> {
  $$PetTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get breed =>
      $composableBuilder(column: $table.breed, builder: (column) => column);

  GeneratedColumn<String> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumn<DateTime> get dob =>
      $composableBuilder(column: $table.dob, builder: (column) => column);

  GeneratedColumn<double> get weight =>
      $composableBuilder(column: $table.weight, builder: (column) => column);

  GeneratedColumn<String> get owner_name => $composableBuilder(
    column: $table.owner_name,
    builder: (column) => column,
  );

  GeneratedColumn<String> get owner_contact => $composableBuilder(
    column: $table.owner_contact,
    builder: (column) => column,
  );
}

class $$PetTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PetTable,
          PetData,
          $$PetTableFilterComposer,
          $$PetTableOrderingComposer,
          $$PetTableAnnotationComposer,
          $$PetTableCreateCompanionBuilder,
          $$PetTableUpdateCompanionBuilder,
          (PetData, BaseReferences<_$AppDatabase, $PetTable, PetData>),
          PetData,
          PrefetchHooks Function()
        > {
  $$PetTableTableManager(_$AppDatabase db, $PetTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PetTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PetTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PetTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> name = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> breed = const Value.absent(),
                Value<String> gender = const Value.absent(),
                Value<DateTime> dob = const Value.absent(),
                Value<double?> weight = const Value.absent(),
                Value<String> owner_name = const Value.absent(),
                Value<String> owner_contact = const Value.absent(),
              }) => PetCompanion(
                id: id,
                name: name,
                type: type,
                breed: breed,
                gender: gender,
                dob: dob,
                weight: weight,
                owner_name: owner_name,
                owner_contact: owner_contact,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String name,
                required String type,
                required String breed,
                required String gender,
                required DateTime dob,
                Value<double?> weight = const Value.absent(),
                required String owner_name,
                required String owner_contact,
              }) => PetCompanion.insert(
                id: id,
                name: name,
                type: type,
                breed: breed,
                gender: gender,
                dob: dob,
                weight: weight,
                owner_name: owner_name,
                owner_contact: owner_contact,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$PetTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PetTable,
      PetData,
      $$PetTableFilterComposer,
      $$PetTableOrderingComposer,
      $$PetTableAnnotationComposer,
      $$PetTableCreateCompanionBuilder,
      $$PetTableUpdateCompanionBuilder,
      (PetData, BaseReferences<_$AppDatabase, $PetTable, PetData>),
      PetData,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PetTableTableManager get pet => $$PetTableTableManager(_db, _db.pet);
}
