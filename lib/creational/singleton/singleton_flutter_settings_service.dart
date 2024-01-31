class SettingsService {
  static SettingsService? _instance;

  String theme = 'light';

  SettingsService._();

  static SettingsService getInstance() {
    _instance ??= SettingsService._();
    return _instance!;
  }
}

void main() {
  // Using the Singleton Pattern to get a SettingsService instance
  SettingsService settingsService1 = SettingsService.getInstance();
  print('Theme: ${settingsService1.theme}');

  // Modifying the theme using another instance
  SettingsService settingsService2 = SettingsService.getInstance();
  settingsService2.theme = 'dark';

  // Both settingsService1 and settingsService2 reference the same instance
  print('Theme modified by settingsService2: ${settingsService1.theme}');
}
