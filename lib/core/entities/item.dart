import 'package:equatable/equatable.dart';

abstract class Item extends Equatable {
  final String uniqueName;
  const Item(this.uniqueName);

  @override
  List<Object?> get props => [uniqueName];
}
