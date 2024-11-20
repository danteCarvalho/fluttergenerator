import 'dart:ui';

import 'package:latlng/latlng.dart';
import 'package:mobx/mobx.dart';

part 'map_view.g.dart';

class MapView extends _MapViewBase with _$MapView{

}

abstract class _MapViewBase  with Store {
  @observable
  double zoom = 0;
  @observable
  LatLng center = LatLng.degree(0, 0);
  Offset dragStart = const Offset(0, 0);
  double scaleStart = 1.0;
}
  