MSYS_NO_PATHCONV=1 \
flutter build web --optimization-level=1 \
--base-href="/teste/" \
--dart-define=schemeServidor=https \
--dart-define=ipServidor=feshow-versao1.onrender.com \
--dart-define=portaServidor=443 \
--dart-define=schemeHasura=https \
--dart-define=ipHasura=valid-martin-63.hasura.app   \
--dart-define=portaHasura=443 \
--dart-define=hasuraSource=default \
--dart-define=hasuraSufix="" \
--dart-define=imageStorage=amazon
read -rsn1 -p "Press any key to continue..."