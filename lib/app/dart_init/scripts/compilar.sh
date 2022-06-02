dart compile exe -DschemeHasura=https -DipHasura=mytestedb.herokuapp.com -DportaHasura=443 -DsslBanco=true -DipBanco=ec2-54-80-123-146.compute-1.amazonaws.com -Dbanco=df8oksd1jv1ee2 -Dusuario=ziloszxevunijl -Dsenha=214a138b0acda11afa18648cb5e2afd5c17f58b9c6cb09afd57f7dc947168797  lib/main.dart -o build/testeServer.sh

git -C build/ add .

git -C build/ commit -m "teste"

git -C build/ push
