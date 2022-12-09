part of 'init_project_bloc.dart';

abstract class InitProjectState extends Equatable {
  const InitProjectState();

  @override
  List<Object> get props => [];
}

class InitProjectInProgress extends InitProjectState {}

class InitProjectMenu extends InitProjectState {}
