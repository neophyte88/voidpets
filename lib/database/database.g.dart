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

class $PetRecordTable extends PetRecord
    with TableInfo<$PetRecordTable, PetRecordData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PetRecordTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _petMeta = const VerificationMeta('pet');
  @override
  late final GeneratedColumn<int> pet = GeneratedColumn<int>(
    'pet',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pet (id)',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
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
  static const VerificationMeta _subtypeMeta = const VerificationMeta(
    'subtype',
  );
  @override
  late final GeneratedColumn<String> subtype = GeneratedColumn<String>(
    'subtype',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 100,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _detailsMeta = const VerificationMeta(
    'details',
  );
  @override
  late final GeneratedColumn<String> details = GeneratedColumn<String>(
    'details',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(minTextLength: 1),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _locationMeta = const VerificationMeta(
    'location',
  );
  @override
  late final GeneratedColumn<String> location = GeneratedColumn<String>(
    'location',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 100,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime> date = GeneratedColumn<DateTime>(
    'date',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    pet,
    title,
    type,
    subtype,
    details,
    location,
    date,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pet_record';
  @override
  VerificationContext validateIntegrity(
    Insertable<PetRecordData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('pet')) {
      context.handle(
        _petMeta,
        pet.isAcceptableOrUnknown(data['pet']!, _petMeta),
      );
    } else if (isInserting) {
      context.missing(_petMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('subtype')) {
      context.handle(
        _subtypeMeta,
        subtype.isAcceptableOrUnknown(data['subtype']!, _subtypeMeta),
      );
    } else if (isInserting) {
      context.missing(_subtypeMeta);
    }
    if (data.containsKey('details')) {
      context.handle(
        _detailsMeta,
        details.isAcceptableOrUnknown(data['details']!, _detailsMeta),
      );
    } else if (isInserting) {
      context.missing(_detailsMeta);
    }
    if (data.containsKey('location')) {
      context.handle(
        _locationMeta,
        location.isAcceptableOrUnknown(data['location']!, _locationMeta),
      );
    } else if (isInserting) {
      context.missing(_locationMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
        _dateMeta,
        date.isAcceptableOrUnknown(data['date']!, _dateMeta),
      );
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PetRecordData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PetRecordData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      pet: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}pet'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      subtype: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}subtype'],
      )!,
      details: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}details'],
      )!,
      location: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}location'],
      )!,
      date: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date'],
      )!,
    );
  }

  @override
  $PetRecordTable createAlias(String alias) {
    return $PetRecordTable(attachedDatabase, alias);
  }
}

