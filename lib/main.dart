import 'package:design_patterns/creational/abstract_factory/abstract_factory.dart';
import 'package:design_patterns/creational/builder/builder_flutter.dart';
import 'package:design_patterns/creational/factory/factory_method.dart';
import 'package:design_patterns/creational/singleton/singleton.dart';
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
    ButtonDirector buttonDirector = ButtonDirector();

    buttonDirector.setButtonBuilder(BlueButtonBuilder());

    CustomButton blueButton = buttonDirector.constructButton();

    Singleton singleton1 = Singleton.getInstance();
    Singleton singleton2 = Singleton.getInstance();
    Singleton singleton3 = Singleton.getInstance();

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
              AbstractFactoryImplementation().buildButton(
                context,
                'Hello',
                () {},
              ),
              const SizedBox(height: 20),
              AbstractFactoryImplementation().buildIndicator(context),
              const SizedBox(height: 20),
              AbstractFactoryAlt.buildButton(
                context,
                'Alternate Abstract Factory',
                () {},
              ),
              const SizedBox(height: 20),
              const Text("Using Builder Pattern:"),
              blueButton,
            ],
          ),
        ),
      ),
    );
  }
}
