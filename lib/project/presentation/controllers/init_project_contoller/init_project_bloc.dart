import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:fluent_ui/fluent_ui.dart';

part 'init_project_event.dart';
part 'init_project_state.dart';

class InitProjectBloc extends Bloc<InitProjectEvent, InitProjectState> {
  Future<void> _onOpenNewProjectEvent(
    OpenNewProjectEvent event,
    Emitter<InitProjectState> emit,
  ) async {
    Navigator.of(event.context).pushNamedAndRemoveUntil(
      '/project',
      (route) => false,
    );

    doWhenWindowReady(() {
      appWindow.maximize();
    });
  }

  InitProjectBloc() : super(InitProjectMenuState()) {
    on<OpenNewProjectEvent>(_onOpenNewProjectEvent);
    on<OpenSavedProjectEvent>((event, emit) {});
  }
}
