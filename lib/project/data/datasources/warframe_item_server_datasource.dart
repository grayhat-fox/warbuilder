import 'package:dio/dio.dart';
import 'package:warbuilder/core/failures/failure.dart';
import 'package:warbuilder/project/domain/entities/warframe.dart';

abstract class WarframeItemServerDatasource {
  final List<Warframe> _warframes = [];
  Future<List<Warframe>> get warframes async =>
      _warframes.isEmpty ? await _updateWarframesData() : _warframes;

  Future<List<Warframe>> _updateWarframesData();
}

class LocalWarframeItemServerDatasource extends WarframeItemServerDatasource {
  final String server;

  LocalWarframeItemServerDatasource({
    required this.server,
  });

  @override
  Future<List<Warframe>> _updateWarframesData() async {
    try {
      final response = await Dio().get(server);
      //! Implement get logic

      throw UnimplementedError();
    } catch (e) {
      throw const Failure();
    }
  }
}
