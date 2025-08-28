import 'package:flutter/material.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_screen.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/app_cctv_person_screen.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/tab_overview/app_cctv_person_overview_tab_e_ktp_screen.dart';
import 'package:go_router/go_router.dart';

enum FeatureAppRouteName {
  // App
  appCctv,
  appCctvPerson,
  appCctvPersonTabFamily,
  appCctvPersonTabEKtp,
}

final featureAppRoutes = [
  // Apps Route
  GoRoute(
    path: '/app/cctv',
    name: FeatureAppRouteName.appCctv.name,
    builder: (context, state) => AppCctvScreen(),
  ),
  GoRoute(
    path: '/app/cctv/person/:personId',
    name: FeatureAppRouteName.appCctvPerson.name,
    builder: (context, state) {
      if (state.pathParameters['personId'] == null) {
        return Placeholder();
      } else {
        return AppCctvPersonScreen(
          personId: state.pathParameters['personId'] ?? "",
        );
      }
    },
  ),
  GoRoute(
    path: '/app/cctv/person/tab/family',
    name: FeatureAppRouteName.appCctvPersonTabFamily.name,
    builder: (context, state) => Placeholder(),
  ),
  GoRoute(
    path: '/app/cctv/person/tab/e-ktp',
    name: FeatureAppRouteName.appCctvPersonTabEKtp.name,
    builder: (context, state) => AppCctvPersonOverviewTabEKtpScreen(),
  ),
];
