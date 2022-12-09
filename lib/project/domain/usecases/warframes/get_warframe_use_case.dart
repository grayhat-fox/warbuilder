import 'package:warbuilder/core/injector.dart';
import 'package:warbuilder/core/usecase/usecase.dart';
import 'package:warbuilder/project/domain/entities/warframe.dart';
import 'package:warbuilder/project/domain/repositories/warframes_repository.dart';

class GetWarframeUseCaseRequest {
  final String uniqueName;

  GetWarframeUseCaseRequest({
    required this.uniqueName,
  });
}

class GetWarframeUseCase extends UseCase<Warframe, GetWarframeUseCaseRequest> {
  late final WarframesRepository _repository;

  GetWarframeUseCase() {
    _repository = services<WarframesRepository>();
  }

  @override
  Future<Warframe> call(GetWarframeUseCaseRequest request) async {
    throw UnimplementedError();
  }
}
