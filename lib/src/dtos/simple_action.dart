import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'action.dart';
import 'transaction_data.dart';

part 'simple_action.g.dart';

abstract class SimpleAction
    implements Built<SimpleAction, SimpleActionBuilder> {
  int get block;

  String get timestamp;

  bool get irreversible;

  String get contract;

  String get action;

  String get actors;

  String get notified;

  String get transaction_id;

  TransactionData get data;

  @nullable
  BuiltList<Action> get actions;

  @nullable
  @BuiltValueField(wireName: 'simple_actions')
  BuiltList<SimpleAction> get simpleActions;

  SimpleAction._();

  factory SimpleAction([Function(SimpleActionBuilder b) updates]) =
      _$SimpleAction;

  static Serializer<SimpleAction> get serializer => _$simpleActionSerializer;
}
