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
import 'package:yandex_maps_navikit/src/directions/driving/route.dart'
    as directions_driving_route;
import 'package:yandex_maps_navikit/src/mapkit/map/map_window.dart'
    as mapkit_map_map_window;
import 'package:yandex_maps_navikit/src/mapkit/road_events_layer/road_events_layer.dart'
    as mapkit_road_events_layer_road_events_layer;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/balloon_view_listener.dart'
    as navigation_automotive_layer_balloon_view_listener;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/request_point_listener.dart'
    as navigation_automotive_layer_request_point_listener;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/route_view.dart'
    as navigation_automotive_layer_route_view;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/styling/style_provider.dart'
    as navigation_automotive_layer_styling_style_provider;
import 'package:yandex_maps_navikit/src/navigation/automotive/navigation.dart'
    as navigation_automotive_navigation;
import 'package:yandex_maps_navikit/src/navigation/guidance_camera/camera.dart'
    as navigation_guidance_camera_camera;

part 'navigation_layer.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'RoutesSource.toPointer',
    toPlatform: '(val) => RoutesSource.fromPointer(val, needFree: false)')
enum RoutesSource {
  Navigation,
  Guidance,
  ;

  /// @nodoc
  @internal
  static RoutesSource fromInt(core.int val) {
    return RoutesSource.values[val];
  }

  /// @nodoc
  @internal
  static core.int toInt(RoutesSource e) {
    return e.index;
  }

