import 'dart:core';

import 'package:chopper/chopper.dart';
import 'package:meta/meta.dart';

import '../eosdart_hyperion.dart';
import 'json_serializable_converter.dart';

class HyperionClient extends ChopperClient {
  HyperionClient(
      {@required String nodeURL,
      Iterable interceptors = const [],
      Converter converter,
      ErrorConverter errorConverter,
      Iterable<ChopperService> services})
      : super(
          baseUrl: nodeURL,
          converter: converter ??
              JsonSerializableConverter({
                GetActionsResponse: GetActionsResponse.fromJsonFactory,
                SimpleAction: SimpleAction.fromJsonFactory,
                TransactionData: TransactionData.fromJsonFactory,
              }),
          errorConverter: errorConverter,
          interceptors: interceptors,
          services: services ??
              [
                ActionsHyperionService.service,
              ],
        );
}
