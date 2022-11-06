import 'package:ceibasoft_app/core/db/init_local_db.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late InitLocalDb localDB;

  setUp(() {
    localDB = InitLocalDb();
  });

  group('Test init DB', () {
    test('Init local DB', () async {
      expect(() async => localDB.initSembast(), isNotNull);
    });
  });
}
