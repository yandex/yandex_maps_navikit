import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_navikit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_navikit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_navikit/src/mapkit/animation.dart'
    as mapkit_animation;
import 'package:yandex_maps_navikit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_navikit/src/mapkit/screen_types.dart'
    as mapkit_screen_types;

part 'camera.containers.dart';
part 'camera.impl.dart';

enum CameraMode {
  /// Camera follow position.
  Following,

  /// Free camera mode.
  Free,

  /// Camera showing all routes.
  Overview,

  /// Indoor mode. It is supported only in transport navigation
  Indoor,
  ;
}

abstract class CameraListener {
  void onCameraModeChanged();
}

/// Camera tracks location, user input and provide new CameraPosition for
/// map.
abstract class Camera implements ffi.Finalizable {
  /// If enabled, camera will automatically switch between modes:
  /// <ul><li>Camera will become into 'Following' mode if current route in
  /// navigation selected or current speed is greater than: 10 km/h for
  /// auto and 5 km/h for pedestrian navigations.</li> <li>Camera will
  /// become into 'Following' mode from 'Overview' mode on guidance
  /// start.</li> <li>Camera will become into 'Overview' when routes
  /// requested, but current route does not selected yet.</li> <li>Camera
  /// will become into 'Free' mode from 'Following' mode on any external
  /// move (gesture / call `map.move`)</li> <li>Camera will become into
  /// 'Following' mode from 'Free' mode if requirements from (1) satisfied
  /// and there are no any camera moving activity for 10 seconds</li></ul>
  ///
  /// <li>Camera will become into 'Indoor' mode from 'Following'/'Free'
  /// modes during active pedestrian guidance when user enters at
  /// indoor</li> Enabled by default.
  core.bool get switchModesAutomatically;
  set switchModesAutomatically(core.bool val);

  /// The class does not retain the object in the 'cameraListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addListener(CameraListener cameraListener);

  void removeListener(CameraListener cameraListener);

  /// Set autozoom in 'Following' camera mode. `animation` parameter
  /// ignored if camera currently not in the 'Following' mode. Enabled by
  /// default.
  void setAutoZoom({
    required core.bool enabled,
    mapkit_animation.Animation? animation,
  });

  /// Set autorotation in 'Following' camera mode. If disabled, the map
  /// will be rotated so that the north is on top. `animation` parameter
  /// ignored if camera currently not in the 'Following' mode. Enabled by
  /// default.
  void setAutoRotation({
    required core.bool enabled,
    mapkit_animation.Animation? animation,
  });

  /// Add `offset` value to zoom in following mode. 0.0 by default.
  void setFollowingModeZoomOffset({
    required core.double offset,
    mapkit_animation.Animation? animation,
  });

  /// Defines area, where all routes should be shown in 'Overview' mode. If
  /// `overviewRect` is null, mapWindow.focusRect used.
  void setOverviewRect({
    mapkit_screen_types.ScreenRect? rect,
    mapkit_animation.Animation? animation,
  });

  /// Given points will be visible when camera switches to 'Overview' mode.
  /// It is useful when you draw some extra info on the map out of routes.
  void setExtraOverviewPoints(core.List<mapkit_geometry_point.Point>? points);

  CameraMode cameraMode();

  void setCameraMode(
    CameraMode mode, {
    mapkit_animation.Animation? animation,
  });

  core.bool isValid();
}
