import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_company_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_family_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_gojek_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_phone_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_pln_notifier.dart';
import 'package:forui_base/features/app/presentation/screens/cctv/person/notifier/app_cctv_person_vehicle_notifier.dart';
import 'package:forui_base/shared/data/models/api_cctv/family_path_params.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'load_person_data_usecase_pack.g.dart';

@riverpod
LoadPersonDataUsecasePack loadPersonDataUsecasePack(Ref ref) {
  return LoadPersonDataUsecasePack(ref);
}

class LoadPersonDataUsecasePack {
  final Ref ref;

  LoadPersonDataUsecasePack(this.ref);

  Future<void> call({
    required String personId,
    String? familyCardId,
    bool loadPhone = true,
    bool loadGojek = true,
    bool loadPln = true,
    bool loadVehicle = true,
    bool loadCompany = true,
    bool loadFamily = true,
  }) async {
    ref
        .read(appCctvPersonNotifierProvider(personId).notifier)
        .perform(personId);

    if (loadPhone) {
      ref
          .read(appCctvPersonPhoneNotifierProvider(personId).notifier)
          .perform(personId);
    }

    if (loadGojek) {
      ref
          .read(appCctvPersonGojekNotifierProvider(personId).notifier)
          .perform(personId);
    }

    if (loadPln) {
      ref
          .read(appCctvPersonPlnNotifierProvider(personId).notifier)
          .perform(personId);
    }

    if (loadVehicle) {
      ref
          .read(appCctvPersonVehicleNotifierProvider(personId).notifier)
          .perform(personId);
    }

    if (loadCompany) {
      ref
          .read(appCctvPersonCompanyNotifierProvider(personId).notifier)
          .perform(personId);
    }

    if (loadFamily) {
      ref
          .read(appCctvPersonFamilyNotifierProvider.notifier)
          .perform(
            FamilyPathParams(personId: personId, familyCardId: familyCardId),
          );
    }
  }
}
