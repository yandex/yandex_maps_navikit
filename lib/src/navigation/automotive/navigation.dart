import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'dart:typed_data' as typed_data;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_navikit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_navikit/src/bindings/common/native_types.dart'
    as native_types;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_navikit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_navikit/src/directions/driving/driving_router.dart'
    as directions_driving_driving_router;
import 'package:yandex_maps_navikit/src/directions/driving/route.dart'
    as directions_driving_route;
import 'package:yandex_maps_navikit/src/directions/driving/vehicle_options.dart'
    as directions_driving_vehicle_options;
import 'package:yandex_maps_navikit/src/mapkit/annotations/annotation_lang.dart'
    as mapkit_annotations_annotation_lang;
import 'package:yandex_maps_navikit/src/mapkit/geometry/geometry.dart'
    as mapkit_geometry_geometry;
import 'package:yandex_maps_navikit/src/mapkit/request_point.dart'
    as mapkit_request_point;
import 'package:yandex_maps_navikit/src/navigation/automotive/guidance.dart'
    as navigation_automotive_guidance;
import 'package:yandex_maps_navikit/src/runtime/error.dart' as runtime_error;

part 'navigation.containers.dart';

/// @nodoc
class _NavigationListenerWrapper implements ffi.Finalizable {
  _NavigationListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_NavigationListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

abstract class NavigationListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<NavigationListener>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<NavigationListener, _NavigationListenerWrapper?>();

  void onRoutesRequested(core.List<mapkit_request_point.RequestPoint> points);

  /// Calls when a user requested alternatives for the current route. After
  /// this callback Navigation will have the current route and fastest
  /// alternative route (if available) in Navigation.routes()
  void onAlternativesRequested(
      directions_driving_route.DrivingRoute currentRoute);
  void onUriResolvingRequested(core.String uri);

  /// Calls when routes, alternatives, or URI request succeeds After
  /// alternatives request Navigation.routes() will have current route and
  /// fastest alternative for the request moment along with received
  /// alternatives.
  void onRoutesBuilt();

  /// Will be called when an error occurs during routes, alternatives or
  /// uri request
  void onRoutesRequestError(runtime_error.Error error);
  void onResetRoutes();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(NavigationListener obj) {
    final ptr = _NavigationListener_new(
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
            _NavigationListener_onRoutesRequested),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
            _NavigationListener_onAlternativesRequested),
        ffi.Pointer.fromFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, native_types.NativeString)>(
            _NavigationListener_onUriResolvingRequested),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _NavigationListener_onRoutesBuilt),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
            _NavigationListener_onRoutesRequestError),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _NavigationListener_onResetRoutes));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _NavigationListenerWrapper(ptr);
    _NavigationListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(NavigationListener? obj) {
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
        .int) _NavigationListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_NavigationListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, native_types.NativeString)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)
    _NavigationListener_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Void Function(
                                ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, native_types.NativeString)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_navigation_automotive_NavigationListener_new')
        .asFunction(isLeaf: true);

