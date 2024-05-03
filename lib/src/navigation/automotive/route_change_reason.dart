import 'dart:ffi' as ffi;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;

part 'route_change_reason.containers.dart';
part 'route_change_reason.impl.dart';

enum RouteChangeReason {
  User,
  Rerouting,
  Finish,
  ;
}
