import 'package:json_annotation/json_annotation.dart';

import 'simple_action.dart';

part 'get_actions_response.g.dart';

@JsonSerializable()
class GetActionsResponse {
  @JsonKey(name: 'query_time')
  final int queryTime;

  final bool cached;

  final int lib;

  //@JsonKey(nullable: true)
  //final List<Action> actions;

  @JsonKey(name: 'simple_actions', nullable: true)
  final List<SimpleAction> simpleActions;

  GetActionsResponse(this.queryTime, this.cached, this.lib,
      {this.simpleActions});

  static const fromJsonFactory = _$GetActionsResponseFromJson;

  factory GetActionsResponse.fromJson(Map<String, dynamic> json) =>
      _$GetActionsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetActionsResponseToJson(this);

  @override
  String toString() =>
      'GetActionsResponse{queryTime: $queryTime, cached: $cached, lib: $lib, simpleActions: $simpleActions}';
}
