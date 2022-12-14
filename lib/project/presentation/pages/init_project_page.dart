import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:warbuilder/core/injector.dart';
import 'package:warbuilder/project/presentation/controllers/init_project_contoller/init_project_bloc.dart';
import 'package:warbuilder/project/presentation/pages/error_page.dart';
import 'package:warbuilder/project/presentation/widgets/center_loading_widget.dart';

class InitProjectPage extends StatelessWidget {
  late final InitProjectBloc _controller;

  InitProjectPage({Key? key}) : super(key: key) {
    _controller = services<InitProjectBloc>();
  }

  static const String route = '/';

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: SizedBox.shrink(),
      // header: WindowTitleBarBox(
      //   child: MoveWindow(),
      // ),
      content: Container(
        padding: const EdgeInsets.all(16.0),
        color: FluentTheme.of(context).scaffoldBackgroundColor.withOpacity(1.0),
        child: BlocBuilder<InitProjectBloc, InitProjectState>(
          bloc: _controller,
          builder: (context, state) {
            if (state is InitProjectInProgressState) {
              return const CenterLoadingWidget();
            }

            if (state is InitProjectMenuState) {
              return Column(
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
                          onPressed: () => _controller.add(
                            OpenNewProjectEvent(context: context),
                          ),
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
                          onPressed: () => _controller.add(
                            OpenSavedProjectEvent(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            }

            return const ErrorPage();
          },
        ),
      ),
    );
  }
}
