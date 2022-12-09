import 'package:dartz/dartz.dart';
import 'package:warbuilder/core/failures/failure.dart';
import 'package:warbuilder/project/domain/entities/warframe.dart';

abstract class WarframesRepository {
  Future<Either<Failure, List<String>>> getWarframeList();
  Future<Either<Failure, Warframe>> getWarframe(String uniqueName);
}
