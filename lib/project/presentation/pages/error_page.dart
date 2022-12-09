import 'package:fluent_ui/fluent_ui.dart';

class ErrorPage extends StatelessWidget {
  final String? errorDescription;

  const ErrorPage({
    super.key,
    this.errorDescription,
  });

  static const String route = '/error';

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      content: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              FluentIcons.error,
              color: FluentTheme.of(context).accentColor,
            ),
            const SizedBox(height: 16),
            Text(
              errorDescription ?? 'Unexpected Error',
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                letterSpacing: .5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
