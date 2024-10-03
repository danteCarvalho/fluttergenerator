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
-DimageAccessKey=hgVG0yGhI3ELhjU7ZwnRU2LiZWtkxCv90hKbL+IDdyYoe+0Z6/qf2jciVEP1yCu7 \
-DimageSecretKey=/clI8ca/I1M8aUFnH7zt+EM+fKJEDxJ7NMJhCGoneZPexkno8sQEvtjgETV2vggGbGV+6rpbXEK8en2wDbTuCw== \
-DemailServer=microsoft \
-Demail=myappteste@outlook.com \
-DemailPassword=XWZ%L5dY!!Q9nrg \
lib/main.dart \
-o build/testeServer


