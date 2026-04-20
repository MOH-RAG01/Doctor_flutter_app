import 'package:flutter/services.dart';

class AppFlavorsConfig {
  static late String apiUrl;

  static void initialize() {
    switch (appFlavor) {
      case 'production':
        apiUrl = 'https://api.example.com';
        break;
      case 'dev':
        apiUrl = 'https://dev.api.example.com';
        break;
    }
  }
}
