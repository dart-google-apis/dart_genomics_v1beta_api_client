library hop_runner;

import 'package:hop/hop.dart';
import 'package:hop/hop_tasks.dart';

void main(List<String> args) {

  List pathList = [
    'lib/genomics_v1beta_api_browser.dart',
    'lib/genomics_v1beta_api_console.dart',
    'lib/genomics_v1beta_api_client.dart'
  ];

  // TODO(adam): re enable when hop_docgen is available
  // addTask('docs', createDartDocTask(pathList, linkApi: true));

  addTask('analyze', createAnalyzerTask(pathList));

  runHop(args);
}
