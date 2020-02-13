import 'package:eosdart_hyperion/eosdart_hyperion.dart';
import 'package:eosdart_hyperion/src/hyperion_client.dart';

void main() async {
  final hyperionClient = HyperionClient(nodeURL: 'https://api.eossweden.org');

  final actionsHyperionService =
      ActionsHyperionService.create(client: hyperionClient);

  await actionsHyperionService
      .getActions(account: 'eosswedenorg', simple: true, limit: 5)
      .then((response) => print(response.body.simpleActions));
}
