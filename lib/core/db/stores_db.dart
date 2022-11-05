// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:sembast/sembast.dart';

abstract class StoresDB {
  static StoreRef get getPostsDB => intMapStoreFactory.store('posts');
  static StoreRef get getUsersDB => intMapStoreFactory.store('users');
}
