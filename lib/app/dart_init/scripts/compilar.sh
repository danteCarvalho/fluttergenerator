mkdir build

dart compile exe \
-DschemeHasura=https \
-DipHasura=meet-teal-52.hasura.app \
-DportaHasura=443 \
-DhasuraAdminSecret=evcpWYnP0FqYwy3Hr7eQGlDXMO454PWqg7nLmnLwnQ9iZn72vZ6FmTlkRYXK1sxq \
-DhasuraSource=default \
-DhasuraSufix="" \
-DsslBanco=false \
-DipBanco=agentech.com.br \
-DportaBanco=5432 \
-Dbanco=teste \
-Dusuario=postgres \
-Dsenha=fkd8 \
-DimageStorage=amazon \
-DimageAccessKey=AKIARXTC5FOTVKH4GMFA \
-DimageSecretKey=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 \
-DemailServer=microsoft \
-Demail=myappteste@outlook.com \
-DemailPassword=XWZ%L5dY!!Q9nrg \
lib/main.dart \
-o build/testeServer


