import 'package:warbuilder/core/entities/focus_enum.dart';
import 'package:warbuilder/core/entities/item.dart';
import 'package:warbuilder/project/domain/entities/ability.dart';

class Warframe extends Item {
  final String name;
  final String imageName;
  final List<Ability> abilities;
  final String passiveDescription;
  final Focus aura;
  final List<Focus> polarities;
  final num armor;
  final num health;
  final num shield;
  final num sprint;
  final num stamina;

  const Warframe(
    super.uniqueName, {
    required this.name,
    required this.imageName,
    required this.abilities,
    required this.passiveDescription,
    required this.aura,
    required this.polarities,
    required this.armor,
    required this.health,
    required this.shield,
    required this.sprint,
    required this.stamina,
  });
}
