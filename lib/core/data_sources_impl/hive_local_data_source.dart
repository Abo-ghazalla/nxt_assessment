import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:nxt_assessment/core/data_sources/local_data_source.dart';

@Singleton(as: LocalDataSource)
class HiveLocalDataSource implements LocalDataSource {
  @override
  Future<void> clear() async {
    await Hive.box('box').clear();
  }

  @override
  Future<void> delete(String key) async {
    await Hive.box('box').delete(key);
  }

  @override
  dynamic read(String key) {
    return Hive.box('box').get(key);
  }

  @override
  Future<void> write(String key, dynamic value) async {
    return await Hive.box('box').put(key, value);
  }
}
