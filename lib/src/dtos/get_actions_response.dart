import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'action.dart';
import 'simple_action.dart';

part 'get_actions_response.g.dart';

abstract class GetActionsResponse
    implements Built<GetActionsResponse, GetActionsResponseBuilder> {
  int get query_time;

  bool get cached;

  int get lib;

  @nullable
  BuiltList<Action> get actions;

  @nullable
  @BuiltValueField(wireName: 'simple_actions')
  BuiltList<SimpleAction> get simpleActions;

  GetActionsResponse._();

  factory GetActionsResponse([Function(GetActionsResponseBuilder b) updates]) =
      _$GetActionsResponse;

  static Serializer<GetActionsResponse> get serializer =>
      _$getActionsResponseSerializer;
}
