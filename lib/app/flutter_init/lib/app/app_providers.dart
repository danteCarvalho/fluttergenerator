import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'app_store.dart';
import 'widgets/menu_lateral/menu_lateral_store.dart';

List<SingleChildWidget> providers = [
  Provider<AppStore>(create: (_) => AppStore()),
  Provider<MenuLateralStore>(create: (_) => MenuLateralStore()),
];
