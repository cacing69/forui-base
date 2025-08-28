import 'package:flutter/material.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_list_company_screen.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/app_cctv_list_resident_screen.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/company/app_cctv_company_screen.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/app_cctv_person_screen.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/tab_overview/app_cctv_person_overview_tab_e_ktp_screen.dart';
import 'package:forui_base/shared/data/models/api_cctv/company.dart';
import 'package:go_router/go_router.dart';

enum FeatureAppRouteName {
  // App
  appCctvListResident,
  appCctvListCompany,
  appCctvPerson,
  appCctvCompany,
  appCctvPersonTabFamily,
  appCctvPersonTabEKtp,
}

final featureAppRoutes = [
  // Apps Route
  GoRoute(
    path: '/app/cctv/list-resident',
    name: FeatureAppRouteName.appCctvListResident.name,
    builder: (context, state) => AppCctvListResidentScreen(),
  ),
  GoRoute(
    path: '/app/cctv/list-company',
    name: FeatureAppRouteName.appCctvListCompany.name,
    builder: (context, state) => AppCctvListCompanyScreen(),
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
    path: '/app/cctv/company/:companyId',
    name: FeatureAppRouteName.appCctvCompany.name,
    builder: (context, state) {
      if (state.pathParameters['companyId'] == null) {
        // Todo create component that shown wrong parameter
        return Placeholder();
      } else {
        return AppCctvCompanyScreen(company: state.extra as Company);
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
