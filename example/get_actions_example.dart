import 'package:eosdart_hyperion/eosdart_hyperion.dart';

void main() async {
  final actionsHyperionService =
      ActionsHyperionService.create(baseUrl: 'https://api.eossweden.org');

  await actionsHyperionService
      .getActions(account: 'eosswedenorg', simple: false, limit: 3)
      .then((response) => print(response.body));
}
