import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'simple_action.g.dart';

@JsonSerializable()
class SimpleAction implements Equatable {
  final int block;

  final String timestamp;

  final bool irreversible;

  final String contract;

  final String action;

  final String actors;

  final String notified;

  @JsonKey(name: 'transaction_id')
  final String transactionId;

  @JsonKey(nullable: true)
  final dynamic data;

  SimpleAction(this.block, this.timestamp, this.irreversible, this.contract,
      this.action, this.actors, this.notified, this.transactionId,
      {this.data});

  static const fromJsonFactory = _$SimpleActionFromJson;

  factory SimpleAction.fromJson(Map<String, dynamic> json) =>
      _$SimpleActionFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleActionToJson(this);

  @override
  List<Object> get props => [
        block,
        timestamp,
        irreversible,
        contract,
        action,
        actors,
        notified,
        transactionId
      ];

  @override
  bool get stringify => true;
}
