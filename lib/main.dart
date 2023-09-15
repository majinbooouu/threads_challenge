import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:threads_challenge/common/widgets/video_config.dart';
import 'package:threads_challenge/router.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => VideoConfig(),
      child: const ThreadsClone(),
    ),
  );
}

class ThreadsClone extends StatelessWidget {
  const ThreadsClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Threads Clone',
      themeMode: context.watch<VideoConfig>().isDarkMode
          ? ThemeMode.dark
          : ThemeMode.light,
      theme: FlexThemeData.light(
        scheme: FlexScheme.shark,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 7,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendOnColors: false,
          useTextTheme: true,
          useM2StyleDividerInM3: true,
          filledButtonSchemeColor: SchemeColor.onSurface,
          elevatedButtonSecondarySchemeColor: SchemeColor.onPrimary,
          alignedDropdown: true,
          useInputDecoratorThemeInDialogs: true,
          bottomNavigationBarBackgroundSchemeColor: SchemeColor.onPrimary,
          tabBarItemSchemeColor: SchemeColor.background,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
      ),
      darkTheme: FlexThemeData.dark(
        scheme: FlexScheme.shark,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 13,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
          useTextTheme: true,
          useM2StyleDividerInM3: true,
          filledButtonSchemeColor: SchemeColor.onSurface,
          elevatedButtonSecondarySchemeColor: SchemeColor.onPrimary,
          alignedDropdown: true,
          useInputDecoratorThemeInDialogs: true,
          appBarBackgroundSchemeColor: SchemeColor.background,
          navigationBarBackgroundSchemeColor: SchemeColor.background,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
      ),
    );
  }
}
