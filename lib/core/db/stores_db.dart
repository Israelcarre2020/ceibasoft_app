// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:sembast/sembast.dart';

class StoresDB {
  StoreRef get getPostsDB => intMapStoreFactory.store('posts');
  StoreRef get getUsersDB => intMapStoreFactory.store('users');
}