class PetRecordData extends DataClass implements Insertable<PetRecordData> {
  final int id;
  final int pet;
  final String title;
  final String type;
  final String subtype;
  final String details;
  final String location;
  final DateTime date;
  const PetRecordData({
    required this.id,
    required this.pet,
    required this.title,
    required this.type,
    required this.subtype,
    required this.details,
    required this.location,
    required this.date,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['pet'] = Variable<int>(pet);
    map['title'] = Variable<String>(title);
    map['type'] = Variable<String>(type);
    map['subtype'] = Variable<String>(subtype);
    map['details'] = Variable<String>(details);
    map['location'] = Variable<String>(location);
    map['date'] = Variable<DateTime>(date);
    return map;
  }

  PetRecordCompanion toCompanion(bool nullToAbsent) {
    return PetRecordCompanion(
      id: Value(id),
      pet: Value(pet),
      title: Value(title),
      type: Value(type),
      subtype: Value(subtype),
      details: Value(details),
      location: Value(location),
      date: Value(date),
    );
  }

  factory PetRecordData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PetRecordData(
      id: serializer.fromJson<int>(json['id']),
      pet: serializer.fromJson<int>(json['pet']),
      title: serializer.fromJson<String>(json['title']),
      type: serializer.fromJson<String>(json['type']),
      subtype: serializer.fromJson<String>(json['subtype']),
      details: serializer.fromJson<String>(json['details']),
      location: serializer.fromJson<String>(json['location']),
      date: serializer.fromJson<DateTime>(json['date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'pet': serializer.toJson<int>(pet),
      'title': serializer.toJson<String>(title),
      'type': serializer.toJson<String>(type),
      'subtype': serializer.toJson<String>(subtype),
      'details': serializer.toJson<String>(details),
      'location': serializer.toJson<String>(location),
      'date': serializer.toJson<DateTime>(date),
    };
  }

  PetRecordData copyWith({
    int? id,
    int? pet,
    String? title,
    String? type,
    String? subtype,
    String? details,
    String? location,
    DateTime? date,
  }) => PetRecordData(
    id: id ?? this.id,
    pet: pet ?? this.pet,
    title: title ?? this.title,
    type: type ?? this.type,
    subtype: subtype ?? this.subtype,
    details: details ?? this.details,
    location: location ?? this.location,
    date: date ?? this.date,
  );
  PetRecordData copyWithCompanion(PetRecordCompanion data) {
    return PetRecordData(
      id: data.id.present ? data.id.value : this.id,
      pet: data.pet.present ? data.pet.value : this.pet,
      title: data.title.present ? data.title.value : this.title,
      type: data.type.present ? data.type.value : this.type,
      subtype: data.subtype.present ? data.subtype.value : this.subtype,
      details: data.details.present ? data.details.value : this.details,
      location: data.location.present ? data.location.value : this.location,
      date: data.date.present ? data.date.value : this.date,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PetRecordData(')
          ..write('id: $id, ')
          ..write('pet: $pet, ')
          ..write('title: $title, ')
          ..write('type: $type, ')
          ..write('subtype: $subtype, ')
          ..write('details: $details, ')
          ..write('location: $location, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, pet, title, type, subtype, details, location, date);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PetRecordData &&
          other.id == this.id &&
          other.pet == this.pet &&
          other.title == this.title &&
          other.type == this.type &&
          other.subtype == this.subtype &&
          other.details == this.details &&
          other.location == this.location &&
          other.date == this.date);
}

class PetRecordCompanion extends UpdateCompanion<PetRecordData> {
  final Value<int> id;
  final Value<int> pet;
  final Value<String> title;
  final Value<String> type;
  final Value<String> subtype;
  final Value<String> details;
  final Value<String> location;
  final Value<DateTime> date;
  const PetRecordCompanion({
    this.id = const Value.absent(),
    this.pet = const Value.absent(),
    this.title = const Value.absent(),
    this.type = const Value.absent(),
    this.subtype = const Value.absent(),
    this.details = const Value.absent(),
    this.location = const Value.absent(),
    this.date = const Value.absent(),
  });
  PetRecordCompanion.insert({
    this.id = const Value.absent(),
    required int pet,
    required String title,
    required String type,
    required String subtype,
    required String details,
    required String location,
    required DateTime date,
  }) : pet = Value(pet),
       title = Value(title),
       type = Value(type),
       subtype = Value(subtype),
       details = Value(details),
       location = Value(location),
       date = Value(date);
  static Insertable<PetRecordData> custom({
    Expression<int>? id,
    Expression<int>? pet,
    Expression<String>? title,
    Expression<String>? type,
    Expression<String>? subtype,
    Expression<String>? details,
    Expression<String>? location,
    Expression<DateTime>? date,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (pet != null) 'pet': pet,
      if (title != null) 'title': title,
      if (type != null) 'type': type,
      if (subtype != null) 'subtype': subtype,
      if (details != null) 'details': details,
      if (location != null) 'location': location,
      if (date != null) 'date': date,
    });
  }

  PetRecordCompanion copyWith({
    Value<int>? id,
    Value<int>? pet,
    Value<String>? title,
    Value<String>? type,
    Value<String>? subtype,
    Value<String>? details,
    Value<String>? location,
    Value<DateTime>? date,
  }) {
    return PetRecordCompanion(
      id: id ?? this.id,
      pet: pet ?? this.pet,
      title: title ?? this.title,
      type: type ?? this.type,
      subtype: subtype ?? this.subtype,
      details: details ?? this.details,
      location: location ?? this.location,
      date: date ?? this.date,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (pet.present) {
      map['pet'] = Variable<int>(pet.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (subtype.present) {
      map['subtype'] = Variable<String>(subtype.value);
    }
    if (details.present) {
      map['details'] = Variable<String>(details.value);
    }
    if (location.present) {
      map['location'] = Variable<String>(location.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PetRecordCompanion(')
          ..write('id: $id, ')
          ..write('pet: $pet, ')
          ..write('title: $title, ')
          ..write('type: $type, ')
          ..write('subtype: $subtype, ')
          ..write('details: $details, ')
          ..write('location: $location, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }
}

class $PetRecordFileTable extends PetRecordFile
    with TableInfo<$PetRecordFileTable, PetRecordFileData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PetRecordFileTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _recordMeta = const VerificationMeta('record');
  @override
  late final GeneratedColumn<int> record = GeneratedColumn<int>(
    'record',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'REFERENCES pet_record (id)',
    ),
  );
  static const VerificationMeta _filePathMeta = const VerificationMeta(
    'filePath',
  );
  @override
  late final GeneratedColumn<String> filePath = GeneratedColumn<String>(
    'file_path',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _fileTypeMeta = const VerificationMeta(
    'fileType',
  );
  @override
  late final GeneratedColumn<String> fileType = GeneratedColumn<String>(
    'file_type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, record, filePath, fileType];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'pet_record_file';
  @override
  VerificationContext validateIntegrity(
    Insertable<PetRecordFileData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('record')) {
      context.handle(
        _recordMeta,
        record.isAcceptableOrUnknown(data['record']!, _recordMeta),
      );
    } else if (isInserting) {
      context.missing(_recordMeta);
    }
    if (data.containsKey('file_path')) {
      context.handle(
        _filePathMeta,
        filePath.isAcceptableOrUnknown(data['file_path']!, _filePathMeta),
      );
    } else if (isInserting) {
      context.missing(_filePathMeta);
    }
    if (data.containsKey('file_type')) {
      context.handle(
        _fileTypeMeta,
        fileType.isAcceptableOrUnknown(data['file_type']!, _fileTypeMeta),
      );
    } else if (isInserting) {
      context.missing(_fileTypeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PetRecordFileData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PetRecordFileData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      record: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}record'],
      )!,
      filePath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}file_path'],
      )!,
      fileType: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}file_type'],
      )!,
    );
  }

  @override
  $PetRecordFileTable createAlias(String alias) {
    return $PetRecordFileTable(attachedDatabase, alias);
  }
}

class PetRecordFileData extends DataClass
    implements Insertable<PetRecordFileData> {
  final int id;
  final int record;
  final String filePath;
  final String fileType;
  const PetRecordFileData({
    required this.id,
    required this.record,
    required this.filePath,
    required this.fileType,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['record'] = Variable<int>(record);
    map['file_path'] = Variable<String>(filePath);
    map['file_type'] = Variable<String>(fileType);
    return map;
  }

  PetRecordFileCompanion toCompanion(bool nullToAbsent) {
    return PetRecordFileCompanion(
      id: Value(id),
      record: Value(record),
      filePath: Value(filePath),
      fileType: Value(fileType),
    );
  }

  factory PetRecordFileData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PetRecordFileData(
      id: serializer.fromJson<int>(json['id']),
      record: serializer.fromJson<int>(json['record']),
      filePath: serializer.fromJson<String>(json['filePath']),
      fileType: serializer.fromJson<String>(json['fileType']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'record': serializer.toJson<int>(record),
      'filePath': serializer.toJson<String>(filePath),
      'fileType': serializer.toJson<String>(fileType),
    };
  }

  PetRecordFileData copyWith({
    int? id,
    int? record,
    String? filePath,
    String? fileType,
  }) => PetRecordFileData(
    id: id ?? this.id,
    record: record ?? this.record,
    filePath: filePath ?? this.filePath,
    fileType: fileType ?? this.fileType,
  );
  PetRecordFileData copyWithCompanion(PetRecordFileCompanion data) {
    return PetRecordFileData(
      id: data.id.present ? data.id.value : this.id,
      record: data.record.present ? data.record.value : this.record,
      filePath: data.filePath.present ? data.filePath.value : this.filePath,
      fileType: data.fileType.present ? data.fileType.value : this.fileType,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PetRecordFileData(')
          ..write('id: $id, ')
          ..write('record: $record, ')
          ..write('filePath: $filePath, ')
          ..write('fileType: $fileType')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, record, filePath, fileType);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PetRecordFileData &&
          other.id == this.id &&
          other.record == this.record &&
          other.filePath == this.filePath &&
          other.fileType == this.fileType);
}

class PetRecordFileCompanion extends UpdateCompanion<PetRecordFileData> {
  final Value<int> id;
  final Value<int> record;
  final Value<String> filePath;
  final Value<String> fileType;
  const PetRecordFileCompanion({
    this.id = const Value.absent(),
    this.record = const Value.absent(),
    this.filePath = const Value.absent(),
    this.fileType = const Value.absent(),
  });
  PetRecordFileCompanion.insert({
    this.id = const Value.absent(),
    required int record,
    required String filePath,
    required String fileType,
  }) : record = Value(record),
       filePath = Value(filePath),
       fileType = Value(fileType);
  static Insertable<PetRecordFileData> custom({
    Expression<int>? id,
    Expression<int>? record,
    Expression<String>? filePath,
    Expression<String>? fileType,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (record != null) 'record': record,
      if (filePath != null) 'file_path': filePath,
      if (fileType != null) 'file_type': fileType,
    });
  }

  PetRecordFileCompanion copyWith({
    Value<int>? id,
    Value<int>? record,
    Value<String>? filePath,
    Value<String>? fileType,
  }) {
    return PetRecordFileCompanion(
      id: id ?? this.id,
      record: record ?? this.record,
      filePath: filePath ?? this.filePath,
      fileType: fileType ?? this.fileType,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (record.present) {
      map['record'] = Variable<int>(record.value);
    }
    if (filePath.present) {
      map['file_path'] = Variable<String>(filePath.value);
    }
    if (fileType.present) {
      map['file_type'] = Variable<String>(fileType.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PetRecordFileCompanion(')
          ..write('id: $id, ')
          ..write('record: $record, ')
          ..write('filePath: $filePath, ')
          ..write('fileType: $fileType')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $PetTable pet = $PetTable(this);
  late final $PetRecordTable petRecord = $PetRecordTable(this);
  late final $PetRecordFileTable petRecordFile = $PetRecordFileTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    pet,
    petRecord,
    petRecordFile,
  ];
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

final class $$PetTableReferences
    extends BaseReferences<_$AppDatabase, $PetTable, PetData> {
  $$PetTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$PetRecordTable, List<PetRecordData>>
  _petRecordRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.petRecord,
    aliasName: $_aliasNameGenerator(db.pet.id, db.petRecord.pet),
  );

  $$PetRecordTableProcessedTableManager get petRecordRefs {
    final manager = $$PetRecordTableTableManager(
      $_db,
      $_db.petRecord,
    ).filter((f) => f.pet.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_petRecordRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

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

  Expression<bool> petRecordRefs(
    Expression<bool> Function($$PetRecordTableFilterComposer f) f,
  ) {
    final $$PetRecordTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.petRecord,
      getReferencedColumn: (t) => t.pet,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PetRecordTableFilterComposer(
            $db: $db,
            $table: $db.petRecord,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
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

  Expression<T> petRecordRefs<T extends Object>(
    Expression<T> Function($$PetRecordTableAnnotationComposer a) f,
  ) {
    final $$PetRecordTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.petRecord,
      getReferencedColumn: (t) => t.pet,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PetRecordTableAnnotationComposer(
            $db: $db,
            $table: $db.petRecord,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
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
          (PetData, $$PetTableReferences),
          PetData,
          PrefetchHooks Function({bool petRecordRefs})
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
              .map(
                (e) => (e.readTable(table), $$PetTableReferences(db, table, e)),
              )
              .toList(),
          prefetchHooksCallback: ({petRecordRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [if (petRecordRefs) db.petRecord],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (petRecordRefs)
                    await $_getPrefetchedData<
                      PetData,
                      $PetTable,
                      PetRecordData
                    >(
                      currentTable: table,
                      referencedTable: $$PetTableReferences._petRecordRefsTable(
                        db,
                      ),
                      managerFromTypedResult: (p0) =>
                          $$PetTableReferences(db, table, p0).petRecordRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.pet == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
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
      (PetData, $$PetTableReferences),
      PetData,
      PrefetchHooks Function({bool petRecordRefs})
    >;
typedef $$PetRecordTableCreateCompanionBuilder =
    PetRecordCompanion Function({
      Value<int> id,
      required int pet,
      required String title,
      required String type,
      required String subtype,
      required String details,
      required String location,
      required DateTime date,
    });
typedef $$PetRecordTableUpdateCompanionBuilder =
    PetRecordCompanion Function({
      Value<int> id,
      Value<int> pet,
      Value<String> title,
      Value<String> type,
      Value<String> subtype,
      Value<String> details,
      Value<String> location,
      Value<DateTime> date,
    });

final class $$PetRecordTableReferences
    extends BaseReferences<_$AppDatabase, $PetRecordTable, PetRecordData> {
  $$PetRecordTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static $PetTable _petTable(_$AppDatabase db) =>
      db.pet.createAlias($_aliasNameGenerator(db.petRecord.pet, db.pet.id));

  $$PetTableProcessedTableManager get pet {
    final $_column = $_itemColumn<int>('pet')!;

    final manager = $$PetTableTableManager(
      $_db,
      $_db.pet,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_petTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }

  static MultiTypedResultKey<$PetRecordFileTable, List<PetRecordFileData>>
  _petRecordFileRefsTable(_$AppDatabase db) => MultiTypedResultKey.fromTable(
    db.petRecordFile,
    aliasName: $_aliasNameGenerator(db.petRecord.id, db.petRecordFile.record),
  );

  $$PetRecordFileTableProcessedTableManager get petRecordFileRefs {
    final manager = $$PetRecordFileTableTableManager(
      $_db,
      $_db.petRecordFile,
    ).filter((f) => f.record.id.sqlEquals($_itemColumn<int>('id')!));

    final cache = $_typedResult.readTableOrNull(_petRecordFileRefsTable($_db));
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: cache),
    );
  }
}

class $$PetRecordTableFilterComposer
    extends Composer<_$AppDatabase, $PetRecordTable> {
  $$PetRecordTableFilterComposer({
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

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get subtype => $composableBuilder(
    column: $table.subtype,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get details => $composableBuilder(
    column: $table.details,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get location => $composableBuilder(
    column: $table.location,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnFilters(column),
  );

  $$PetTableFilterComposer get pet {
    final $$PetTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pet,
      referencedTable: $db.pet,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PetTableFilterComposer(
            $db: $db,
            $table: $db.pet,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<bool> petRecordFileRefs(
    Expression<bool> Function($$PetRecordFileTableFilterComposer f) f,
  ) {
    final $$PetRecordFileTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.petRecordFile,
      getReferencedColumn: (t) => t.record,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PetRecordFileTableFilterComposer(
            $db: $db,
            $table: $db.petRecordFile,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PetRecordTableOrderingComposer
    extends Composer<_$AppDatabase, $PetRecordTable> {
  $$PetRecordTableOrderingComposer({
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

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get subtype => $composableBuilder(
    column: $table.subtype,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get details => $composableBuilder(
    column: $table.details,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get location => $composableBuilder(
    column: $table.location,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get date => $composableBuilder(
    column: $table.date,
    builder: (column) => ColumnOrderings(column),
  );

  $$PetTableOrderingComposer get pet {
    final $$PetTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pet,
      referencedTable: $db.pet,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PetTableOrderingComposer(
            $db: $db,
            $table: $db.pet,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PetRecordTableAnnotationComposer
    extends Composer<_$AppDatabase, $PetRecordTable> {
  $$PetRecordTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get subtype =>
      $composableBuilder(column: $table.subtype, builder: (column) => column);

  GeneratedColumn<String> get details =>
      $composableBuilder(column: $table.details, builder: (column) => column);

  GeneratedColumn<String> get location =>
      $composableBuilder(column: $table.location, builder: (column) => column);

  GeneratedColumn<DateTime> get date =>
      $composableBuilder(column: $table.date, builder: (column) => column);

  $$PetTableAnnotationComposer get pet {
    final $$PetTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.pet,
      referencedTable: $db.pet,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PetTableAnnotationComposer(
            $db: $db,
            $table: $db.pet,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }

  Expression<T> petRecordFileRefs<T extends Object>(
    Expression<T> Function($$PetRecordFileTableAnnotationComposer a) f,
  ) {
    final $$PetRecordFileTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.id,
      referencedTable: $db.petRecordFile,
      getReferencedColumn: (t) => t.record,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PetRecordFileTableAnnotationComposer(
            $db: $db,
            $table: $db.petRecordFile,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return f(composer);
  }
}

class $$PetRecordTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PetRecordTable,
          PetRecordData,
          $$PetRecordTableFilterComposer,
          $$PetRecordTableOrderingComposer,
          $$PetRecordTableAnnotationComposer,
          $$PetRecordTableCreateCompanionBuilder,
          $$PetRecordTableUpdateCompanionBuilder,
          (PetRecordData, $$PetRecordTableReferences),
          PetRecordData,
          PrefetchHooks Function({bool pet, bool petRecordFileRefs})
        > {
  $$PetRecordTableTableManager(_$AppDatabase db, $PetRecordTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PetRecordTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PetRecordTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PetRecordTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> pet = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> subtype = const Value.absent(),
                Value<String> details = const Value.absent(),
                Value<String> location = const Value.absent(),
                Value<DateTime> date = const Value.absent(),
              }) => PetRecordCompanion(
                id: id,
                pet: pet,
                title: title,
                type: type,
                subtype: subtype,
                details: details,
                location: location,
                date: date,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int pet,
                required String title,
                required String type,
                required String subtype,
                required String details,
                required String location,
                required DateTime date,
              }) => PetRecordCompanion.insert(
                id: id,
                pet: pet,
                title: title,
                type: type,
                subtype: subtype,
                details: details,
                location: location,
                date: date,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$PetRecordTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({pet = false, petRecordFileRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (petRecordFileRefs) db.petRecordFile,
              ],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (pet) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.pet,
                                referencedTable: $$PetRecordTableReferences
                                    ._petTable(db),
                                referencedColumn: $$PetRecordTableReferences
                                    ._petTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [
                  if (petRecordFileRefs)
                    await $_getPrefetchedData<
                      PetRecordData,
                      $PetRecordTable,
                      PetRecordFileData
                    >(
                      currentTable: table,
                      referencedTable: $$PetRecordTableReferences
                          ._petRecordFileRefsTable(db),
                      managerFromTypedResult: (p0) =>
                          $$PetRecordTableReferences(
                            db,
                            table,
                            p0,
                          ).petRecordFileRefs,
                      referencedItemsForCurrentItem: (item, referencedItems) =>
                          referencedItems.where((e) => e.record == item.id),
                      typedResults: items,
                    ),
                ];
              },
            );
          },
        ),
      );
}

typedef $$PetRecordTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PetRecordTable,
      PetRecordData,
      $$PetRecordTableFilterComposer,
      $$PetRecordTableOrderingComposer,
      $$PetRecordTableAnnotationComposer,
      $$PetRecordTableCreateCompanionBuilder,
      $$PetRecordTableUpdateCompanionBuilder,
      (PetRecordData, $$PetRecordTableReferences),
      PetRecordData,
      PrefetchHooks Function({bool pet, bool petRecordFileRefs})
    >;
typedef $$PetRecordFileTableCreateCompanionBuilder =
    PetRecordFileCompanion Function({
      Value<int> id,
      required int record,
      required String filePath,
      required String fileType,
    });
typedef $$PetRecordFileTableUpdateCompanionBuilder =
    PetRecordFileCompanion Function({
      Value<int> id,
      Value<int> record,
      Value<String> filePath,
      Value<String> fileType,
    });

final class $$PetRecordFileTableReferences
    extends
        BaseReferences<_$AppDatabase, $PetRecordFileTable, PetRecordFileData> {
  $$PetRecordFileTableReferences(
    super.$_db,
    super.$_table,
    super.$_typedResult,
  );

  static $PetRecordTable _recordTable(_$AppDatabase db) =>
      db.petRecord.createAlias(
        $_aliasNameGenerator(db.petRecordFile.record, db.petRecord.id),
      );

  $$PetRecordTableProcessedTableManager get record {
    final $_column = $_itemColumn<int>('record')!;

    final manager = $$PetRecordTableTableManager(
      $_db,
      $_db.petRecord,
    ).filter((f) => f.id.sqlEquals($_column));
    final item = $_typedResult.readTableOrNull(_recordTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
      manager.$state.copyWith(prefetchedData: [item]),
    );
  }
}

class $$PetRecordFileTableFilterComposer
    extends Composer<_$AppDatabase, $PetRecordFileTable> {
  $$PetRecordFileTableFilterComposer({
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

  ColumnFilters<String> get filePath => $composableBuilder(
    column: $table.filePath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get fileType => $composableBuilder(
    column: $table.fileType,
    builder: (column) => ColumnFilters(column),
  );

  $$PetRecordTableFilterComposer get record {
    final $$PetRecordTableFilterComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.record,
      referencedTable: $db.petRecord,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PetRecordTableFilterComposer(
            $db: $db,
            $table: $db.petRecord,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PetRecordFileTableOrderingComposer
    extends Composer<_$AppDatabase, $PetRecordFileTable> {
  $$PetRecordFileTableOrderingComposer({
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

  ColumnOrderings<String> get filePath => $composableBuilder(
    column: $table.filePath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get fileType => $composableBuilder(
    column: $table.fileType,
    builder: (column) => ColumnOrderings(column),
  );

  $$PetRecordTableOrderingComposer get record {
    final $$PetRecordTableOrderingComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.record,
      referencedTable: $db.petRecord,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PetRecordTableOrderingComposer(
            $db: $db,
            $table: $db.petRecord,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PetRecordFileTableAnnotationComposer
    extends Composer<_$AppDatabase, $PetRecordFileTable> {
  $$PetRecordFileTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get filePath =>
      $composableBuilder(column: $table.filePath, builder: (column) => column);

  GeneratedColumn<String> get fileType =>
      $composableBuilder(column: $table.fileType, builder: (column) => column);

  $$PetRecordTableAnnotationComposer get record {
    final $$PetRecordTableAnnotationComposer composer = $composerBuilder(
      composer: this,
      getCurrentColumn: (t) => t.record,
      referencedTable: $db.petRecord,
      getReferencedColumn: (t) => t.id,
      builder:
          (
            joinBuilder, {
            $addJoinBuilderToRootComposer,
            $removeJoinBuilderFromRootComposer,
          }) => $$PetRecordTableAnnotationComposer(
            $db: $db,
            $table: $db.petRecord,
            $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
            joinBuilder: joinBuilder,
            $removeJoinBuilderFromRootComposer:
                $removeJoinBuilderFromRootComposer,
          ),
    );
    return composer;
  }
}

class $$PetRecordFileTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $PetRecordFileTable,
          PetRecordFileData,
          $$PetRecordFileTableFilterComposer,
          $$PetRecordFileTableOrderingComposer,
          $$PetRecordFileTableAnnotationComposer,
          $$PetRecordFileTableCreateCompanionBuilder,
          $$PetRecordFileTableUpdateCompanionBuilder,
          (PetRecordFileData, $$PetRecordFileTableReferences),
          PetRecordFileData,
          PrefetchHooks Function({bool record})
        > {
  $$PetRecordFileTableTableManager(_$AppDatabase db, $PetRecordFileTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PetRecordFileTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PetRecordFileTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PetRecordFileTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<int> record = const Value.absent(),
                Value<String> filePath = const Value.absent(),
                Value<String> fileType = const Value.absent(),
              }) => PetRecordFileCompanion(
                id: id,
                record: record,
                filePath: filePath,
                fileType: fileType,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required int record,
                required String filePath,
                required String fileType,
              }) => PetRecordFileCompanion.insert(
                id: id,
                record: record,
                filePath: filePath,
                fileType: fileType,
              ),
          withReferenceMapper: (p0) => p0
              .map(
                (e) => (
                  e.readTable(table),
                  $$PetRecordFileTableReferences(db, table, e),
                ),
              )
              .toList(),
          prefetchHooksCallback: ({record = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins:
                  <
                    T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic
                    >
                  >(state) {
                    if (record) {
                      state =
                          state.withJoin(
                                currentTable: table,
                                currentColumn: table.record,
                                referencedTable: $$PetRecordFileTableReferences
                                    ._recordTable(db),
                                referencedColumn: $$PetRecordFileTableReferences
                                    ._recordTable(db)
                                    .id,
                              )
                              as T;
                    }

                    return state;
                  },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ),
      );
}

typedef $$PetRecordFileTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $PetRecordFileTable,
      PetRecordFileData,
      $$PetRecordFileTableFilterComposer,
      $$PetRecordFileTableOrderingComposer,
      $$PetRecordFileTableAnnotationComposer,
      $$PetRecordFileTableCreateCompanionBuilder,
      $$PetRecordFileTableUpdateCompanionBuilder,
      (PetRecordFileData, $$PetRecordFileTableReferences),
      PetRecordFileData,
      PrefetchHooks Function({bool record})
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$PetTableTableManager get pet => $$PetTableTableManager(_db, _db.pet);
  $$PetRecordTableTableManager get petRecord =>
      $$PetRecordTableTableManager(_db, _db.petRecord);
  $$PetRecordFileTableTableManager get petRecordFile =>
      $$PetRecordFileTableTableManager(_db, _db.petRecordFile);
}
