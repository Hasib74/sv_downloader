part of '../configuration.dart';

abstract class Env {
  Env() {
    _init();
  }

  void _init() {
    if (kReleaseMode) {
      // Used to prevent printing in release mode
      debugPrint = (String? message, {int? wrapWidth}) {};
    }

    unawaited(runZonedGuarded(() async {
      WidgetsFlutterBinding.ensureInitialized();

      await FlutterDownloader.initialize(
          debug: true, // optional: set to false to disable printing logs to console (default: true)
          ignoreSsl: true // option: set to false to disable working with http links (default: false)
      );

      BuildConfig.init(flavor: const String.fromEnvironment('flavor'));

      AppThemes.initUiOverlayStyle();

      usePathUrlStrategy();

      final app = await onCreate();

      runApp(
        ProviderScope(
          child: app,
        ),
      );
    }, (obj, stack) {
      debugPrint(obj.toString());
      debugPrint(stack.toString());
    }));
  }

  FutureOr<HookConsumerWidget> onCreate();
}
