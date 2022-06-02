import 'package:hasura_connect/hasura_connect.dart';

import '../outros/config.dart';

HasuraConnect? hasuraConnect;

HasuraConnect getHasuraConnection() {
  // LocalStorage.databaseDirectory = "hasuraDirectory";
  HasuraConnect? hasuraConnect2 = hasuraConnect;

  if (hasuraConnect2 == null) {
    hasuraConnect2 = HasuraConnect(
        "${config.schemeHasura}://${config.ipHasura}:${config.portaHasura}/v1/graphql",
        headers: {});
    hasuraConnect = hasuraConnect2;
    return hasuraConnect2;
  } else {
    return hasuraConnect2;
  }
}
