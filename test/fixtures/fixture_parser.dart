import 'dart:io';

String fixture(String name) {
  var dir = Directory.current.path;
  if (dir.endsWith('/test')) {
    dir = dir.replaceAll('/test', '');
  }
  return File('$dir/test/fixtures/$name').readAsStringSync();
}

const String getSimpleActionsResponse = 'get_simple_actions_response.json';
const String simpleActionResponse = 'simple_action_response.json';
const String transactionDataResponse = 'transaction_data_response.json';
