import 'package:eosdart_hyperion/eosdart_hyperion.dart';

void main() {
  final hyperionClient = HyperionClient(nodeURL: 'https://api.eossweden.org');

  final actionsHyperionService =
      ActionsHyperionService.create(client: hyperionClient);

  actionsHyperionService
      .getActions(account: 'eosswedenorg', simple: true, limit: 5)
      .then((response) => print(response.body));
}
