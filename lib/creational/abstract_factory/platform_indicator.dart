import 'package:flutter/material.dart';

abstract class PlatformIndicator {
  Color color();
  Widget build();

  factory PlatformIndicator(TargetPlatform targetPlatform) {
    switch (targetPlatform) {
      case TargetPlatform.android:
        return AndroidIndicator();
      case TargetPlatform.iOS:
        return IOSIndicator();
      default:
        return IOSIndicator();
    }
  }
}

class AndroidIndicator implements PlatformIndicator {
  @override
  Color color() {
    return Colors.blue;
  }

  @override
  Widget build() {
    return CircularProgressIndicator(
      color: color(),
    );
  }
}

class IOSIndicator implements PlatformIndicator {
  @override
  Color color() {
    return Colors.red;
  }

  @override
  Widget build() {
    return CircularProgressIndicator(
      color: color(),
    );
  }
}
