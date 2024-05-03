import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:yandex_maps_navikit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_navikit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_navikit/src/bindings/weak_map/weak_map.dart'
    as weak_map;

part 'request_point_listener.impl.dart';

abstract class RequestPointListener {
  void onRequestPointsChanged();

  void onRequestPointTap(core.int requestPointIndex);
}
