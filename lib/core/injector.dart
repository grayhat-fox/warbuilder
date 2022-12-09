import 'package:get_it/get_it.dart';
import 'package:warbuilder/project/presentation/controllers/init_project_contoller/init_project_bloc.dart';

final services = GetIt.I;

Future<void> initServices() async {
  services.registerLazySingleton(() => InitProjectBloc());
}