  /// @nodoc
  @internal
  static RoutesSource? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(RoutesSource? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
class _NavigationLayerListenerWrapper implements ffi.Finalizable {
  _NavigationLayerListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_NavigationLayerListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

abstract class NavigationLayerListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<NavigationLayerListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<NavigationLayerListener,
      _NavigationLayerListenerWrapper?>();

  void onSelectedRouteChanged();
  void onRoutesSourceChanged();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(NavigationLayerListener obj) {
    final ptr = _NavigationLayerListener_new(
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _NavigationLayerListener_onSelectedRouteChanged),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _NavigationLayerListener_onRoutesSourceChanged));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _NavigationLayerListenerWrapper(ptr);
    _NavigationLayerListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(NavigationLayerListener? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _NavigationLayerListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayerListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)
    _NavigationLayerListener_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<
                        ffi
                        .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_navigation_automotive_layer_NavigationLayerListener_new')
        .asFunction(isLeaf: true);

final _NavigationLayerListener_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_navigation_automotive_layer_NavigationLayerListener_free');
void _NavigationLayerListener_onSelectedRouteChanged(
    ffi.Pointer<ffi.Void> _ptr) {
  final listener = NavigationLayerListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onSelectedRouteChanged();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationLayerListener_onRoutesSourceChanged(
    ffi.Pointer<ffi.Void> _ptr) {
  final listener = NavigationLayerListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRoutesSourceChanged();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

@bindings_annotations
    .WeakInterface('navigation.automotive.layer.NavigationLayer')
@bindings_annotations.ContainerData(
    toNative: 'NavigationLayer.getNativePtr',
    toPlatform:
        '(val) => NavigationLayer.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class NavigationLayer implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_NavigationLayer_free.cast());

  /// @nodoc
  NavigationLayer.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  NavigationLayer.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory NavigationLayer.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(NavigationLayer? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _NavigationLayer_check(ptr);
  }

  @internal

  /// @nodoc
  static NavigationLayer? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return NavigationLayer.fromNativePtr(ptr);
  }

  navigation_automotive_navigation.Navigation get navigation {
    return navigation_automotive_navigation.Navigation.fromNativePtr(
        _NavigationLayer_get_navigation(ptr));
  }

  navigation_guidance_camera_camera.Camera get camera {
    return navigation_guidance_camera_camera.Camera.fromNativePtr(
        _NavigationLayer_get_camera(ptr));
  }

  /// Current view mode
  RoutesSource get routesSource {
    return RoutesSource.fromInt(_NavigationLayer_get_routesSource(ptr));
  }

  /// Routes representation on the map.
  core.List<navigation_automotive_layer_route_view.RouteView> get routes {
    return navigation_automotive_layer_route_view.RouteViewContainerExtension
        .toPlatformVector(_NavigationLayer_get_routes(ptr));
  }

  /// Enabled by default.
  core.bool get showRequestPoints {
    return _NavigationLayer_get_showRequestPoints(ptr);
  }

  set showRequestPoints(core.bool val) {
    return _NavigationLayer_set_showRequestPoints(ptr, val);
  }

  core.bool get isVisible {
    return _NavigationLayer_get_isVisible(ptr);
  }

  set isVisible(core.bool val) {
    return _NavigationLayer_set_isVisible(ptr, val);
  }

  /// Find appearance of route.
  navigation_automotive_layer_route_view.RouteView? getView(
      directions_driving_route.DrivingRoute route) {
    return navigation_automotive_layer_route_view.RouteView.fromOptionalPtr(
        _NavigationLayer_getView(
            ptr, directions_driving_route.DrivingRoute.getNativePtr(route)));
  }

  /// NavigationLayer will try to show as much info as possible about
  /// selected route. For example if road event placemarks from different
  /// routes overlap, road event from selected route will be displayed,
  /// conflict will be hidden. None or one route can be selected at the
  /// same time. Pass nil/null to unselect route.
  void selectRoute(navigation_automotive_layer_route_view.RouteView? route) {
    _NavigationLayer_selectRoute(ptr,
        navigation_automotive_layer_route_view.RouteView.getNativePtr(route));
  }

  navigation_automotive_layer_route_view.RouteView? selectedRoute() {
    return navigation_automotive_layer_route_view.RouteView.fromOptionalPtr(
        _NavigationLayer_selectedRoute(ptr));
  }

  /// Add this listener if you wish to handle taps on routes.
  ///
  /// The class does not retain the object in the 'routeViewListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addRouteViewListener(
      navigation_automotive_layer_route_view.RouteViewListener
          routeViewListener) {
    _NavigationLayer_addRouteViewListener(
        ptr,
        navigation_automotive_layer_route_view.RouteViewListener.getNativePtr(
            routeViewListener));
  }

  void removeRouteViewListener(
      navigation_automotive_layer_route_view.RouteViewListener
          routeViewListener) {
    _NavigationLayer_removeRouteViewListener(
        ptr,
        navigation_automotive_layer_route_view.RouteViewListener.getNativePtr(
            routeViewListener));
  }

  /// Selects a request point with specified index. Only one point can be
  /// selected at a time. If some other point is selected already, it will
  /// be deselected.
  void selectRequestPoint(core.int requestPointIndex) {
    _NavigationLayer_selectRequestPoint(ptr, requestPointIndex);
  }

  /// Deselects selected request point if any.
  void deselectRequestPoint() {
    _NavigationLayer_deselectRequestPoint(ptr);
  }

  /// Add this listener if you wish to handle taps on request points.
  ///
  /// The class does not retain the object in the 'requestPointListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addRequestPointListener(
      navigation_automotive_layer_request_point_listener.RequestPointListener
          requestPointListener) {
    _NavigationLayer_addRequestPointListener(
        ptr,
        navigation_automotive_layer_request_point_listener.RequestPointListener
            .getNativePtr(requestPointListener));
  }

  void removeRequestPointListener(
      navigation_automotive_layer_request_point_listener.RequestPointListener
          requestPointListener) {
    _NavigationLayer_removeRequestPointListener(
        ptr,
        navigation_automotive_layer_request_point_listener.RequestPointListener
            .getNativePtr(requestPointListener));
  }

  /// The class does not retain the object in the 'balloonListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addBalloonViewListener(
      navigation_automotive_layer_balloon_view_listener.BalloonViewListener
          balloonListener) {
    _NavigationLayer_addBalloonViewListener(
        ptr,
        navigation_automotive_layer_balloon_view_listener.BalloonViewListener
            .getNativePtr(balloonListener));
  }

  void removeBalloonViewListener(
      navigation_automotive_layer_balloon_view_listener.BalloonViewListener
          balloonListener) {
    _NavigationLayer_removeBalloonViewListener(
        ptr,
        navigation_automotive_layer_balloon_view_listener.BalloonViewListener
            .getNativePtr(balloonListener));
  }

