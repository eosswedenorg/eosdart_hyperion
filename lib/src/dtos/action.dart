import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'action.g.dart';

abstract class Action implements Built<Action, ActionBuilder> {
  Action._();

  factory Action([Function(ActionBuilder b) updates]) = _$Action;

  static Serializer<Action> get serializer => _$actionSerializer;
}
