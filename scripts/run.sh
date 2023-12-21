scriptDir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
appDir="$(cd "$scriptDir/.." && pwd)"
dart --no-sound-null-safety "$appDir"/lib/main.dart