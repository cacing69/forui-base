import 'package:forui_base/hive_registrar.g.dart';
import 'package:forui_base/shared/data/models/api_cctv/city.dart';
import 'package:forui_base/shared/data/models/api_cctv/company.dart';
import 'package:forui_base/shared/data/models/api_cctv/district.dart';
import 'package:forui_base/shared/data/models/api_cctv/family.dart';
import 'package:forui_base/shared/data/models/api_cctv/gojek.dart';
import 'package:forui_base/shared/data/models/api_cctv/person.dart';
import 'package:forui_base/shared/data/models/api_cctv/phone.dart';
import 'package:forui_base/shared/data/models/api_cctv/pln.dart';
import 'package:forui_base/shared/data/models/api_cctv/province.dart';
import 'package:forui_base/shared/data/models/api_cctv/village.dart';
import 'package:forui_base/shared/data/models/hive/t_response_adapter.dart';
import 'package:hive_ce/hive.dart';

Future<void> hiveRegistrator() async {
  Hive.registerAdapters();

  // Adapters <T>
  Hive.registerAdapter(
    TResponseAdapter<Person>(
      typeId: 1001,
      fromJson: (json) => Person.fromJson(json),
      toJson: (item) => item.toJson(),
    ),
  );

  // Adapter List<T>
  Hive.registerAdapter(
    TResponseAdapter<List<Company>>(
      typeId: 1002,
      fromJson: (json) => (json['data'] as List<dynamic>)
          .map((e) => Company.fromJson(e as Map<String, dynamic>))
          .toList(),
      toJson: (items) => {'data': items.map((e) => e.toJson()).toList()},
    ),
  );

  Hive.registerAdapter(
    TResponseAdapter<List<Family>>(
      typeId: 1002,
      fromJson: (json) => (json['data'] as List<dynamic>)
          .map((e) => Family.fromJson(e as Map<String, dynamic>))
          .toList(),
      toJson: (items) => {'data': items.map((e) => e.toJson()).toList()},
    ),
  );

  Hive.registerAdapter(
    TResponseAdapter<List<Phone>>(
      typeId: 1002,
      fromJson: (json) => (json['data'] as List<dynamic>)
          .map((e) => Phone.fromJson(e as Map<String, dynamic>))
          .toList(),
      toJson: (items) => {'data': items.map((e) => e.toJson()).toList()},
    ),
  );

  Hive.registerAdapter(
    TResponseAdapter<List<Gojek>>(
      typeId: 1002,
      fromJson: (json) => (json['data'] as List<dynamic>)
          .map((e) => Gojek.fromJson(e as Map<String, dynamic>))
          .toList(),
      toJson: (items) => {'data': items.map((e) => e.toJson()).toList()},
    ),
  );

  Hive.registerAdapter(
    TResponseAdapter<List<Pln>>(
      typeId: 1002,
      fromJson: (json) => (json['data'] as List<dynamic>)
          .map((e) => Pln.fromJson(e as Map<String, dynamic>))
          .toList(),
      toJson: (items) => {'data': items.map((e) => e.toJson()).toList()},
    ),
  );

  Hive.registerAdapter(
    TResponseAdapter<List<Family>>(
      typeId: 1002,
      fromJson: (json) => (json['data'] as List<dynamic>)
          .map((e) => Family.fromJson(e as Map<String, dynamic>))
          .toList(),
      toJson: (items) => {'data': items.map((e) => e.toJson()).toList()},
    ),
  );

  Hive.registerAdapter(
    TResponseAdapter<List<Province>>(
      typeId: 1002,
      fromJson: (json) => (json['data'] as List<dynamic>)
          .map((e) => Province.fromJson(e as Map<String, dynamic>))
          .toList(),
      toJson: (items) => {'data': items.map((e) => e.toJson()).toList()},
    ),
  );

  Hive.registerAdapter(
    TResponseAdapter<List<City>>(
      typeId: 1002,
      fromJson: (json) => (json['data'] as List<dynamic>)
          .map((e) => City.fromJson(e as Map<String, dynamic>))
          .toList(),
      toJson: (items) => {'data': items.map((e) => e.toJson()).toList()},
    ),
  );

  Hive.registerAdapter(
    TResponseAdapter<List<District>>(
      typeId: 1002,
      fromJson: (json) => (json['data'] as List<dynamic>)
          .map((e) => District.fromJson(e as Map<String, dynamic>))
          .toList(),
      toJson: (items) => {'data': items.map((e) => e.toJson()).toList()},
    ),
  );

  Hive.registerAdapter(
    TResponseAdapter<List<Village>>(
      typeId: 1002,
      fromJson: (json) => (json['data'] as List<dynamic>)
          .map((e) => Village.fromJson(e as Map<String, dynamic>))
          .toList(),
      toJson: (items) => {'data': items.map((e) => e.toJson()).toList()},
    ),
  );

  Hive.registerAdapter(
    TResponseAdapter<List<Company>>(
      typeId: 1002,
      fromJson: (json) => (json['data'] as List<dynamic>)
          .map((e) => Company.fromJson(e as Map<String, dynamic>))
          .toList(),
      toJson: (items) => {'data': items.map((e) => e.toJson()).toList()},
    ),
  );
}
