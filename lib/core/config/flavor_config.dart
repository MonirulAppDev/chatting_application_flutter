import 'package:chatting_application_practice/core/config/app_flavor.dart';

class FlavorConfig {
  final AppFlavor appFlavor;
  final String appName;
  final String baseUrl;

  const FlavorConfig({
    required this.appFlavor,
    required this.appName,
    required this.baseUrl,
  });

  static late FlavorConfig instance;

  static void initialize(FlavorConfig config) {
    instance = config;
  }

  bool get isDev => appFlavor == AppFlavor.dev;

  bool get isStag => appFlavor == AppFlavor.stag;

  bool get isProd => appFlavor == AppFlavor.prod;
}
