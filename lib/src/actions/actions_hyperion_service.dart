import 'package:chopper/chopper.dart';
import 'package:eosdart_hyperion/eosdart_hyperion.dart';
import 'package:eosdart_hyperion/src/dtos/get_actions_response.dart';
import 'package:eosdart_hyperion/src/hyperion_client.dart';
import 'package:meta/meta.dart';

import '../hyperion_paths.dart' as path;

part 'actions_hyperion_service.chopper.dart';

@ChopperApi(baseUrl: '/v2')
abstract class ActionsHyperionService extends ChopperService {
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
  Future<Response<GetActionsResponse>> getActions({
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

  static ActionsHyperionService service = _$ActionsHyperionService();

  static ActionsHyperionService create({@required HyperionClient client}) =>
      _$ActionsHyperionService(client);
}
