import 'dart:convert';

import 'package:eosdart_hyperion/eosdart_hyperion.dart';
import 'package:test/test.dart';

import '../fixtures/fixture_parser.dart';

void main() {
  String jsonResponse;

  setUp(() {
    jsonResponse = fixture(transactionDataResponse);
  });

  test('TransactionData from JSON', () {
    var response = json.decode(jsonResponse);
    var data = TransactionData.fromJson(response);

    expect(data.from, 'eosio.vpay');
    expect(data.to, 'eosswedenorg');
    expect(data.amount, 574.1867);
    expect(data.symbol, 'EOS');
    expect(data.quantity, '574.1867 EOS');
    expect(data.memo, 'producer vote pay');
  });
}
