part of 'init_project_bloc.dart';

abstract class InitProjectState extends Equatable {
  const InitProjectState();

  @override
  List<Object> get props => [];
}

class InitProjectInProgressState extends InitProjectState {}

class InitProjectMenuState extends InitProjectState {}
