import 'package:eosdart_hyperion/eosdart_hyperion.dart';
import 'package:test/test.dart';

void main() {
  group('GetActions', () {
    HyperionClient hyperionClient;

    setUp(() {
      hyperionClient = HyperionClient(nodeURL: 'https://api.eossweden.org');
    });

    test('get simple actions', () {
      final actionsHyperionService =
          ActionsHyperionService.create(client: hyperionClient);

      actionsHyperionService
          .getActions(account: 'eosswedenorg', simple: true, limit: 5)
          .then((response) {
        expect(response.body.simpleActions, isNotNull);
        expect(response.body.simpleActions.length, 5);
        expect(response.body.simpleActions[0].block > 0, isTrue);
      });
    });

    test('get actions', () {
      final actionsHyperionService =
          ActionsHyperionService.create(client: hyperionClient);

      actionsHyperionService
          .getActions(account: 'eosswedenorg', simple: false)
          .then((response) {
        expect(response.body.simpleActions, isNull);
      });
    });
  });
}
