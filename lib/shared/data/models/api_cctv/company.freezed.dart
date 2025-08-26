// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Company {

 List<CompanyChecklist>? get checklists; String? get employmentReportingNumber; List<CompanyProject>? get projects; String? get validationDate; List<CompanyPic>? get pic; String? get importFlag;@BigIntConverter() BigInt? get totalCapitalAmount; int? get domesticCapitalPercentage; String? get id; String? get issueDate; String? get email; String? get address; String? get legalBodyStatus; List<CompanyShareholder>? get shareholders; String? get bussinessActorType;@BigIntConverter() BigInt? get baseCapitalTotal; String? get taxNumber; List<CompanyLegality>? get legalities; String? get submissionDate; String? get approvalNumber; String? get domesticCapitalAmount; String? get exportFlag; String? get phoneNumber; int? get foreignCapitalPercentage;@BigIntConverter() BigInt? get registrationNumber; String? get businessScale; String? get foreignCapitalAmount; String? get name;@BigIntConverter() BigInt? get issueCapitalTotal; String? get companyTypeId; String? get onlineSingleSubmissionNumber; String? get villageId;
/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CompanyCopyWith<Company> get copyWith => _$CompanyCopyWithImpl<Company>(this as Company, _$identity);

  /// Serializes this Company to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Company&&const DeepCollectionEquality().equals(other.checklists, checklists)&&(identical(other.employmentReportingNumber, employmentReportingNumber) || other.employmentReportingNumber == employmentReportingNumber)&&const DeepCollectionEquality().equals(other.projects, projects)&&(identical(other.validationDate, validationDate) || other.validationDate == validationDate)&&const DeepCollectionEquality().equals(other.pic, pic)&&(identical(other.importFlag, importFlag) || other.importFlag == importFlag)&&(identical(other.totalCapitalAmount, totalCapitalAmount) || other.totalCapitalAmount == totalCapitalAmount)&&(identical(other.domesticCapitalPercentage, domesticCapitalPercentage) || other.domesticCapitalPercentage == domesticCapitalPercentage)&&(identical(other.id, id) || other.id == id)&&(identical(other.issueDate, issueDate) || other.issueDate == issueDate)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address)&&(identical(other.legalBodyStatus, legalBodyStatus) || other.legalBodyStatus == legalBodyStatus)&&const DeepCollectionEquality().equals(other.shareholders, shareholders)&&(identical(other.bussinessActorType, bussinessActorType) || other.bussinessActorType == bussinessActorType)&&(identical(other.baseCapitalTotal, baseCapitalTotal) || other.baseCapitalTotal == baseCapitalTotal)&&(identical(other.taxNumber, taxNumber) || other.taxNumber == taxNumber)&&const DeepCollectionEquality().equals(other.legalities, legalities)&&(identical(other.submissionDate, submissionDate) || other.submissionDate == submissionDate)&&(identical(other.approvalNumber, approvalNumber) || other.approvalNumber == approvalNumber)&&(identical(other.domesticCapitalAmount, domesticCapitalAmount) || other.domesticCapitalAmount == domesticCapitalAmount)&&(identical(other.exportFlag, exportFlag) || other.exportFlag == exportFlag)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.foreignCapitalPercentage, foreignCapitalPercentage) || other.foreignCapitalPercentage == foreignCapitalPercentage)&&(identical(other.registrationNumber, registrationNumber) || other.registrationNumber == registrationNumber)&&(identical(other.businessScale, businessScale) || other.businessScale == businessScale)&&(identical(other.foreignCapitalAmount, foreignCapitalAmount) || other.foreignCapitalAmount == foreignCapitalAmount)&&(identical(other.name, name) || other.name == name)&&(identical(other.issueCapitalTotal, issueCapitalTotal) || other.issueCapitalTotal == issueCapitalTotal)&&(identical(other.companyTypeId, companyTypeId) || other.companyTypeId == companyTypeId)&&(identical(other.onlineSingleSubmissionNumber, onlineSingleSubmissionNumber) || other.onlineSingleSubmissionNumber == onlineSingleSubmissionNumber)&&(identical(other.villageId, villageId) || other.villageId == villageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(checklists),employmentReportingNumber,const DeepCollectionEquality().hash(projects),validationDate,const DeepCollectionEquality().hash(pic),importFlag,totalCapitalAmount,domesticCapitalPercentage,id,issueDate,email,address,legalBodyStatus,const DeepCollectionEquality().hash(shareholders),bussinessActorType,baseCapitalTotal,taxNumber,const DeepCollectionEquality().hash(legalities),submissionDate,approvalNumber,domesticCapitalAmount,exportFlag,phoneNumber,foreignCapitalPercentage,registrationNumber,businessScale,foreignCapitalAmount,name,issueCapitalTotal,companyTypeId,onlineSingleSubmissionNumber,villageId]);

