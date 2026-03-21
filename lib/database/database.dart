import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

class Pet extends Table {

  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max:100)();
  TextColumn get type => text().withLength(min: 1, max:100)();
  TextColumn get breed => text().withLength(min: 1, max:100)();
  TextColumn get gender => text().withLength(min:1, max:10)();
  DateTimeColumn get dob => dateTime()();
  RealColumn get weight => real().nullable()();
  TextColumn get owner_name => text().withLength(min: 1, max:100)();
  TextColumn get owner_contact => text().withLength(min: 1, max:100)();

}

class PetRecord extends Table {

  IntColumn get id => integer().autoIncrement()();
  IntColumn get pet => integer().references(Pet, #id)();
  TextColumn get title => text().withLength(min: 1, max:100)();
  TextColumn get type => text().withLength(min: 1, max:100)();
  TextColumn get subtype => text().withLength(min: 1, max:100)();
  TextColumn get details => text().withLength(min:1)();
  TextColumn get location => text().withLength(min: 1, max:100)();
  DateTimeColumn get date => dateTime()();

}

class PetRecordFile extends Table{

  IntColumn get id => integer().autoIncrement()();
  IntColumn get record => integer().references(PetRecord, #id)();
  TextColumn get filePath => text()();
  TextColumn get fileType => text()();

}

@DriftDatabase(tables: [Pet, PetRecord, PetRecordFile])
class AppDatabase extends _$AppDatabase {
  // After generating code, this class needs to define a `schemaVersion` getter
  // and a constructor telling drift where the database should be stored.
  // These are described in the getting started guide: https://drift.simonbinder.eu/setup/
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'void_pets_database',
      native: const DriftNativeOptions(
        // By default, `driftDatabase` from `package:drift_flutter` stores the
        // database files in `getApplicationDocumentsDirectory()`.
        databaseDirectory: getApplicationSupportDirectory,
      ),
      // If you need web support, see https://drift.simonbinder.eu/platforms/web/
    );
  }

}