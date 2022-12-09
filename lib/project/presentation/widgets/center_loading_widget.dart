import 'package:fluent_ui/fluent_ui.dart';

class CenterLoadingWidget extends StatelessWidget {
  const CenterLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: ProgressRing(),
    );
  }
}
