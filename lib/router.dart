import 'package:go_router/go_router.dart';
import 'package:threads_challenge/activity/activity_screen.dart';
import 'package:threads_challenge/main_navigation_screen.dart';
import 'package:threads_challenge/profile/privacy_screen.dart';
import 'package:threads_challenge/profile/profile_screen.dart';
import 'package:threads_challenge/profile/setting_screen.dart';
import 'package:threads_challenge/search/search_screen.dart';
import 'package:threads_challenge/write/video_recording_screen.dart';

final router = GoRouter(
  initialLocation: '/home',
  routes: [
    // GoRoute(
    //   path: MainNavigationScreen.routeURL,
    //   name: MainNavigationScreen.routeName,
    //   builder: (context, state) => const MainNavigationScreen(
    //     tab: "(home|search|activity|profile)",
    //   ),
    // ),
    // GoRoute(
    //   path: ActivityScreen.routeURL,
    //   name: ActivityScreen.routeName,
    //   builder: (context, state) => const ActivityScreen(),
    // ),
    // GoRoute(
    //   path: VideoRecordingScreen.routeURL,
    //   name: VideoRecordingScreen.routeName,
    //   builder: (context, state) => const VideoRecordingScreen(),
    // ),
    // GoRoute(
    //   path: ProfileScreen.routeURL,
    //   name: ProfileScreen.routeName,
    //   builder: (context, state) => const ProfileScreen(),
    // ),

    GoRoute(
        path: SettingScreen.routeURL,
        name: SettingScreen.routeName,
        builder: (context, state) => const SettingScreen(),
        routes: [
          GoRoute(
            path: PrivacyScreen.routeURL,
            name: PrivacyScreen.routeName,
            builder: (context, state) => const PrivacyScreen(),
          ),
        ]),
    GoRoute(
      path: "/:tab(home|search|activity|profile)",
      name: MainNavigationScreen.routeName,
      builder: (context, state) {
        final tab = state.params["tab"]!;
        return MainNavigationScreen(tab: tab);
      },
    ),
  ],
);