@override
String toString() {
  return 'Company(checklists: $checklists, employmentReportingNumber: $employmentReportingNumber, projects: $projects, validationDate: $validationDate, pic: $pic, importFlag: $importFlag, totalCapitalAmount: $totalCapitalAmount, domesticCapitalPercentage: $domesticCapitalPercentage, id: $id, issueDate: $issueDate, email: $email, address: $address, legalBodyStatus: $legalBodyStatus, shareholders: $shareholders, bussinessActorType: $bussinessActorType, baseCapitalTotal: $baseCapitalTotal, taxNumber: $taxNumber, legalities: $legalities, submissionDate: $submissionDate, approvalNumber: $approvalNumber, domesticCapitalAmount: $domesticCapitalAmount, exportFlag: $exportFlag, phoneNumber: $phoneNumber, foreignCapitalPercentage: $foreignCapitalPercentage, registrationNumber: $registrationNumber, businessScale: $businessScale, foreignCapitalAmount: $foreignCapitalAmount, name: $name, issueCapitalTotal: $issueCapitalTotal, companyTypeId: $companyTypeId, onlineSingleSubmissionNumber: $onlineSingleSubmissionNumber, villageId: $villageId)';
}


}

/// @nodoc
abstract mixin class $CompanyCopyWith<$Res>  {
  factory $CompanyCopyWith(Company value, $Res Function(Company) _then) = _$CompanyCopyWithImpl;
@useResult
$Res call({
 List<CompanyChecklist>? checklists, String? employmentReportingNumber, List<CompanyProject>? projects, String? validationDate, List<CompanyPic>? pic, String? importFlag,@BigIntConverter() BigInt? totalCapitalAmount, int? domesticCapitalPercentage, String? id, String? issueDate, String? email, String? address, String? legalBodyStatus, List<CompanyShareholder>? shareholders, String? bussinessActorType,@BigIntConverter() BigInt? baseCapitalTotal, String? taxNumber, List<CompanyLegality>? legalities, String? submissionDate, String? approvalNumber, String? domesticCapitalAmount, String? exportFlag, String? phoneNumber, int? foreignCapitalPercentage,@BigIntConverter() BigInt? registrationNumber, String? businessScale, String? foreignCapitalAmount, String? name,@BigIntConverter() BigInt? issueCapitalTotal, String? companyTypeId, String? onlineSingleSubmissionNumber, String? villageId
});




}
/// @nodoc
class _$CompanyCopyWithImpl<$Res>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._self, this._then);

  final Company _self;
  final $Res Function(Company) _then;

