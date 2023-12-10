import 'package:design_patterns/creational/flutter_factory_method.dart';
import 'package:design_patterns/creational/platform_indicator.dart';
import 'package:flutter/material.dart';

abstract class AbstractFactory {
  Widget buildButton(
    BuildContext context,
    String text,
    VoidCallback onPressed,
  );
  Widget buildIndicator(BuildContext context);
}

class AbstractFactoryImplementation implements AbstractFactory {
  @override
  Widget buildButton(
    BuildContext context,
    String text,
    VoidCallback onPressed,
  ) {
    return PlatformButton(Theme.of(context).platform).build(
      onPressed,
      Text(text),
    );
  }

  @override
  Widget buildIndicator(BuildContext context) {
    return PlatformIndicator(Theme.of(context).platform).build();
  }
}

//Alternate Implementation

class AbstractFactoryAlt {
  static Widget buildButton(
    BuildContext context,
    String text,
    VoidCallback onPressed,
  ) {
    return PlatformButton(Theme.of(context).platform).build(
      onPressed,
      Text(text),
    );
  }

  static Widget buildIndicator(BuildContext context) {
    return PlatformIndicator(Theme.of(context).platform).build();
  }
}
