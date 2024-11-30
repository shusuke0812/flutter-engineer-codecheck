import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:github_search/di/repository_injection.dart';
import 'package:github_search/utility/logger.dart';
import 'package:github_search/utility/router/router.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.blueGrey,
  ));

  await dotenv.load(fileName: '.env');
  await SentryFlutter.init(
    (options) {
      options.dsn = dotenv.get('SENTRY_DSN');
      options.tracesSampleRate = 1.0;
      options.profilesSampleRate = 1.0;
      options.attachScreenshot = true;
    },
    appRunner: () => runApp(
      ProviderScope(
        overrides: repositoryInjection,
        child: const SentryWidget(
          child: _RestartWidget(child: MyApp()),
        )
      )
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: appRouter.routerDelegate,
      routeInformationParser: appRouter.routeInformationParser,
      routeInformationProvider: appRouter.routeInformationProvider,
      title: 'GitHub Search',
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blueGrey,
      ),
    );
  }
}

void restartApp(BuildContext context) {
  _RestartWidget.restartApp(context);
} 

class _RestartWidget extends StatefulWidget {
  const _RestartWidget({super.key, required this.child});
  final Widget child;

  static restartApp(BuildContext context) {
    final state = context.findAncestorStateOfType<_RestartWidgetState>();
    state?.restartApp();
  }

  @override
  createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<_RestartWidget> {
  Key key = UniqueKey();

  void restartApp() {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    logger.d("build key=$key");
    return Container(
      key: key,
      child: widget.child,
    );
  }
}