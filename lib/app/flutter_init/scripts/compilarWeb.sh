flutter build web --optimization-level=1 \
--dart-define=schemeServidor=https \
--dart-define=ipServidor=dart-app-versao1.onrender.com \
--dart-define=portaServidor=443 \
--dart-define=schemeHasura=https \
--dart-define=ipHasura=meet-teal-52.hasura.app   \
--dart-define=portaHasura=443

netlify deploy --prod --dir build/web/