final _NavigationListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationListener_free');
void _NavigationListener_onRoutesRequested(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> points) {
  final listener = NavigationListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRoutesRequested(
        mapkit_request_point.RequestPointContainerExtension.toPlatformVector(
            points));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationListener_onAlternativesRequested(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> currentRoute) {
  final listener = NavigationListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onAlternativesRequested(
        directions_driving_route.DrivingRoute.fromNativePtr(currentRoute));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationListener_onUriResolvingRequested(
    ffi.Pointer<ffi.Void> _ptr, native_types.NativeString uri) {
  final listener = NavigationListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onUriResolvingRequested(to_platform.toPlatformString(uri));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationListener_onRoutesBuilt(ffi.Pointer<ffi.Void> _ptr) {
  final listener = NavigationListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRoutesBuilt();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationListener_onRoutesRequestError(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> error) {
  final listener = NavigationListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRoutesRequestError(runtime_error.Error.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationListener_onResetRoutes(ffi.Pointer<ffi.Void> _ptr) {
  final listener = NavigationListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onResetRoutes();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

@bindings_annotations.ContainerData(
    toNative: 'Navigation.getNativePtr',
    toPlatform:
        '(val) => Navigation.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class Navigation implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_Navigation_free.cast());

  /// @nodoc
  Navigation.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  Navigation.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(Navigation? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static Navigation? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return Navigation.fromNativePtr(ptr);
  }

  /// Changing this option may trigger reroute.
  directions_driving_vehicle_options.DrivingVehicleOptions get vehicleOptions {
    return directions_driving_vehicle_options.DrivingVehicleOptions.fromNative(
        _Navigation_get_vehicleOptions(ptr));
  }

  set vehicleOptions(
      directions_driving_vehicle_options.DrivingVehicleOptions val) {
    return _Navigation_set_vehicleOptions(ptr,
        directions_driving_vehicle_options.DrivingVehicleOptions.toNative(val));
  }

  /// The 'avoidTolls/avoidUnpaved/avoidPoorConditions' option instructs
  /// the router to return routes that avoid tolls/unpaved/roads in poor
  /// condition when possible. Changing these options may trigger reroute.
  /// All disabled by default.
  core.bool get avoidTolls {
    return _Navigation_get_avoidTolls(ptr);
  }

  set avoidTolls(core.bool val) {
    return _Navigation_set_avoidTolls(ptr, val);
  }

  core.bool get avoidUnpaved {
    return _Navigation_get_avoidUnpaved(ptr);
  }

  set avoidUnpaved(core.bool val) {
    return _Navigation_set_avoidUnpaved(ptr, val);
  }

  core.bool get avoidPoorConditions {
    return _Navigation_get_avoidPoorConditions(ptr);
  }

  set avoidPoorConditions(core.bool val) {
    return _Navigation_set_avoidPoorConditions(ptr, val);
  }

  /// avoidedZones instructs the router to return routes that avoid
  /// provided polygons. If there are too many polygons or too complex
  /// polygon geometry, routes building may become impossible. In this case
  /// the error
  /// [directions_driving_driving_router.DrivingTooComplexAvoidedZonesError]
  /// will be returned. Changing this option may trigger reroute.
  core.List<mapkit_geometry_geometry.LinearRing> get avoidedZones {
    return mapkit_geometry_geometry.LinearRingContainerExtension
        .toPlatformVector(_Navigation_get_avoidedZones(ptr));
  }

  set avoidedZones(core.List<mapkit_geometry_geometry.LinearRing> val) {
    return _Navigation_set_avoidedZones(
        ptr,
        mapkit_geometry_geometry.LinearRingContainerExtension.toNativeVector(
            val));
  }

  /// Set the annotation language. Changing this option may trigger
  /// reroute.
  mapkit_annotations_annotation_lang.AnnotationLanguage get annotationLanguage {
    return mapkit_annotations_annotation_lang.AnnotationLanguage.fromInt(
        _Navigation_get_annotationLanguage(ptr));
  }

  set annotationLanguage(
      mapkit_annotations_annotation_lang.AnnotationLanguage val) {
    return _Navigation_set_annotationLanguage(
        ptr, mapkit_annotations_annotation_lang.AnnotationLanguage.toInt(val));
  }

  /// Resulting routes for the previous request. For requestAlternatives()
  /// it will contain the current route and fastest alternative route (if
  /// available) along with the received alternatives. Current route always
  /// will be the first one and fastest alternative will be the second.
  core.List<directions_driving_route.DrivingRoute> get routes {
    return directions_driving_route.DrivingRouteContainerExtension
        .toPlatformVector(_Navigation_get_routes(ptr));
  }

  navigation_automotive_guidance.Guidance get guidance {
    return navigation_automotive_guidance.Guidance.fromNativePtr(
        _Navigation_get_guidance(ptr));
  }

  /// Request routes for further guidance. If there was a pending routing
  /// request, it will be canceled.
  void requestRoutes({
    required core.List<mapkit_request_point.RequestPoint> points,
    core.double? initialAzimuth,
    core.int? routesCount,
  }) {
    _Navigation_requestRoutes(
        ptr,
        mapkit_request_point.RequestPointContainerExtension.toNativeVector(
            points),
        to_native.toNativePtrDouble(initialAzimuth),
        to_native.toNativePtrInt(routesCount));
  }

  /// Request global alternatives for the current route. If there was a
  /// pending routing request, it will be canceled.
  void requestAlternatives() {
    _Navigation_requestAlternatives(ptr);
  }

  /// Resolve saved driving route URI for further guidance. If there was a
  /// pending routing request, it will be canceled.
  void resolveUri(core.String uri) {
    _Navigation_resolveUri(ptr, to_native.toNativeString(uri));
  }

  /// Cancel active routing request.
  void cancelRequest() {
    _Navigation_cancelRequest(ptr);
  }

  /// Cancel active routing request and clear routes vector.
  void resetRoutes() {
    _Navigation_resetRoutes(ptr);
  }

  /// The class does not retain the object in the 'navigationListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addListener(NavigationListener navigationListener) {
    _Navigation_addListener(
        ptr, NavigationListener.getNativePtr(navigationListener));
  }

  void removeListener(NavigationListener navigationListener) {
    _Navigation_removeListener(
        ptr, NavigationListener.getNativePtr(navigationListener));
  }

  /// Start guidance with given route. This method will reset active
  /// current route if any. It only accepts either routes obtained from
  /// this `routes` field or `null`, which means freedrive session started.
  void startGuidance(directions_driving_route.DrivingRoute? route) {
    _Navigation_startGuidance(
        ptr, directions_driving_route.DrivingRoute.getNativePtr(route));
  }

  /// Stops current guidance session. Call this method only if guidance has
  /// completely ended. For example, if you need to start another type of
  /// guidance (pedestrian for example) stop this first and than start
  /// another one. In case of route finished but you still on the road you
  /// must use `startGuidance(null)` instead.
  void stopGuidance() {
    _Navigation_stopGuidance(ptr);
  }

  /// Stop tracking user position, later it could be resumed without losing
  /// current route. Useful when user don't want guidance in background.
  void suspend() {
    _Navigation_suspend(ptr);
  }

  /// Resumes suspended guidance. Guide will continue to guide the previous
  /// route or rebuild it. Useful when user don't want guidance in
  /// background.
  void resume() {
    _Navigation_resume(ptr);
  }
}

final _Navigation_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Navigation_free');

final directions_driving_vehicle_options.DrivingVehicleOptionsNative Function(
    ffi
        .Pointer<ffi.Void>) _Navigation_get_vehicleOptions = lib.library
    .lookup<
            ffi.NativeFunction<
                directions_driving_vehicle_options.DrivingVehicleOptionsNative
                    Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Navigation_get_vehicleOptions')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    directions_driving_vehicle_options
        .DrivingVehicleOptionsNative) _Navigation_set_vehicleOptions = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>,
                    directions_driving_vehicle_options
                        .DrivingVehicleOptionsNative)>>(
        'yandex_flutter_navigation_automotive_Navigation_set_vehicleOptions')
    .asFunction();

final core.bool Function(ffi.Pointer<ffi.Void>) _Navigation_get_avoidTolls = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Navigation_get_avoidTolls')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.bool)
    _Navigation_set_avoidTolls = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
            'yandex_flutter_navigation_automotive_Navigation_set_avoidTolls')
        .asFunction();

final core.bool Function(ffi.Pointer<ffi.Void>) _Navigation_get_avoidUnpaved =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Navigation_get_avoidUnpaved')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.bool)
    _Navigation_set_avoidUnpaved = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
            'yandex_flutter_navigation_automotive_Navigation_set_avoidUnpaved')
        .asFunction();

final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _Navigation_get_avoidPoorConditions = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Navigation_get_avoidPoorConditions')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _Navigation_set_avoidPoorConditions = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_Navigation_set_avoidPoorConditions')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Navigation_get_avoidedZones = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Navigation_get_avoidedZones')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Navigation_set_avoidedZones = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Navigation_set_avoidedZones')
        .asFunction();

