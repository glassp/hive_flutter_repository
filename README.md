# Hive Database Repository for Flutter
[![Pub Version](https://img.shields.io/pub/v/hive_flutter_repository)](https://pub.dev/packages/hive_flutter_repository)
![GitHub branch checks state](https://img.shields.io/github/checks-status/glassp/hive_flutter_repository/main)

Use this database adapter for hive to integrate with database_repository when running using flutter

## Not using Flutter?
Better use (hive_repository)[https://pub.dev/packages/hive_repository] as it does not rely on the flutter SDK

## How to install
```bash
dart pub add hive_flutter_repository
```

## How to use
```dart
void main() {
    final pathWhereHiveShouldLive = /* Some path that is writable */
    final myDatabaseAdapter = HiveFlutterDatabaseAdapter(path: pathWhereHiveShouldLive);
    
    
    // Register a Database Adapter that you want to use.
    DatabaseAdapterRegistry.register(myDatabaseAdapter);

    final repository = DatabaseRepository.fromRegistry(serializer: mySerializer, name: 'hive');
    
    // Now use some methods such as create() etc.
}
```