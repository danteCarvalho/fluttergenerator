import 'app/outros/estaticos_dart.dart';
import 'app/outros/logger.dart';

main() {
  try {
   errorTest();
  } on Exception catch (e, s) {
    myLog(e, s);
  } catch (e, s) {
    myLog(e, s);
  }
}
