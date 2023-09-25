import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jeffrealty/Common/Theme/themeProvider.dart';
import 'package:jeffrealty/Common/Utils/color.dart';

class InfoCard extends ConsumerWidget {
  const InfoCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeModeState = ref.watch(themesProvider);

    return ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage("assets/images/jefflogo2.png"),
      ),
      title: const Text(
        "Jeff Realty & Trades Solution",
        style: TextStyle(
          color: AppColors.white,
        ),
      ),
      trailing: Switch(
        activeColor: AppColors.primaryColor,
        value: themeModeState == ThemeMode.dark,
        onChanged: (value) {
          ref.read(themesProvider.notifier).changeTheme(value);
        },
      ),
    );
  }
}
