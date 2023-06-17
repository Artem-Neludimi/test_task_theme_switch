import 'package:flutter/material.dart';
import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:provider/provider.dart';
import 'package:test_task_theme_switch/ui/providers/theme_provider.dart';
import 'package:test_task_theme_switch/ui/screens/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int switchValue = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('First Screen'),
      ),
      body: Center(
        child: AnimatedToggleSwitch<int>.size(
          current: switchValue,
          animationDuration: const Duration(milliseconds: 200),
          values: const [0, 1],
          indicatorSize: const Size.fromWidth(100),
          iconAnimationType: AnimationType.onHover,
          indicatorAnimationType: AnimationType.onHover,
          iconBuilder: (value, size) {
            return Center(
              child: Text(
                value == 0 ? 'Hello world' : 'Bye world',
                style: theme.textTheme.labelMedium,
              ),
            );
          },
          innerColor: theme.colorScheme.primaryContainer,
          borderWidth: 0.0,
          borderColor: Colors.transparent,
          colorBuilder: (i) => theme.colorScheme.onInverseSurface,
          onChanged: (i) {
            Provider.of<ThemeProvider>(context, listen: false).themeSwitch();
            setState(() => switchValue = i);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: OutlinedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const SecondScreen(),
            ),
          );
        },
        child: const Text('Second Screen'),
      ),
    );
  }
}
