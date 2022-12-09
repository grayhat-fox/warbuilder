import 'package:fluent_ui/fluent_ui.dart';

class InitProjectPage extends StatelessWidget {
  const InitProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScaffoldPage(
      content: SizedBox.expand(
        child: Center(child: Text('test')),
      ),
    );
  }
}
