import 'dart:convert';

import 'package:eosdart_hyperion/eosdart_hyperion.dart';
import 'package:test/test.dart';

import '../fixtures/fixture_parser.dart';

void main() {
  String jsonResponse;

  setUp(() {
    jsonResponse = fixture(simpleActionResponse);
  });

  test('SimpleAction from JSON', () {
    var response = json.decode(jsonResponse);
    var simpleAction = SimpleAction.fromJson(response);

    expect(simpleAction.transactionId,
        'b2d395a6fed26dcb3989f6f98778a288f0affc9b03d2e2fabfd1aff6e9b776aa');
    expect(simpleAction.contract, 'apibenchmark');
    expect(simpleAction.block, 104917777);
    expect((simpleAction.data as Map)['tester'], 'eosswedenorg');
  });
}
