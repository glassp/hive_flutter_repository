import 'package:hive_flutter/adapters.dart';
import 'package:hive_repository/hive_repository.dart';

/// A Database Adapter specially crafted to work with Flutter.
///
/// It initialized Hive using `Hive.initFlutter` which will automatically ensure
/// the widget bindings are initialized and use the correct directory for
/// the given platform to store the hive files
/// (e.g. `getApplicationDocumentsDirectory`)
class HiveFlutterDatabaseAdapter extends HiveDatabaseAdapter {
  /// A Database Adapter specially crafted to work with Flutter.
  ///
  /// It initialized Hive using `Hive.initFlutter` which will automatically
  /// ensure the widget bindings are initialized and use the correct directory
  /// for the given platform to store the hive files
  /// (e.g. `getApplicationDocumentsDirectory`)
  HiveFlutterDatabaseAdapter({
    required String path,
    String name = 'hive',
  }) : super(
          path: path,
          name: name,
        );

  @override
  Future<void> init() async {
    await Hive.initFlutter(path);
  }
}
