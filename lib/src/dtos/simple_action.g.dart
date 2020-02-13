// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_action.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SimpleAction _$SimpleActionFromJson(Map<String, dynamic> json) {
  return SimpleAction(
    json['block'] as int,
    json['timestamp'] as String,
    json['irreversible'] as bool,
    json['contract'] as String,
    json['action'] as String,
    json['actors'] as String,
    json['notified'] as String,
    json['transaction_id'] as String,
    data: json['data'],
  );
}

Map<String, dynamic> _$SimpleActionToJson(SimpleAction instance) =>
    <String, dynamic>{
      'block': instance.block,
      'timestamp': instance.timestamp,
      'irreversible': instance.irreversible,
      'contract': instance.contract,
      'action': instance.action,
      'actors': instance.actors,
      'notified': instance.notified,
      'transaction_id': instance.transactionId,
      'data': instance.data,
    };
