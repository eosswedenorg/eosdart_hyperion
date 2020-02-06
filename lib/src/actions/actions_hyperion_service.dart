import 'package:chopper/chopper.dart';
import 'package:meta/meta.dart';

import '../hyperion_paths.dart' as path;

part 'actions_hyperion_service.chopper.dart';

@ChopperApi(baseUrl: '/v2')
abstract class ActionsHyperionService extends ChopperService {
  static const _headerKeyAccept = 'accept';
  static const _headerValueJson = 'application/json';

  /// Get actions for an [account].
  ///
  /// This endpoint accepts generic filters based on indexed fields,
  /// (e.g. act.authorization.actor=eosio or act.name=delegatebw),
  /// if included they will be combined with a AND operator.
  ///
  /// see http://api.eossweden.org/v2/docs/index.html#/actions/get_v2_history_get_actions
  /// for more information about the filters.
  @Get(
    path: path.getActions,
  )
  Future<Response> getActions({
    @Query() @required String account,
    @Query() String track,
    @Query() String filter,
    @Query() int skip,
    @Query() int limit,
    @Query() String sort,
    @Query() String after,
    @Query() String before,
    @Query() bool simple,
  });

  static ActionsHyperionService create({@required String baseUrl}) {
    final client = ChopperClient(
      baseUrl: baseUrl,
      interceptors: [
        HttpLoggingInterceptor(),
        HeadersInterceptor({_headerKeyAccept: _headerValueJson}),
      ],
      services: [
        _$ActionsHyperionService(),
      ],
      converter: JsonConverter(),
    );
    return _$ActionsHyperionService(client);
  }
}


