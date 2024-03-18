import 'package:flutter/material.dart';
import 'package:sahitya_application/core/constants/sahitya_colors.dart';
import 'package:sahitya_application/presentation/routes/app_route_config.dart';

import 'core/constants/few_strings.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: FewStrings.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: SahityaColors.primaryColor),
           ),
      routerConfig: SahityaRouter().router,
      
      );
        
  }
}
