import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jeffrealty/Common/Theme/theme.dart';
import 'package:jeffrealty/Common/Theme/themeProvider.dart';
import 'package:jeffrealty/Common/Utils/router.dart';
import 'package:jeffrealty/Features/Auth/landing.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeProvider = ref.watch(themesProvider);
    return MaterialApp(
      title: 'Jeff Realty',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeState.darkTheme,
      theme: ThemeState.lightTheme,
      themeMode: themeProvider,
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const LandingScreen(),
    );
  }
}
