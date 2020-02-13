import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'transaction_data.g.dart';

@JsonSerializable()
class TransactionData implements Equatable {
  final String from;

  final String to;

  final double amount;

  final String symbol;

  final String memo;

  final String quantity;

  TransactionData(
      this.from, this.to, this.amount, this.symbol, this.memo, this.quantity);

  static const fromJsonFactory = _$TransactionDataFromJson;

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      _$TransactionDataFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionDataToJson(this);

  @override
  List<Object> get props => [from, to, amount, symbol, memo, quantity];

  @override
  bool get stringify => true;
}
