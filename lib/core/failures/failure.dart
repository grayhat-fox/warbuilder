import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String? description;
  const Failure({
    this.description,
  });

  @override
  List<Object?> get props => [description];
}
