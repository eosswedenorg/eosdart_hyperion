import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'simple_action.dart';

part 'get_actions_response.g.dart';

@JsonSerializable()
class GetActionsResponse implements Equatable {
  final int query_time;

  final bool cached;

  final int lib;

  //@JsonKey(nullable: true)
  //final List<Action> actions;

  @JsonKey(name: 'simple_actions', nullable: true)
  final List<SimpleAction> simpleActions;

  GetActionsResponse(this.query_time, this.cached, this.lib,
      {this.simpleActions});

  static const fromJsonFactory = _$GetActionsResponseFromJson;

  factory GetActionsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetActionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetActionsResponseToJson(this);

  @override
  List<Object> get props => [query_time, cached, lib, simpleActions];

  @override
  bool get stringify => true;
}
