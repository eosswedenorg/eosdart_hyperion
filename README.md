# eosdart_hyperion

EOSIO-based blockchain Hyperion API client for Dart and Flutter applications.

## What's Hyperion?

[Hyperion](https://github.com/eosrio/Hyperion-History-API) is a Scalable Full History API Solution
for EOSIO based blockchains developed by EOS Rio.

## Usage

This library is powered by [Chopper](https://pub.dev/packages/chopper). This means that you need
to create an instance of the `ChopperService` you want to query, i.e. `ActionsHyperionService`,
and inject an instance of `HyperionClient` to it.

`HyperionClient` is flexible. You can customize it the same way you would do with a `ChopperClient`,
for example by adding your own interceptors such as `HttpLoggingInterceptor` or `CurlInterceptor`,
although it works fine out of box by specifying a `nodeUrl`.

Here's an example of the basic usage:

```
dependencies:
  eosdart_hyperion: ^[latest version]
```

```
import 'package:eosdart_hyperion/eosdart_hyperion.dart';

void main() {
  final hyperionClient = HyperionClient(nodeURL: 'https://api.eossweden.org');

  final actionsHyperionService =
      ActionsHyperionService.create(client: hyperionClient);

  actionsHyperionService
      .getActions(account: 'eosswedenorg', simple: true, limit: 5)
      .then((response) => print(response.body));
}
```

## Contributing

If you have a feature request or found a bug please file it at the [issues tracker](https://github.com/eosswedenorg/eosdart_hyperion/issues).

Thanks!