flutter build web --dart-define=schemeServidor=https --dart-define=schemeHasura=https --dart-define=ipServidor=mytesteserver.herokuapp.com --dart-define=ipHasura=mytestedb.herokuapp.com --dart-define=portaServidor=443 --dart-define=portaHasura=443

netlify deploy --prod --dir build/web/