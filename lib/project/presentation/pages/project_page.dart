import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:fluent_ui/fluent_ui.dart';

class ProjectPage extends StatelessWidget {
  ProjectPage({super.key}) {
    doWhenWindowReady(() {
      appWindow.maximize();
    });
  }

  static const String route = '/project';

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      content: NavigationView(
        appBar: NavigationAppBar(
          title: Text(
            'New Build',
            style: FluentTheme.of(context).typography.title,
          ),
          automaticallyImplyLeading: false,
        ),
        pane: NavigationPane(
          selected: 0,
          onChanged: (i) => null,
          displayMode: PaneDisplayMode.open,
          items: [
            PaneItemHeader(header: const Text('Warframe')),
            PaneItemSeparator(),
            PaneItem(
              icon: const Icon(FluentIcons.contact),
              title: const Text('Empty Slot'),
              trailing: IconButton(
                icon: const Icon(FluentIcons.delete),
                onPressed: () => null,
              ),
              body: const SizedBox.expand(),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.contact),
              title: const Text('Empty Slot'),
              trailing: IconButton(
                icon: const Icon(FluentIcons.delete),
                onPressed: () => null,
              ),
              body: const SizedBox.expand(),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.contact),
              title: const Text('Empty Slot'),
              trailing: IconButton(
                icon: const Icon(FluentIcons.delete),
                onPressed: () => null,
              ),
              body: const SizedBox.expand(),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.contact),
              title: const Text('Empty Slot'),
              trailing: IconButton(
                icon: const Icon(FluentIcons.delete),
                onPressed: () => null,
              ),
              body: const SizedBox.expand(),
            ),
            PaneItemHeader(header: const Text('Companion')),
            PaneItemSeparator(),
            PaneItem(
              icon: const Icon(FluentIcons.contact),
              title: const Text('Empty Slot'),
              trailing: IconButton(
                icon: const Icon(FluentIcons.delete),
                onPressed: () => null,
              ),
              body: const SizedBox.expand(),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.contact),
              title: const Text('Empty Slot'),
              trailing: IconButton(
                icon: const Icon(FluentIcons.delete),
                onPressed: () => null,
              ),
              body: const SizedBox.expand(),
            ),
            PaneItemHeader(header: const Text('Archwing')),
            PaneItemSeparator(),
            PaneItem(
              icon: const Icon(FluentIcons.contact),
              title: const Text('Empty Slot'),
              trailing: IconButton(
                icon: const Icon(FluentIcons.delete),
                onPressed: () => null,
              ),
              body: const SizedBox.expand(),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.contact),
              title: const Text('Empty Slot'),
              trailing: IconButton(
                icon: const Icon(FluentIcons.delete),
                onPressed: () => null,
              ),
              body: const SizedBox.expand(),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.contact),
              title: const Text('Empty Slot'),
              trailing: IconButton(
                icon: const Icon(FluentIcons.delete),
                onPressed: () => null,
              ),
              body: const SizedBox.expand(),
            ),
            PaneItemHeader(header: const Text('Necramech')),
            PaneItemSeparator(),
            PaneItem(
              icon: const Icon(FluentIcons.contact),
              title: const Text('Empty Slot'),
              trailing: IconButton(
                icon: const Icon(FluentIcons.delete),
                onPressed: () => null,
              ),
              body: const SizedBox.expand(),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.contact),
              title: const Text('Empty Slot'),
              trailing: IconButton(
                icon: const Icon(FluentIcons.delete),
                onPressed: () => null,
              ),
              body: const SizedBox.expand(),
            ),
            PaneItemHeader(header: const Text('Miscellaneous')),
            PaneItemSeparator(),
            PaneItem(
              icon: const Icon(FluentIcons.contact),
              title: const Text('Empty Slot'),
              trailing: IconButton(
                icon: const Icon(FluentIcons.delete),
                onPressed: () => null,
              ),
              body: const SizedBox.expand(),
            ),
            PaneItem(
              icon: const Icon(FluentIcons.contact),
              title: const Text('Empty Slot'),
              trailing: IconButton(
                icon: const Icon(FluentIcons.delete),
                onPressed: () => null,
              ),
              body: const SizedBox.expand(),
            ),
          ],
        ),
      ),
    );
  }
}
