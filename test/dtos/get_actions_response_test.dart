import 'dart:convert';

import 'package:eosdart_hyperion/src/dtos/get_actions_response.dart';
import 'package:test/test.dart';

import '../fixtures/fixture_parser.dart';

void main() {
  group('GetActionsResponse', () {
    String jsonResponse;

    setUp(() {
      jsonResponse = fixture(getSimpleActionsResponse);
    });

    test('get simple actions from JSON', () {
      var response = json.decode(jsonResponse);
      var simpleActionsResponse = GetActionsResponse.fromJson(response);

      expect(simpleActionsResponse.lib, 104925304);
      expect(simpleActionsResponse.queryTime, 685);
      expect(simpleActionsResponse.simpleActions, isNotNull);
      expect(simpleActionsResponse.simpleActions.length, 10);
    });
  });
}
