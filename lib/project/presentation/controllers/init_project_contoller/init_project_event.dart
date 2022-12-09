part of 'init_project_bloc.dart';

abstract class InitProjectEvent extends Equatable {
  const InitProjectEvent();

  @override
  List<Object> get props => [];
}

class OpenNewProjectEvent extends InitProjectEvent {
  final BuildContext context;

  const OpenNewProjectEvent({required this.context});
}

class OpenSavedProjectEvent extends InitProjectEvent {
  const OpenSavedProjectEvent();
}
