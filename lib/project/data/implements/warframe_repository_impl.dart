import 'package:dartz/dartz.dart';
import 'package:warbuilder/core/injector.dart';
import 'package:warbuilder/core/failures/failure.dart';
import 'package:warbuilder/project/data/datasources/warframe_item_server_datasource.dart';
import 'package:warbuilder/project/domain/entities/warframe.dart';
import 'package:warbuilder/project/domain/repositories/warframes_repository.dart';

class WarframesRepositoryImpl extends WarframesRepository {
  late final WarframeItemServerDatasource _datasource;

  WarframesRepositoryImpl() {
    _datasource = services<WarframeItemServerDatasource>();
  }

  @override
  Future<Either<Failure, Warframe>> getWarframe(String uniqueName) async {
    try {
      final data = await _datasource.warframes;
      final list = data.lastWhere(
        (e) => e.uniqueName == uniqueName,
        orElse: (() => throw Exception()),
      );

      return Right(list);
    } catch (e) {
      return const Left(Failure());
    }
  }

  @override
  Future<Either<Failure, List<String>>> getWarframeList() async {
    try {
      final data = await _datasource.warframes;
      final list = data.map(((e) => e.uniqueName)).toList();

      return Right(list);
    } catch (e) {
      return const Left(Failure());
    }
  }
}
