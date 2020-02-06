import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:eosdart_hyperion/src/dtos/get_actions_response.dart';


part 'serializers.g.dart';

@SerializersFor([GetActionsResponse])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
