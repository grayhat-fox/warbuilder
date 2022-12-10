part of 'project_bloc.dart';

abstract class ProjectEvent extends Equatable {
  const ProjectEvent();

  @override
  List<Object> get props => [];
}

class ChangeProjectTabEvent extends ProjectEvent {
  final PageTab pageTab;

  const ChangeProjectTabEvent(this.pageTab) : super();

  @override
  List<Object> get props => [pageTab];
}

class OnChangedProjectTabEvent extends ProjectEvent {
  final int pageTab;

  const OnChangedProjectTabEvent(this.pageTab) : super();

  @override
  List<Object> get props => [pageTab];
}
