```dart
void main() {
    // Path will resolve to "${getApplicationDocumentsDirectory()}/hive"
    // See path_provider on documentation about `getApplicationDocumentsDirectory`
    final pathWhereHiveShouldLive = 'hive'
    final myDatabaseAdapter = HiveFlutterDatabaseAdapter(path: pathWhereHiveShouldLive);
    
    
    // Register a Database Adapter that you want to use.
    DatabaseAdapterRegistry.register(myDatabaseAdapter);

    final repository = DatabaseRepository.fromRegistry(serializer: mySerializer, name: 'hive');
    
    // Now use some methods such as create() etc.
}
```