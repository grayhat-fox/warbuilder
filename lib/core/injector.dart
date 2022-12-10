import 'package:get_it/get_it.dart';
import 'package:warbuilder/project/data/datasources/warframe_item_server_datasource.dart';
import 'package:warbuilder/project/data/implements/warframe_repository_impl.dart';
import 'package:warbuilder/project/domain/repositories/warframes_repository.dart';
import 'package:warbuilder/project/presentation/controllers/init_project_contoller/init_project_bloc.dart';
import 'package:warbuilder/project/presentation/controllers/project_controller/project_bloc.dart';

final services = GetIt.I;

const serverURI = 'http://localhost:25585/';

Future<void> initServices() async {
  //! CONTROLLERS
  services.registerLazySingleton(() => InitProjectBloc());
  services.registerLazySingleton(() => ProjectBloc());

  //! REPOSITORIES
  services.registerLazySingleton<WarframesRepository>(
    () => WarframesRepositoryImpl(),
  );

  //! DATASOURCES
  services.registerLazySingleton(
    () => LocalWarframeItemServerDatasource(
      server: serverURI,
    ),
  );
}
