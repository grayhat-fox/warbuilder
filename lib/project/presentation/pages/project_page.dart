// ignore_for_file: avoid_returning_null_for_void

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warbuilder/core/entities/page_tab_enum.dart';
import 'package:warbuilder/core/injector.dart';
import 'package:warbuilder/project/presentation/controllers/project_controller/project_bloc.dart';
import 'package:warbuilder/project/presentation/pages/modules/warframe_module_widget.dart';

class ProjectPage extends StatelessWidget {
  late final ProjectBloc _controller;

  ProjectPage({super.key}) {
    _controller = services<ProjectBloc>();
    doWhenWindowReady(() {
      appWindow.maximize();
    });
  }

  static const String route = '/project';

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      content: BlocBuilder<ProjectBloc, ProjectState>(
        bloc: _controller,
        builder: (context, state) {
          return NavigationView(
            appBar: NavigationAppBar(
              title: Text(
                'New Build',
                style: FluentTheme.of(context).typography.title,
              ),
              automaticallyImplyLeading: false,
            ),
            pane: NavigationPane(
              selected: 0,
              onChanged: (index) => _controller.add(
                OnChangedProjectTabEvent(index),
              ),
              displayMode: PaneDisplayMode.open,
              items: [
                PaneItemHeader(header: const Text('Warframe')),
                PaneItemSeparator(),
                PaneItem(
                  icon: const Icon(FluentIcons.contact),
                  title: const Text('Empty Slot'),
                  trailing: IconButton(
                    icon: const Icon(FluentIcons.delete),
                    onPressed: () => _controller.add(
                      const ChangeProjectTabEvent(
                        PageTab.warframe,
                      ),
                    ),
                  ),
                  body: const WarframeModuleWidget(),
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
            paneBodyBuilder: ((body) {
              return SizedBox.expand(
                child: body,
              );
            }),
          );
        },
      ),
    );
  }
}
