import 'package:design_patterns/creational/factory_method.dart';
import 'package:design_patterns/creational/flutter_factory_method.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  Employee employee = FactoryMethod.getEmployee('hr');

  employee.work();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design Patterns',
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Design Patterns.'),
              const SizedBox(height: 20),
              FilledButton.tonal(
                onPressed: () {},
                child: const Text(
                  'Click Me',
                ),
              ),
              const SizedBox(height: 20),
              PlatformButton(TargetPlatform.android).build(
                () {
                  print('Clicked The Platform Button');
                },
                const Text('PlatForm Button'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
