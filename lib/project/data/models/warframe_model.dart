import 'package:warbuilder/project/domain/entities/warframe.dart';

class WarframeModel extends Warframe {
  const WarframeModel(
    super.uniqueName, {
    required super.name,
    required super.imageName,
    required super.abilities,
    required super.passiveDescription,
    required super.aura,
    required super.polarities,
    required super.armor,
    required super.health,
    required super.shield,
    required super.sprint,
    required super.stamina,
  });

  factory WarframeModel.fromJSON(Map data) {
    throw UnimplementedError();
  }
}
