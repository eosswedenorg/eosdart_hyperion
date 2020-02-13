// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionData _$TransactionDataFromJson(Map<String, dynamic> json) {
  return TransactionData(
    json['from'] as String,
    json['to'] as String,
    (json['amount'] as num)?.toDouble(),
    json['symbol'] as String,
    json['memo'] as String,
    json['quantity'] as String,
  );
}

Map<String, dynamic> _$TransactionDataToJson(TransactionData instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'amount': instance.amount,
      'symbol': instance.symbol,
      'memo': instance.memo,
      'quantity': instance.quantity,
    };
