// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'actions_hyperion_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ActionsHyperionService extends ActionsHyperionService {
  _$ActionsHyperionService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = ActionsHyperionService;

  @override
  Future<Response> getActions(
      {String account,
      String track,
      String filter,
      int skip,
      int limit,
      String sort,
      String after,
      String before,
      bool simple}) {
    final $url = '/v2/history/get_actions';
    final $params = <String, dynamic>{
      'account': account,
      'track': track,
      'filter': filter,
      'skip': skip,
      'limit': limit,
      'sort': sort,
      'after': after,
      'before': before,
      'simple': simple
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }
}