/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? checklists = freezed,Object? employmentReportingNumber = freezed,Object? projects = freezed,Object? validationDate = freezed,Object? pic = freezed,Object? importFlag = freezed,Object? totalCapitalAmount = freezed,Object? domesticCapitalPercentage = freezed,Object? id = freezed,Object? issueDate = freezed,Object? email = freezed,Object? address = freezed,Object? legalBodyStatus = freezed,Object? shareholders = freezed,Object? bussinessActorType = freezed,Object? baseCapitalTotal = freezed,Object? taxNumber = freezed,Object? legalities = freezed,Object? submissionDate = freezed,Object? approvalNumber = freezed,Object? domesticCapitalAmount = freezed,Object? exportFlag = freezed,Object? phoneNumber = freezed,Object? foreignCapitalPercentage = freezed,Object? registrationNumber = freezed,Object? businessScale = freezed,Object? foreignCapitalAmount = freezed,Object? name = freezed,Object? issueCapitalTotal = freezed,Object? companyTypeId = freezed,Object? onlineSingleSubmissionNumber = freezed,Object? villageId = freezed,}) {
  return _then(_self.copyWith(
checklists: freezed == checklists ? _self.checklists : checklists // ignore: cast_nullable_to_non_nullable
as List<CompanyChecklist>?,employmentReportingNumber: freezed == employmentReportingNumber ? _self.employmentReportingNumber : employmentReportingNumber // ignore: cast_nullable_to_non_nullable
as String?,projects: freezed == projects ? _self.projects : projects // ignore: cast_nullable_to_non_nullable
as List<CompanyProject>?,validationDate: freezed == validationDate ? _self.validationDate : validationDate // ignore: cast_nullable_to_non_nullable
as String?,pic: freezed == pic ? _self.pic : pic // ignore: cast_nullable_to_non_nullable
as List<CompanyPic>?,importFlag: freezed == importFlag ? _self.importFlag : importFlag // ignore: cast_nullable_to_non_nullable
as String?,totalCapitalAmount: freezed == totalCapitalAmount ? _self.totalCapitalAmount : totalCapitalAmount // ignore: cast_nullable_to_non_nullable
as BigInt?,domesticCapitalPercentage: freezed == domesticCapitalPercentage ? _self.domesticCapitalPercentage : domesticCapitalPercentage // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,legalBodyStatus: freezed == legalBodyStatus ? _self.legalBodyStatus : legalBodyStatus // ignore: cast_nullable_to_non_nullable
as String?,shareholders: freezed == shareholders ? _self.shareholders : shareholders // ignore: cast_nullable_to_non_nullable
as List<CompanyShareholder>?,bussinessActorType: freezed == bussinessActorType ? _self.bussinessActorType : bussinessActorType // ignore: cast_nullable_to_non_nullable
as String?,baseCapitalTotal: freezed == baseCapitalTotal ? _self.baseCapitalTotal : baseCapitalTotal // ignore: cast_nullable_to_non_nullable
as BigInt?,taxNumber: freezed == taxNumber ? _self.taxNumber : taxNumber // ignore: cast_nullable_to_non_nullable
as String?,legalities: freezed == legalities ? _self.legalities : legalities // ignore: cast_nullable_to_non_nullable
as List<CompanyLegality>?,submissionDate: freezed == submissionDate ? _self.submissionDate : submissionDate // ignore: cast_nullable_to_non_nullable
as String?,approvalNumber: freezed == approvalNumber ? _self.approvalNumber : approvalNumber // ignore: cast_nullable_to_non_nullable
as String?,domesticCapitalAmount: freezed == domesticCapitalAmount ? _self.domesticCapitalAmount : domesticCapitalAmount // ignore: cast_nullable_to_non_nullable
as String?,exportFlag: freezed == exportFlag ? _self.exportFlag : exportFlag // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,foreignCapitalPercentage: freezed == foreignCapitalPercentage ? _self.foreignCapitalPercentage : foreignCapitalPercentage // ignore: cast_nullable_to_non_nullable
as int?,registrationNumber: freezed == registrationNumber ? _self.registrationNumber : registrationNumber // ignore: cast_nullable_to_non_nullable
as BigInt?,businessScale: freezed == businessScale ? _self.businessScale : businessScale // ignore: cast_nullable_to_non_nullable
as String?,foreignCapitalAmount: freezed == foreignCapitalAmount ? _self.foreignCapitalAmount : foreignCapitalAmount // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,issueCapitalTotal: freezed == issueCapitalTotal ? _self.issueCapitalTotal : issueCapitalTotal // ignore: cast_nullable_to_non_nullable
as BigInt?,companyTypeId: freezed == companyTypeId ? _self.companyTypeId : companyTypeId // ignore: cast_nullable_to_non_nullable
as String?,onlineSingleSubmissionNumber: freezed == onlineSingleSubmissionNumber ? _self.onlineSingleSubmissionNumber : onlineSingleSubmissionNumber // ignore: cast_nullable_to_non_nullable
as String?,villageId: freezed == villageId ? _self.villageId : villageId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Company].
extension CompanyPatterns on Company {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Company value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Company() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Company value)  $default,){
final _that = this;
switch (_that) {
case _Company():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Company value)?  $default,){
final _that = this;
switch (_that) {
case _Company() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CompanyChecklist>? checklists,  String? employmentReportingNumber,  List<CompanyProject>? projects,  String? validationDate,  List<CompanyPic>? pic,  String? importFlag, @BigIntConverter()  BigInt? totalCapitalAmount,  int? domesticCapitalPercentage,  String? id,  String? issueDate,  String? email,  String? address,  String? legalBodyStatus,  List<CompanyShareholder>? shareholders,  String? bussinessActorType, @BigIntConverter()  BigInt? baseCapitalTotal,  String? taxNumber,  List<CompanyLegality>? legalities,  String? submissionDate,  String? approvalNumber,  String? domesticCapitalAmount,  String? exportFlag,  String? phoneNumber,  int? foreignCapitalPercentage, @BigIntConverter()  BigInt? registrationNumber,  String? businessScale,  String? foreignCapitalAmount,  String? name, @BigIntConverter()  BigInt? issueCapitalTotal,  String? companyTypeId,  String? onlineSingleSubmissionNumber,  String? villageId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Company() when $default != null:
return $default(_that.checklists,_that.employmentReportingNumber,_that.projects,_that.validationDate,_that.pic,_that.importFlag,_that.totalCapitalAmount,_that.domesticCapitalPercentage,_that.id,_that.issueDate,_that.email,_that.address,_that.legalBodyStatus,_that.shareholders,_that.bussinessActorType,_that.baseCapitalTotal,_that.taxNumber,_that.legalities,_that.submissionDate,_that.approvalNumber,_that.domesticCapitalAmount,_that.exportFlag,_that.phoneNumber,_that.foreignCapitalPercentage,_that.registrationNumber,_that.businessScale,_that.foreignCapitalAmount,_that.name,_that.issueCapitalTotal,_that.companyTypeId,_that.onlineSingleSubmissionNumber,_that.villageId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CompanyChecklist>? checklists,  String? employmentReportingNumber,  List<CompanyProject>? projects,  String? validationDate,  List<CompanyPic>? pic,  String? importFlag, @BigIntConverter()  BigInt? totalCapitalAmount,  int? domesticCapitalPercentage,  String? id,  String? issueDate,  String? email,  String? address,  String? legalBodyStatus,  List<CompanyShareholder>? shareholders,  String? bussinessActorType, @BigIntConverter()  BigInt? baseCapitalTotal,  String? taxNumber,  List<CompanyLegality>? legalities,  String? submissionDate,  String? approvalNumber,  String? domesticCapitalAmount,  String? exportFlag,  String? phoneNumber,  int? foreignCapitalPercentage, @BigIntConverter()  BigInt? registrationNumber,  String? businessScale,  String? foreignCapitalAmount,  String? name, @BigIntConverter()  BigInt? issueCapitalTotal,  String? companyTypeId,  String? onlineSingleSubmissionNumber,  String? villageId)  $default,) {final _that = this;
switch (_that) {
case _Company():
return $default(_that.checklists,_that.employmentReportingNumber,_that.projects,_that.validationDate,_that.pic,_that.importFlag,_that.totalCapitalAmount,_that.domesticCapitalPercentage,_that.id,_that.issueDate,_that.email,_that.address,_that.legalBodyStatus,_that.shareholders,_that.bussinessActorType,_that.baseCapitalTotal,_that.taxNumber,_that.legalities,_that.submissionDate,_that.approvalNumber,_that.domesticCapitalAmount,_that.exportFlag,_that.phoneNumber,_that.foreignCapitalPercentage,_that.registrationNumber,_that.businessScale,_that.foreignCapitalAmount,_that.name,_that.issueCapitalTotal,_that.companyTypeId,_that.onlineSingleSubmissionNumber,_that.villageId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CompanyChecklist>? checklists,  String? employmentReportingNumber,  List<CompanyProject>? projects,  String? validationDate,  List<CompanyPic>? pic,  String? importFlag, @BigIntConverter()  BigInt? totalCapitalAmount,  int? domesticCapitalPercentage,  String? id,  String? issueDate,  String? email,  String? address,  String? legalBodyStatus,  List<CompanyShareholder>? shareholders,  String? bussinessActorType, @BigIntConverter()  BigInt? baseCapitalTotal,  String? taxNumber,  List<CompanyLegality>? legalities,  String? submissionDate,  String? approvalNumber,  String? domesticCapitalAmount,  String? exportFlag,  String? phoneNumber,  int? foreignCapitalPercentage, @BigIntConverter()  BigInt? registrationNumber,  String? businessScale,  String? foreignCapitalAmount,  String? name, @BigIntConverter()  BigInt? issueCapitalTotal,  String? companyTypeId,  String? onlineSingleSubmissionNumber,  String? villageId)?  $default,) {final _that = this;
switch (_that) {
case _Company() when $default != null:
return $default(_that.checklists,_that.employmentReportingNumber,_that.projects,_that.validationDate,_that.pic,_that.importFlag,_that.totalCapitalAmount,_that.domesticCapitalPercentage,_that.id,_that.issueDate,_that.email,_that.address,_that.legalBodyStatus,_that.shareholders,_that.bussinessActorType,_that.baseCapitalTotal,_that.taxNumber,_that.legalities,_that.submissionDate,_that.approvalNumber,_that.domesticCapitalAmount,_that.exportFlag,_that.phoneNumber,_that.foreignCapitalPercentage,_that.registrationNumber,_that.businessScale,_that.foreignCapitalAmount,_that.name,_that.issueCapitalTotal,_that.companyTypeId,_that.onlineSingleSubmissionNumber,_that.villageId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Company implements Company {
  const _Company({final  List<CompanyChecklist>? checklists = null, this.employmentReportingNumber = null, final  List<CompanyProject>? projects = null, this.validationDate = null, final  List<CompanyPic>? pic = null, this.importFlag = null, @BigIntConverter() this.totalCapitalAmount = null, this.domesticCapitalPercentage = null, this.id = null, this.issueDate = null, this.email = null, this.address = null, this.legalBodyStatus = null, final  List<CompanyShareholder>? shareholders = null, this.bussinessActorType = null, @BigIntConverter() this.baseCapitalTotal = null, this.taxNumber = null, final  List<CompanyLegality>? legalities = null, this.submissionDate = null, this.approvalNumber = null, this.domesticCapitalAmount = null, this.exportFlag = null, this.phoneNumber = null, this.foreignCapitalPercentage = null, @BigIntConverter() this.registrationNumber = null, this.businessScale = null, this.foreignCapitalAmount = null, this.name = null, @BigIntConverter() this.issueCapitalTotal = null, this.companyTypeId = null, this.onlineSingleSubmissionNumber = null, this.villageId = null}): _checklists = checklists,_projects = projects,_pic = pic,_shareholders = shareholders,_legalities = legalities;
  factory _Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);

 final  List<CompanyChecklist>? _checklists;
@override@JsonKey() List<CompanyChecklist>? get checklists {
  final value = _checklists;
  if (value == null) return null;
  if (_checklists is EqualUnmodifiableListView) return _checklists;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String? employmentReportingNumber;
 final  List<CompanyProject>? _projects;
@override@JsonKey() List<CompanyProject>? get projects {
  final value = _projects;
  if (value == null) return null;
  if (_projects is EqualUnmodifiableListView) return _projects;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String? validationDate;
 final  List<CompanyPic>? _pic;
@override@JsonKey() List<CompanyPic>? get pic {
  final value = _pic;
  if (value == null) return null;
  if (_pic is EqualUnmodifiableListView) return _pic;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String? importFlag;
@override@JsonKey()@BigIntConverter() final  BigInt? totalCapitalAmount;
@override@JsonKey() final  int? domesticCapitalPercentage;
@override@JsonKey() final  String? id;
@override@JsonKey() final  String? issueDate;
@override@JsonKey() final  String? email;
@override@JsonKey() final  String? address;
@override@JsonKey() final  String? legalBodyStatus;
 final  List<CompanyShareholder>? _shareholders;
@override@JsonKey() List<CompanyShareholder>? get shareholders {
  final value = _shareholders;
  if (value == null) return null;
  if (_shareholders is EqualUnmodifiableListView) return _shareholders;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String? bussinessActorType;
@override@JsonKey()@BigIntConverter() final  BigInt? baseCapitalTotal;
@override@JsonKey() final  String? taxNumber;
 final  List<CompanyLegality>? _legalities;
@override@JsonKey() List<CompanyLegality>? get legalities {
  final value = _legalities;
  if (value == null) return null;
  if (_legalities is EqualUnmodifiableListView) return _legalities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  String? submissionDate;
@override@JsonKey() final  String? approvalNumber;
@override@JsonKey() final  String? domesticCapitalAmount;
@override@JsonKey() final  String? exportFlag;
@override@JsonKey() final  String? phoneNumber;
@override@JsonKey() final  int? foreignCapitalPercentage;
@override@JsonKey()@BigIntConverter() final  BigInt? registrationNumber;
@override@JsonKey() final  String? businessScale;
@override@JsonKey() final  String? foreignCapitalAmount;
@override@JsonKey() final  String? name;
@override@JsonKey()@BigIntConverter() final  BigInt? issueCapitalTotal;
@override@JsonKey() final  String? companyTypeId;
@override@JsonKey() final  String? onlineSingleSubmissionNumber;
@override@JsonKey() final  String? villageId;

/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CompanyCopyWith<_Company> get copyWith => __$CompanyCopyWithImpl<_Company>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CompanyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Company&&const DeepCollectionEquality().equals(other._checklists, _checklists)&&(identical(other.employmentReportingNumber, employmentReportingNumber) || other.employmentReportingNumber == employmentReportingNumber)&&const DeepCollectionEquality().equals(other._projects, _projects)&&(identical(other.validationDate, validationDate) || other.validationDate == validationDate)&&const DeepCollectionEquality().equals(other._pic, _pic)&&(identical(other.importFlag, importFlag) || other.importFlag == importFlag)&&(identical(other.totalCapitalAmount, totalCapitalAmount) || other.totalCapitalAmount == totalCapitalAmount)&&(identical(other.domesticCapitalPercentage, domesticCapitalPercentage) || other.domesticCapitalPercentage == domesticCapitalPercentage)&&(identical(other.id, id) || other.id == id)&&(identical(other.issueDate, issueDate) || other.issueDate == issueDate)&&(identical(other.email, email) || other.email == email)&&(identical(other.address, address) || other.address == address)&&(identical(other.legalBodyStatus, legalBodyStatus) || other.legalBodyStatus == legalBodyStatus)&&const DeepCollectionEquality().equals(other._shareholders, _shareholders)&&(identical(other.bussinessActorType, bussinessActorType) || other.bussinessActorType == bussinessActorType)&&(identical(other.baseCapitalTotal, baseCapitalTotal) || other.baseCapitalTotal == baseCapitalTotal)&&(identical(other.taxNumber, taxNumber) || other.taxNumber == taxNumber)&&const DeepCollectionEquality().equals(other._legalities, _legalities)&&(identical(other.submissionDate, submissionDate) || other.submissionDate == submissionDate)&&(identical(other.approvalNumber, approvalNumber) || other.approvalNumber == approvalNumber)&&(identical(other.domesticCapitalAmount, domesticCapitalAmount) || other.domesticCapitalAmount == domesticCapitalAmount)&&(identical(other.exportFlag, exportFlag) || other.exportFlag == exportFlag)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.foreignCapitalPercentage, foreignCapitalPercentage) || other.foreignCapitalPercentage == foreignCapitalPercentage)&&(identical(other.registrationNumber, registrationNumber) || other.registrationNumber == registrationNumber)&&(identical(other.businessScale, businessScale) || other.businessScale == businessScale)&&(identical(other.foreignCapitalAmount, foreignCapitalAmount) || other.foreignCapitalAmount == foreignCapitalAmount)&&(identical(other.name, name) || other.name == name)&&(identical(other.issueCapitalTotal, issueCapitalTotal) || other.issueCapitalTotal == issueCapitalTotal)&&(identical(other.companyTypeId, companyTypeId) || other.companyTypeId == companyTypeId)&&(identical(other.onlineSingleSubmissionNumber, onlineSingleSubmissionNumber) || other.onlineSingleSubmissionNumber == onlineSingleSubmissionNumber)&&(identical(other.villageId, villageId) || other.villageId == villageId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,const DeepCollectionEquality().hash(_checklists),employmentReportingNumber,const DeepCollectionEquality().hash(_projects),validationDate,const DeepCollectionEquality().hash(_pic),importFlag,totalCapitalAmount,domesticCapitalPercentage,id,issueDate,email,address,legalBodyStatus,const DeepCollectionEquality().hash(_shareholders),bussinessActorType,baseCapitalTotal,taxNumber,const DeepCollectionEquality().hash(_legalities),submissionDate,approvalNumber,domesticCapitalAmount,exportFlag,phoneNumber,foreignCapitalPercentage,registrationNumber,businessScale,foreignCapitalAmount,name,issueCapitalTotal,companyTypeId,onlineSingleSubmissionNumber,villageId]);

@override
String toString() {
  return 'Company(checklists: $checklists, employmentReportingNumber: $employmentReportingNumber, projects: $projects, validationDate: $validationDate, pic: $pic, importFlag: $importFlag, totalCapitalAmount: $totalCapitalAmount, domesticCapitalPercentage: $domesticCapitalPercentage, id: $id, issueDate: $issueDate, email: $email, address: $address, legalBodyStatus: $legalBodyStatus, shareholders: $shareholders, bussinessActorType: $bussinessActorType, baseCapitalTotal: $baseCapitalTotal, taxNumber: $taxNumber, legalities: $legalities, submissionDate: $submissionDate, approvalNumber: $approvalNumber, domesticCapitalAmount: $domesticCapitalAmount, exportFlag: $exportFlag, phoneNumber: $phoneNumber, foreignCapitalPercentage: $foreignCapitalPercentage, registrationNumber: $registrationNumber, businessScale: $businessScale, foreignCapitalAmount: $foreignCapitalAmount, name: $name, issueCapitalTotal: $issueCapitalTotal, companyTypeId: $companyTypeId, onlineSingleSubmissionNumber: $onlineSingleSubmissionNumber, villageId: $villageId)';
}


}

/// @nodoc
abstract mixin class _$CompanyCopyWith<$Res> implements $CompanyCopyWith<$Res> {
  factory _$CompanyCopyWith(_Company value, $Res Function(_Company) _then) = __$CompanyCopyWithImpl;
@override @useResult
$Res call({
 List<CompanyChecklist>? checklists, String? employmentReportingNumber, List<CompanyProject>? projects, String? validationDate, List<CompanyPic>? pic, String? importFlag,@BigIntConverter() BigInt? totalCapitalAmount, int? domesticCapitalPercentage, String? id, String? issueDate, String? email, String? address, String? legalBodyStatus, List<CompanyShareholder>? shareholders, String? bussinessActorType,@BigIntConverter() BigInt? baseCapitalTotal, String? taxNumber, List<CompanyLegality>? legalities, String? submissionDate, String? approvalNumber, String? domesticCapitalAmount, String? exportFlag, String? phoneNumber, int? foreignCapitalPercentage,@BigIntConverter() BigInt? registrationNumber, String? businessScale, String? foreignCapitalAmount, String? name,@BigIntConverter() BigInt? issueCapitalTotal, String? companyTypeId, String? onlineSingleSubmissionNumber, String? villageId
});




}
/// @nodoc
class __$CompanyCopyWithImpl<$Res>
    implements _$CompanyCopyWith<$Res> {
  __$CompanyCopyWithImpl(this._self, this._then);

  final _Company _self;
  final $Res Function(_Company) _then;

/// Create a copy of Company
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? checklists = freezed,Object? employmentReportingNumber = freezed,Object? projects = freezed,Object? validationDate = freezed,Object? pic = freezed,Object? importFlag = freezed,Object? totalCapitalAmount = freezed,Object? domesticCapitalPercentage = freezed,Object? id = freezed,Object? issueDate = freezed,Object? email = freezed,Object? address = freezed,Object? legalBodyStatus = freezed,Object? shareholders = freezed,Object? bussinessActorType = freezed,Object? baseCapitalTotal = freezed,Object? taxNumber = freezed,Object? legalities = freezed,Object? submissionDate = freezed,Object? approvalNumber = freezed,Object? domesticCapitalAmount = freezed,Object? exportFlag = freezed,Object? phoneNumber = freezed,Object? foreignCapitalPercentage = freezed,Object? registrationNumber = freezed,Object? businessScale = freezed,Object? foreignCapitalAmount = freezed,Object? name = freezed,Object? issueCapitalTotal = freezed,Object? companyTypeId = freezed,Object? onlineSingleSubmissionNumber = freezed,Object? villageId = freezed,}) {
  return _then(_Company(
checklists: freezed == checklists ? _self._checklists : checklists // ignore: cast_nullable_to_non_nullable
as List<CompanyChecklist>?,employmentReportingNumber: freezed == employmentReportingNumber ? _self.employmentReportingNumber : employmentReportingNumber // ignore: cast_nullable_to_non_nullable
as String?,projects: freezed == projects ? _self._projects : projects // ignore: cast_nullable_to_non_nullable
as List<CompanyProject>?,validationDate: freezed == validationDate ? _self.validationDate : validationDate // ignore: cast_nullable_to_non_nullable
as String?,pic: freezed == pic ? _self._pic : pic // ignore: cast_nullable_to_non_nullable
as List<CompanyPic>?,importFlag: freezed == importFlag ? _self.importFlag : importFlag // ignore: cast_nullable_to_non_nullable
as String?,totalCapitalAmount: freezed == totalCapitalAmount ? _self.totalCapitalAmount : totalCapitalAmount // ignore: cast_nullable_to_non_nullable
as BigInt?,domesticCapitalPercentage: freezed == domesticCapitalPercentage ? _self.domesticCapitalPercentage : domesticCapitalPercentage // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,issueDate: freezed == issueDate ? _self.issueDate : issueDate // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,legalBodyStatus: freezed == legalBodyStatus ? _self.legalBodyStatus : legalBodyStatus // ignore: cast_nullable_to_non_nullable
as String?,shareholders: freezed == shareholders ? _self._shareholders : shareholders // ignore: cast_nullable_to_non_nullable
as List<CompanyShareholder>?,bussinessActorType: freezed == bussinessActorType ? _self.bussinessActorType : bussinessActorType // ignore: cast_nullable_to_non_nullable
as String?,baseCapitalTotal: freezed == baseCapitalTotal ? _self.baseCapitalTotal : baseCapitalTotal // ignore: cast_nullable_to_non_nullable
as BigInt?,taxNumber: freezed == taxNumber ? _self.taxNumber : taxNumber // ignore: cast_nullable_to_non_nullable
as String?,legalities: freezed == legalities ? _self._legalities : legalities // ignore: cast_nullable_to_non_nullable
as List<CompanyLegality>?,submissionDate: freezed == submissionDate ? _self.submissionDate : submissionDate // ignore: cast_nullable_to_non_nullable
as String?,approvalNumber: freezed == approvalNumber ? _self.approvalNumber : approvalNumber // ignore: cast_nullable_to_non_nullable
as String?,domesticCapitalAmount: freezed == domesticCapitalAmount ? _self.domesticCapitalAmount : domesticCapitalAmount // ignore: cast_nullable_to_non_nullable
as String?,exportFlag: freezed == exportFlag ? _self.exportFlag : exportFlag // ignore: cast_nullable_to_non_nullable
as String?,phoneNumber: freezed == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String?,foreignCapitalPercentage: freezed == foreignCapitalPercentage ? _self.foreignCapitalPercentage : foreignCapitalPercentage // ignore: cast_nullable_to_non_nullable
as int?,registrationNumber: freezed == registrationNumber ? _self.registrationNumber : registrationNumber // ignore: cast_nullable_to_non_nullable
as BigInt?,businessScale: freezed == businessScale ? _self.businessScale : businessScale // ignore: cast_nullable_to_non_nullable
as String?,foreignCapitalAmount: freezed == foreignCapitalAmount ? _self.foreignCapitalAmount : foreignCapitalAmount // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,issueCapitalTotal: freezed == issueCapitalTotal ? _self.issueCapitalTotal : issueCapitalTotal // ignore: cast_nullable_to_non_nullable
as BigInt?,companyTypeId: freezed == companyTypeId ? _self.companyTypeId : companyTypeId // ignore: cast_nullable_to_non_nullable
as String?,onlineSingleSubmissionNumber: freezed == onlineSingleSubmissionNumber ? _self.onlineSingleSubmissionNumber : onlineSingleSubmissionNumber // ignore: cast_nullable_to_non_nullable
as String?,villageId: freezed == villageId ? _self.villageId : villageId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
