import 'package:warbuilder/core/failures/failure.dart';
import 'package:warbuilder/core/injector.dart';
import 'package:warbuilder/core/usecase/usecase.dart';
import 'package:warbuilder/project/domain/repositories/warframes_repository.dart';

class GetWarframeListUseCase extends UseCase<List<String>, EmptyRequest> {
  late final WarframesRepository _repository;

  GetWarframeListUseCase() {
    _repository = services<WarframesRepository>();
  }

  @override
  Future<List<String>> call(EmptyRequest request) async {
    final response = await _repository.getWarframeList();
    return response.fold(
      (failure) => throw const Failure(), //TODO: Implement Failure Handler
      (data) => data,
    );
  }
}
