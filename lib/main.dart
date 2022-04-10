import 'package:flutter/material.dart';
import 'package:smart_plug/router.gr.dart';

void main() {
  runApp(const SmartPlug());
}

final _appRouter = AppRouter();

class SmartPlug extends StatelessWidget {
  const SmartPlug({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      restorationScopeId: 'smartPlug',
      theme: ThemeData(
          fontFamily: "assets/fonts/quicksand.ttf",
          primaryColor: Colors.blueAccent),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 35.0,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 24.0,
                  backgroundColor: Colors.white,
                  child: Image.asset(
                    "assets/icons/plug.png",
                    fit: BoxFit.contain,
                  ),
                ),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.notifications))
              ],
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          const SizedBox(
            height: 25.0,
          ),
        ],
      ),
    ));
  }
}
