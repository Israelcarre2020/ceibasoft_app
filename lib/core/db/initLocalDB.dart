// ignore_for_file: import_of_legacy_library_into_null_safe, depend_on_referenced_packages

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class InitLocalDb {
  Future<Database> initSembast() async {
    final appDir = await getApplicationDocumentsDirectory();
    await appDir.create(recursive: true);
    final databasePath = join(appDir.path, 'sembast.db');
    final database = await databaseFactoryIo.openDatabase(databasePath);

    return database;
  }
}
