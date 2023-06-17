import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task_theme_switch/ui/providers/theme_provider.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    var isDarkMode = Provider.of<ThemeProvider>(context).isDarkMode;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Text(
          isDarkMode ? 'пока мир' : 'привет мир',
          style: theme.textTheme.displayLarge,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
