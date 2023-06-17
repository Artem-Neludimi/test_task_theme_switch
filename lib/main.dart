import 'package:flutter/material.dart';
import 'package:test_task_theme_switch/ui/providers/theme_provider.dart';
import 'package:test_task_theme_switch/ui/screens/first_screen.dart';
import 'package:provider/provider.dart';

import 'locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupServiceLocator();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Provider.of<ThemeProvider>(context).currentTheme,
      home: const FirstScreen(),
    );
  }
}
