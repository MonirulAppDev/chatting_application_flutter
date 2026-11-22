import 'package:chatting_application_practice/core/config/flavor/app_flavor.dart';
import 'package:chatting_application_practice/my_app.dart';
import 'package:flutter/material.dart';

import 'core/config/flavor/flavor_config.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  FlavorConfig.initialize(
    FlavorConfig(
      appFlavor: AppFlavor.prod,
      appName: "ChatApp Prod",
      baseUrl: "baseUrl",
    ),
  );

  runApp(const MyApp());
}