  /// The class does not retain the object in the 'navigationLayerListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addListener(NavigationLayerListener navigationLayerListener) {
    _NavigationLayer_addListener(
        ptr, NavigationLayerListener.getNativePtr(navigationLayerListener));
  }

  void removeListener(NavigationLayerListener navigationLayerListener) {
    _NavigationLayer_removeListener(
        ptr, NavigationLayerListener.getNativePtr(navigationLayerListener));
  }

  /// Removes layer from map. No further operations with layer should be
  /// performed.
  void removeFromMap() {
    _NavigationLayer_removeFromMap(ptr);
  }

  /// for debug usage only
  void setShowBalloonsGeometry(core.bool enabled) {
    _NavigationLayer_setShowBalloonsGeometry(ptr, enabled);
  }

  /// Force refresh style for all navigation layer objects.
  void refreshStyle() {
    _NavigationLayer_refreshStyle(ptr);
  }

  /// When in 2D mode: - map is switched to 2D mode - 'Free' and
  /// 'Following' camera modes have zero tilt - tilt changing gestures are
  /// disabled
  ///
  /// Disabled by default
  core.bool is2DMode() {
    return _NavigationLayer_is2DMode(ptr);
  }

  void set2DMode(core.bool enabled) {
    _NavigationLayer_set2DMode(ptr, enabled);
  }
}

final _NavigationLayer_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _NavigationLayer_check = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_check')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_get_navigation = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_get_navigation')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_get_camera = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_get_camera')
    .asFunction();

final core.int Function(
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_get_routesSource = lib.library
    .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_get_routesSource')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_get_routes = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_get_routes')
    .asFunction();

final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_get_showRequestPoints = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_get_showRequestPoints')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _NavigationLayer_set_showRequestPoints = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_set_showRequestPoints')
    .asFunction();

final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_get_isVisible = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_get_isVisible')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _NavigationLayer_set_isVisible = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_set_isVisible')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_getView = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_getView')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_selectRoute = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_selectRoute')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_selectedRoute = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_selectedRoute')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_addRouteViewListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_addRouteViewListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_removeRouteViewListener = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_removeRouteViewListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _NavigationLayer_selectRequestPoint = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Uint32)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_selectRequestPoint')
    .asFunction();
final void Function(
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_deselectRequestPoint = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_deselectRequestPoint')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_addRequestPointListener = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_addRequestPointListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_removeRequestPointListener = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_removeRequestPointListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_addBalloonViewListener = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_addBalloonViewListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_removeBalloonViewListener = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_removeBalloonViewListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_addListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_addListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_removeListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_removeListener')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _NavigationLayer_removeFromMap = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_removeFromMap')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _NavigationLayer_setShowBalloonsGeometry = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_setShowBalloonsGeometry')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _NavigationLayer_refreshStyle = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_refreshStyle')
    .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>) _NavigationLayer_is2DMode = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_is2DMode')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _NavigationLayer_set2DMode = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_set2DMode')
    .asFunction();

class NavigationLayerFactory {
  NavigationLayerFactory._();

  /// Adds navigation layer on the map.
  ///
  /// The class maintains a strong reference to the object in
  /// the 'styleProvider' parameter until it (the class) is invalidated.
  static NavigationLayer createNavigationLayer(
      mapkit_map_map_window.MapWindow mapWindow,
      mapkit_road_events_layer_road_events_layer.RoadEventsLayer
          roadEventsLayer,
      navigation_automotive_layer_styling_style_provider.NavigationStyleProvider
          styleProvider,
      navigation_automotive_navigation.Navigation navigation) {
    return NavigationLayer.fromNativePtr(
        _NavigationLayerFactory_createNavigationLayer(
            mapkit_map_map_window.MapWindow.getNativePtr(mapWindow),
            mapkit_road_events_layer_road_events_layer.RoadEventsLayer
                .getNativePtr(roadEventsLayer),
            navigation_automotive_layer_styling_style_provider
                .NavigationStyleProvider.getNativePtr(styleProvider),
            navigation_automotive_navigation.Navigation.getNativePtr(
                navigation)));
  }
}

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayerFactory_createNavigationLayer = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayerFactory_createNavigationLayer')
    .asFunction();
