// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appuser.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppUser _$AppUserFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const ['accountId']);
  return AppUser()
    ..accountId = json['accountId'] as String
    ..firstName = json['firstName'] as String
    ..lastName = json['lastName'] as String
    ..imageUrl = json['photoId'] as String;
}

Map<String, dynamic> _$AppUserToJson(AppUser instance) => <String, dynamic>{
      'accountId': instance.accountId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'photoId': instance.imageUrl,
    };
