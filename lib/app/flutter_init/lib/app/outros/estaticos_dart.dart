
void errorTest() {
  print(1 ~/ 0);
}


void uriTest2(Uri uri) {
  uri.scheme;
  uri.path;
  uri.host;
  uri.query;
  uri.authority;
  uri.origin;
  uri.userInfo;
  uri.pathSegments;
  uri.port;
  uri.fragment;
  uri.data;
}