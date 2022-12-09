import 'package:fluent_ui/fluent_ui.dart';

class InitProjectPage extends StatelessWidget {
  const InitProjectPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      padding: EdgeInsets.zero,
      content: SizedBox.expand(
        child: Column(
          children: [
            const Expanded(
              child: Center(
                child: Text(
                  'Warframe Builder',
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: .5,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  FilledButton(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      width: MediaQuery.of(context).size.width / 3,
                      child: const Text(
                        'New Build',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: .5,
                        ),
                      ),
                    ),
                    onPressed: () => null,
                  ),
                  const SizedBox(height: 16),
                  FilledButton(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      width: MediaQuery.of(context).size.width / 3,
                      child: const Text(
                        'Open Build',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: .5,
                        ),
                      ),
                    ),
                    onPressed: () => null,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
