import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'simple_action.g.dart';

abstract class SimpleAction implements Built<SimpleAction, SimpleActionBuilder> {
  SimpleAction._();

  factory SimpleAction([updates(SimpleActionBuilder b)]) = _$SimpleAction;

  static Serializer<SimpleAction> get serializer => _$SimpleActionSerializer;
}
