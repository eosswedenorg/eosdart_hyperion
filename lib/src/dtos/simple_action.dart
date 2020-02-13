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

  final String transaction_id;

  @JsonKey(nullable: true)
  final dynamic data;

  SimpleAction(this.block, this.timestamp, this.irreversible, this.contract,
      this.action, this.actors, this.notified, this.transaction_id,
      {this.data});

  static const fromJsonFactory = _$SimpleActionFromJson;

  factory SimpleAction.fromJson(Map<String, dynamic> json) =>
      _$SimpleActionFromJson(json);

  Map<String, dynamic> toJson() => _$SimpleActionToJson(this);

  @override
  String toString() {
    return 'SimpleAction{block: $block, timestamp: $timestamp, irreversible: $irreversible, contract: $contract, action: $action, actors: $actors, notified: $notified, transaction_id: $transaction_id, data: $data}';
  }

  @override
  List<Object> get props => [
        block,
        timestamp,
        irreversible,
        contract,
        action,
        actors,
        notified,
        transaction_id
      ];

  @override
  bool get stringify => true;
}
