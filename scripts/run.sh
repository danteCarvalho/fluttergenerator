initDir=$(pwd)
scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
appDir="$(cd "$scriptDir/.." && pwd)"
cd $appDir
./scripts/gerarArquivos.sh
cd $initDir
dart --no-sound-null-safety "$appDir"/lib/main.dart