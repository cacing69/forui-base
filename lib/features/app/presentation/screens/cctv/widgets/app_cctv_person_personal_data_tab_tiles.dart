import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/shared/data/models/api_cctv/person.dart';
import 'package:jiffy/jiffy.dart';

List<FTile> getAppCctvPersonPersonalDataTabTiles({
  required BuildContext context,
  required Person person,
  required Jiffy now,
}) {
  return [
    FTile(
      prefix: Icon(FIcons.fileUser),
      title: const Text('Family ID'),
      details: Text(person.familyCardId.toString()),
      suffix: Icon(FIcons.copy),
      onPress: () async {
        await Clipboard.setData(
          ClipboardData(text: person.familyCardId.toString()),
        );
      },
    ),
    FTile(
      prefix: Icon(FIcons.idCard),
      title: const Text('Person ID'),
      details: Text(person.id.toString()),
      suffix: Icon(FIcons.copy),
      onPress: () async {
        await Clipboard.setData(ClipboardData(text: person.id.toString()));
      },
    ),
    FTile(
      prefix: Icon(FIcons.wholeWord),
      title: const Text('Name'),
      details: Text(person.name!),
      suffix: Icon(FIcons.copy),
      onPress: () async {
        await Clipboard.setData(ClipboardData(text: person.name!));
      },
    ),
    FTile(
      prefix: Icon(FIcons.mapPinHouse),
      title: const Text('Address'),
      details: Text(person.address ?? "-"),
      suffix: Icon(FIcons.eye),
      onPress: () {
        showFDialog(
          context: context,
          builder: (context, style, animation) => FDialog(
            style: style.call,
            animation: animation,
            direction: Axis.horizontal,
            title: const Text('Address'),
            body: Text(person.address ?? "-"),
            actions: [
              FButton(
                style: FButtonStyle.outline(),
                onPress: () => Navigator.of(context).pop(),
                child: const Text('Close'),
              ),
            ],
          ),
        );
      },
    ),
    FTile(
      prefix: Icon(FIcons.castle),
      title: const Text('PoB'),
      details: Text(person.placeOfBirth!),
    ),
    FTile(
      prefix: Icon(FIcons.calendar),
      title: const Text('DoB'),
      details: Text(person.dateOfBirth!),
    ),
    FTile(
      prefix: Icon(FIcons.info),
      title: const Text('Age'),
      details: Builder(
        builder: (context) {
          final Jiffy dob = Jiffy.parse(person.dateOfBirth!);
          return Text("${now.diff(dob, unit: Unit.year)}yo");
        },
      ),
    ),
    FTile(
      prefix: Icon(FIcons.wholeWord),
      title: const Text('Gender'),
      details: Text(person.sexId == 1 ? "LAKI-LAKI" : "PEREMPUAN"),
      suffix: Icon(person.sexId == 1 ? FIcons.mars : FIcons.venus),
    ),
    FTile(
      prefix: Icon(FIcons.info),
      title: const Text('Blood Type'),
      details: Text(person.bloodTypeName ?? "-"),
    ),
    FTile(
      prefix: Icon(FIcons.info),
      title: const Text('Marital'),
      details: Text(person.maritalName ?? "-"),
    ),
    FTile(
      prefix: Icon(FIcons.info),
      title: const Text('Religion'),
      details: Text(person.religionName ?? "-"),
    ),
    FTile(
      prefix: Icon(FIcons.briefcase),
      title: const Text('Work'),
      details: Text(person.work ?? "-"),
    ),
    FTile(
      prefix: Icon(FIcons.school),
      title: const Text('Education'),
      details: Text(person.educationName ?? "-"),
    ),
    FTile(
      prefix: Icon(FIcons.notebookTabs),
      title: const Text('Postal Code'),
      details: Text(person.postCode ?? "-"),
    ),
    FTile(
      prefix: Icon(FIcons.circleDot),
      title: const Text('Province'),
      details: Text(person.provinceName ?? "-"),
    ),
    FTile(
      prefix: Icon(FIcons.circleDot),
      title: const Text('City'),
      details: Text(person.cityName ?? "-"),
    ),
    FTile(
      prefix: Icon(FIcons.circleDot),
      title: const Text('District'),
      details: Text(person.districtName ?? "-"),
    ),
    FTile(
      prefix: Icon(FIcons.circleDot),
      title: const Text('Village'),
      details: Text(person.villageName ?? "-"),
    ),
    FTile(
      prefix: Icon(FIcons.user),
      title: const Text('Mother'),
      details: Text(person.motherName ?? "-"),
    ),
    FTile(
      prefix: Icon(FIcons.user),
      title: const Text('Father'),
      details: Text(person.fatherName ?? "-"),
    ),
    FTile(
      prefix: Icon(FIcons.calendar),
      title: const Text('Updated Date'),
      details: Text(person.updatedDate ?? "-"),
    ),
  ];
}
