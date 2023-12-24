import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/application/routes/route_names.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      context.go(RouteNames.appDisplayRoute);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(48),
        child: Center(
          child: LinearProgressIndicator(),
        ),
      ),
    );
  }
}
