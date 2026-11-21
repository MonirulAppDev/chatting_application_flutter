import 'package:chatting_application_practice/core/config/app_flavor.dart';
import 'package:chatting_application_practice/core/config/flavor_config.dart';
import 'package:chatting_application_practice/my_app.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  FlavorConfig.initialize(
    FlavorConfig(
      appFlavor: AppFlavor.stag,
      appName: "ChatApp Stag",
      baseUrl: "baseUrl",
    ),
  );

  runApp(const MyApp());
}
