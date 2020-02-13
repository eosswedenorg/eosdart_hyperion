// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_actions_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetActionsResponse _$GetActionsResponseFromJson(Map<String, dynamic> json) {
  return GetActionsResponse(
    json['query_time'] as int,
    json['cached'] as bool,
    json['lib'] as int,
    simpleActions: (json['simple_actions'] as List)
        ?.map((e) =>
            e == null ? null : SimpleAction.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$GetActionsResponseToJson(GetActionsResponse instance) =>
    <String, dynamic>{
      'query_time': instance.query_time,
      'cached': instance.cached,
      'lib': instance.lib,
      'simple_actions': instance.simpleActions,
    };
