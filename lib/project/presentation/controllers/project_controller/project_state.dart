part of 'project_bloc.dart';

abstract class ProjectState extends Equatable {
  const ProjectState();

  @override
  List<Object> get props => [];
}

class WarframeProjectState extends ProjectState {
  final PageTab tab;

  const WarframeProjectState(this.tab);
}