final core.int Function(
    ffi
        .Pointer<ffi.Void>) _Navigation_get_annotationLanguage = lib.library
    .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Navigation_get_annotationLanguage')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _Navigation_set_annotationLanguage = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_Navigation_set_annotationLanguage')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Navigation_get_routes = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Navigation_get_routes')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Navigation_get_guidance = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Navigation_get_guidance')
        .asFunction();

final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Navigation_requestRoutes = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Navigation_requestRoutes')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Navigation_requestAlternatives = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Navigation_requestAlternatives')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, native_types.NativeString)
    _Navigation_resolveUri = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, native_types.NativeString)>>(
            'yandex_flutter_navigation_automotive_Navigation_resolveUri')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Navigation_cancelRequest = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Navigation_cancelRequest')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Navigation_resetRoutes = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Navigation_resetRoutes')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Navigation_addListener = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Navigation_addListener')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Navigation_removeListener = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Navigation_removeListener')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Navigation_startGuidance = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Navigation_startGuidance')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Navigation_stopGuidance = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Navigation_stopGuidance')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Navigation_suspend = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Navigation_suspend')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Navigation_resume = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Navigation_resume')
    .asFunction();

class NavigationFactory {
  NavigationFactory._();

  /// Creates navigation engine with given options. Each call returns new
  /// independent instance of Navigation. Navigation will be in the
  /// suspended mode.
  static Navigation createNavigation(
      directions_driving_driving_router.DrivingRouterType type) {
    return Navigation.fromNativePtr(_NavigationFactory_createNavigation(
        directions_driving_driving_router.DrivingRouterType.toInt(type)));
  }
}

final ffi.Pointer<ffi.Void> Function(
    core
        .int) _NavigationFactory_createNavigation = lib.library
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_NavigationFactory_createNavigation')
    .asFunction();

class NavigationSerialization {
  NavigationSerialization._();

  /// Serializes a given instance of Navigation.
  static typed_data.ByteBuffer serialize(Navigation navigation) {
    return to_platform.toPlatformBytes(_NavigationSerialization_serialize(
        Navigation.getNativePtr(navigation)));
  }

  /// Deserializes a given instance of Navigation. Navigation will be in
  /// the suspended mode. Returns null if deserialization failed.
  static Navigation? deserialize(typed_data.ByteBuffer serializedNavigation) {
    return Navigation.fromOptionalPtr(_NavigationSerialization_deserialize(
        to_native.toNativeBytes(serializedNavigation)));
  }
}

final native_types.NativeBytes Function(
    ffi
        .Pointer<ffi.Void>) _NavigationSerialization_serialize = lib.library
    .lookup<
            ffi.NativeFunction<
                native_types.NativeBytes Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationSerialization_serialize')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
    native_types
        .NativeBytes) _NavigationSerialization_deserialize = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(native_types.NativeBytes)>>(
        'yandex_flutter_navigation_automotive_NavigationSerialization_deserialize')
    .asFunction();
