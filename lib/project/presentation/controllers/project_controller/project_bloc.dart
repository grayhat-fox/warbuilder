import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:warbuilder/core/entities/page_tab_enum.dart';

part 'project_event.dart';
part 'project_state.dart';

class ProjectBloc extends Bloc<ProjectEvent, ProjectState> {
  Future<void> _onChangeProjectTabEvent(
    ChangeProjectTabEvent event,
    Emitter<ProjectState> emit,
  ) async {
    emit(WarframeProjectState(event.pageTab));
  }

  ProjectBloc() : super(const WarframeProjectState(PageTab.warframe)) {
    on<ChangeProjectTabEvent>(_onChangeProjectTabEvent);
  }
}
