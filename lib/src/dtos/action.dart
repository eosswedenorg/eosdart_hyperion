import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'action.g.dart';

abstract class Action implements Built<Action, ActionBuilder> {
  Action._();

  factory Action([updates(ActionBuilder b)]) = _$Action;

  static Serializer<Action> get serializer => _$ActionSerializer;
}
