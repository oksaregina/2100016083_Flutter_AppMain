import 'package:empty_aplication_test/providers/app_state.dart';
import 'package:empty_aplication_test/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    String nim = '2100016083';
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        title: "Namer App",
        home: Consumer<AppState>(
          builder: (context, appState, _) => Scaffold(
            appBar: AppBar(
              title: Text(nim),
            ),
            body: const HomeScreen(),
          ),
        ),
      ),
    );
  }
}
