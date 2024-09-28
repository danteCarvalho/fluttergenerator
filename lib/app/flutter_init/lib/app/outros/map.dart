import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:map/map.dart';

import 'map/map_view.dart';

String? getState(Map<String, dynamic> address) {
  String? estado = address["state"] ?? address["state_district"];
  return estado;
}

String? getCity(Map<String, dynamic> address) {
  String? cidade = address["city"]  ?? address["town"] ?? address["village"] ?? address["county"] ?? address["municipality"] ??address["city_district"] ?? address["hamlet"];
  return cidade;
}

double minMaxZoom(double x) {
  double min=3;
  double max= 18;
  if (x < min) x = min;
  if (x > max) x = max;

  return x;
}

void onMapDoubleTap(MapTransformer transformer, Offset position,MapController controller,MapView mapView) {
  final zoom = minMaxZoom(controller.zoom + 1);

  transformer.setZoomInPlace(zoom, position);
  mapView.zoom = zoom;
}

onMapScroll(event, transformer, MapController controller, MapView mapView) {
  if (event is PointerScrollEvent) {
    double valor = event.scrollDelta.dy > 0 ? -0.25 :0.25;

    final zoom = minMaxZoom(controller.zoom + valor);

    transformer.setZoomInPlace(zoom, event.localPosition);
    mapView.zoom = zoom;
  }
}

void onMapDragStart(ScaleStartDetails details, MapView mapView) {
  mapView.dragStart = details.focalPoint;
  mapView.scaleStart = 1.0;
}

void onMapDragUpdate(ScaleUpdateDetails details, MapTransformer transformer, MapController controller, MapView mapView) {
  final scaleDiff = details.scale - mapView.scaleStart;
  mapView.scaleStart = details.scale;

  if (scaleDiff > 0) {
    var zoom = minMaxZoom(controller.zoom + 0.005);
    controller.zoom = zoom;
    mapView.zoom = zoom;
  } else if (scaleDiff < 0) {
    var zoom = minMaxZoom(controller.zoom - 0.005);
    controller.zoom = zoom;
    mapView.zoom = zoom;
  } else {
    final now = details.focalPoint;
    var diff = now - mapView.dragStart;
    mapView.dragStart = now;
    final h = transformer.constraints.maxHeight;

    final vp = transformer.getViewport();
    if (diff.dy < 0 && vp.bottom - diff.dy < h) {
      diff = Offset(diff.dx, 0);
    }

    if (diff.dy > 0 && vp.top - diff.dy > 0) {
      diff = Offset(diff.dx, 0);
    }

    transformer.drag(diff.dx, diff.dy);
    mapView.center = controller.center;
  }
}
