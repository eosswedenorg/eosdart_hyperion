import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'transaction_data.g.dart';

abstract class TransactionData
    implements Built<TransactionData, TransactionDataBuilder> {
  String get from;

  String get to;

  double get amount;

  String get symbol;

  String get memo;

  String get quantity;

  TransactionData._();

  factory TransactionData([Function(TransactionDataBuilder b) updates]) =
      _$TransactionData;

  static Serializer<TransactionData> get serializer =>
      _$transactionDataSerializer;
}
