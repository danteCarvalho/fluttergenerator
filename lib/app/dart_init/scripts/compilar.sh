mkdir build

dart compile exe \
-DschemeHasura=https \
-DipHasura=meet-teal-52.hasura.app \
-DportaHasura=443 \
-DhasuraAdminSecret=WKwUybm6bzkW3MuSsCJgiF0NToiwHAVoCHw2RLPGGY1BSM5g7msdC6cvEds0STwL \
-DsslBanco=true \
-DipBanco=ep-aged-poetry-a6uj2hdx.us-west-2.aws.neon.tech \
-DportaBanco=5432 \
-Dbanco=neondb \
-Dusuario=neondb_owner \
-Dsenha=OX4Vs6GQpDJz \
lib/main.dart \
-o build/testeServer


