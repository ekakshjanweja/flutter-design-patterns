import 'package:flutter/material.dart';

// Product: CustomButton
class CustomButton extends StatelessWidget {
  final Color color;
  final String label;

  const CustomButton({super.key, required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: color),
      onPressed: () {},
      child: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

// Builder: ButtonBuilder
abstract class ButtonBuilder {
  void buildColor();
  void buildLabel();
  CustomButton getResult();
}

// ConcreteBuilder: RedButtonBuilder
class RedButtonBuilder implements ButtonBuilder {
  late Color color;
  late String label;

  @override
  void buildColor() {
    color = Colors.red;
  }

  @override
  void buildLabel() {
    label = 'Red Button';
  }

  @override
  CustomButton getResult() {
    return CustomButton(color: color, label: label);
  }
}

// ConcreteBuilder: BlueButtonBuilder
class BlueButtonBuilder implements ButtonBuilder {
  late Color color;
  late String label;

  @override
  void buildColor() {
    color = Colors.blue;
  }

  @override
  void buildLabel() {
    label = 'Blue Button';
  }

  @override
  CustomButton getResult() {
    return CustomButton(color: color, label: label);
  }
}

// Director: ButtonDirector
class ButtonDirector {
  late ButtonBuilder buttonBuilder;

  void setButtonBuilder(ButtonBuilder builder) {
    buttonBuilder = builder;
  }

  CustomButton constructButton() {
    buttonBuilder.buildColor();
    buttonBuilder.buildLabel();
    return buttonBuilder.getResult();
  }
}
