import 'package:dio/dio.dart';
import 'package:flutter_project_template_riverpod/features/core/application/routes/route_names.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../application/routes/route_notifier.dart';
import '../infrastructure/hive_database.dart';

final dioProvider = Provider((ref) => Dio());

final hiveProvider = Provider(
  (ref) => HiveDatabase(),
);

final routerProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier(ref);
  return GoRouter(

    initialLocation: RouteNames.defaultRoute,
    refreshListenable: router,
    //redirect: router.redirectLogic,
    routes: router.routes,
  );
});
