// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:sembast/sembast.dart';

abstract class StoresDB {
  static final postsDB = intMapStoreFactory.store('posts');
  static final usersDB = intMapStoreFactory.store('users');
}
