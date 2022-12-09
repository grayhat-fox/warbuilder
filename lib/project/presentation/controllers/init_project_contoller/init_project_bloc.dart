import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'init_project_event.dart';
part 'init_project_state.dart';

class InitProjectBloc extends Bloc<InitProjectEvent, InitProjectState> {
  InitProjectBloc() : super(InitProjectMenuState()) {
    on<InitProjectEvent>((event, emit) {});
  }
}
