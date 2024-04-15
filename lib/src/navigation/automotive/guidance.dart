import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_navikit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_navikit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_navikit/src/directions/driving/route.dart'
    as directions_driving_route;
import 'package:yandex_maps_navikit/src/mapkit/localized_value.dart'
    as mapkit_localized_value;
import 'package:yandex_maps_navikit/src/mapkit/location/location.dart'
    as mapkit_location_location;
import 'package:yandex_maps_navikit/src/navigation/automotive/alternative.dart'
    as navigation_automotive_alternative;
import 'package:yandex_maps_navikit/src/navigation/automotive/annotator.dart'
    as navigation_automotive_annotator;
import 'package:yandex_maps_navikit/src/navigation/automotive/location_class.dart'
    as navigation_automotive_location_class;
import 'package:yandex_maps_navikit/src/navigation/automotive/route_change_reason.dart'
    as navigation_automotive_route_change_reason;
import 'package:yandex_maps_navikit/src/navigation/automotive/route_status.dart'
    as navigation_automotive_route_status;
import 'package:yandex_maps_navikit/src/navigation/automotive/speed_limit_status.dart'
    as navigation_automotive_speed_limit_status;
import 'package:yandex_maps_navikit/src/navigation/automotive/speed_limits_policy.dart'
    as navigation_automotive_speed_limits_policy;
import 'package:yandex_maps_navikit/src/navigation/automotive/windshield.dart'
    as navigation_automotive_windshield;

part 'guidance.containers.dart';

/// @nodoc
class _GuidanceListenerWrapper implements ffi.Finalizable {
  _GuidanceListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer = ffi.NativeFinalizer(_GuidanceListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

abstract class GuidanceListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<GuidanceListener>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<GuidanceListener, _GuidanceListenerWrapper?>();

  void onLocationChanged();
  void onCurrentRouteChanged(
      navigation_automotive_route_change_reason.RouteChangeReason reason);
  void onRouteLost();
  void onReturnedToRoute();
  void onRouteFinished();
  void onWayPointReached();
  void onStandingStatusChanged();
  void onRoadNameChanged();
  void onSpeedLimitUpdated();
  void onSpeedLimitStatusUpdated();
  void onAlternativesChanged();
  void onFastestAlternativeChanged();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(GuidanceListener obj) {
    final ptr = _GuidanceListener_new(
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _GuidanceListener_onLocationChanged),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>(
            _GuidanceListener_onCurrentRouteChanged),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _GuidanceListener_onRouteLost),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _GuidanceListener_onReturnedToRoute),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _GuidanceListener_onRouteFinished),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _GuidanceListener_onWayPointReached),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _GuidanceListener_onStandingStatusChanged),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _GuidanceListener_onRoadNameChanged),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(_GuidanceListener_onSpeedLimitUpdated),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(_GuidanceListener_onSpeedLimitStatusUpdated),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(_GuidanceListener_onAlternativesChanged),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(_GuidanceListener_onFastestAlternativeChanged));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _GuidanceListenerWrapper(ptr);
    _GuidanceListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(GuidanceListener? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(ffi.Pointer<ffi.Void>, core.int, core.int)
    _GuidanceListenersetSendPort = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
            'yandex_flutter_navigation_automotive_GuidanceListener_setSendPort')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<
            ffi
            .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)
    _GuidanceListener_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_navigation_automotive_GuidanceListener_new')
        .asFunction(isLeaf: true);

final _GuidanceListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_GuidanceListener_free');
void _GuidanceListener_onLocationChanged(ffi.Pointer<ffi.Void> _ptr) {
  final listener = GuidanceListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onLocationChanged();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _GuidanceListener_onCurrentRouteChanged(
    ffi.Pointer<ffi.Void> _ptr, core.int reason) {
  final listener = GuidanceListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onCurrentRouteChanged(
        navigation_automotive_route_change_reason.RouteChangeReason.fromInt(
            reason));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _GuidanceListener_onRouteLost(ffi.Pointer<ffi.Void> _ptr) {
  final listener = GuidanceListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRouteLost();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _GuidanceListener_onReturnedToRoute(ffi.Pointer<ffi.Void> _ptr) {
  final listener = GuidanceListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onReturnedToRoute();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _GuidanceListener_onRouteFinished(ffi.Pointer<ffi.Void> _ptr) {
  final listener = GuidanceListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRouteFinished();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _GuidanceListener_onWayPointReached(ffi.Pointer<ffi.Void> _ptr) {
  final listener = GuidanceListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onWayPointReached();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _GuidanceListener_onStandingStatusChanged(ffi.Pointer<ffi.Void> _ptr) {
  final listener = GuidanceListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onStandingStatusChanged();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _GuidanceListener_onRoadNameChanged(ffi.Pointer<ffi.Void> _ptr) {
  final listener = GuidanceListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRoadNameChanged();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _GuidanceListener_onSpeedLimitUpdated(ffi.Pointer<ffi.Void> _ptr) {
  final listener = GuidanceListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onSpeedLimitUpdated();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _GuidanceListener_onSpeedLimitStatusUpdated(ffi.Pointer<ffi.Void> _ptr) {
  final listener = GuidanceListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onSpeedLimitStatusUpdated();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _GuidanceListener_onAlternativesChanged(ffi.Pointer<ffi.Void> _ptr) {
  final listener = GuidanceListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onAlternativesChanged();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _GuidanceListener_onFastestAlternativeChanged(ffi.Pointer<ffi.Void> _ptr) {
  final listener = GuidanceListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onFastestAlternativeChanged();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

@bindings_annotations.WeakInterface('navigation.automotive.Guidance')
@bindings_annotations.ContainerData(
    toNative: 'Guidance.getNativePtr',
    toPlatform:
        '(val) => Guidance.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class Guidance implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_Guidance_free.cast());

  /// @nodoc
  Guidance.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  Guidance.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory Guidance.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(Guidance? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _Guidance_check(ptr);
  }

  @internal

  /// @nodoc
  static Guidance? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return Guidance.fromNativePtr(ptr);
  }

  /// Enables/Disables alternatives suggestion while guiding. Enabled by
  /// default.
  core.bool get enableAlternatives {
    return _Guidance_get_enableAlternatives(ptr);
  }

  set enableAlternatives(core.bool val) {
    return _Guidance_set_enableAlternatives(ptr, val);
  }

  navigation_automotive_windshield.NavigationWindshield get windshield {
    return navigation_automotive_windshield.NavigationWindshield.fromNativePtr(
        _Guidance_get_windshield(ptr));
  }

  navigation_automotive_annotator.Annotator get annotator {
    return navigation_automotive_annotator.Annotator.fromNativePtr(
        _Guidance_get_annotator(ptr));
  }

  directions_driving_route.DrivingRoute? get currentRoute {
    return directions_driving_route.DrivingRoute.fromOptionalPtr(
        _Guidance_get_currentRoute(ptr));
  }

  /// Vector with all alternatives ahead. Sorted by distance.
  core.List<navigation_automotive_alternative.NavigationAlternative>
      get alternatives {
    return navigation_automotive_alternative
            .NavigationAlternativeContainerExtension
        .toPlatformVector(_Guidance_get_alternatives(ptr));
  }

  navigation_automotive_alternative.NavigationAlternative?
      get fastestAlternative {
    return navigation_automotive_alternative.NavigationAlternative
        .fromOptionalPtr(_Guidance_get_fastestAlternative(ptr));
  }

  mapkit_location_location.Location? get location {
    return mapkit_location_location.Location.fromPointer(
        _Guidance_get_location(ptr));
  }

  navigation_automotive_location_class.LocationClass? get locationClass {
    return navigation_automotive_location_class.LocationClass.fromPointer(
        _Guidance_get_locationClass(ptr));
  }

  core.String? get roadName {
    return to_platform.toPlatformFromPointerString(_Guidance_get_roadName(ptr));
  }

  navigation_automotive_route_status.RouteStatus get routeStatus {
    return navigation_automotive_route_status.RouteStatus.fromInt(
        _Guidance_get_routeStatus(ptr));
  }

  /// In case region is not yet available, SpeedingPolicy::region is empty
  /// and default speeding config is used.
  navigation_automotive_speed_limits_policy.SpeedLimitsPolicy
      get speedLimitsPolicy {
    return navigation_automotive_speed_limits_policy.SpeedLimitsPolicy
        .fromNativePtr(_Guidance_get_speedLimitsPolicy(ptr));
  }

  core.double get speedLimitTolerance {
    return _Guidance_get_speedLimitTolerance(ptr);
  }

  set speedLimitTolerance(core.double val) {
    return _Guidance_set_speedLimitTolerance(ptr, val);
  }

  /// Speed limit of the current road.
  ///
  mapkit_localized_value.LocalizedValue? get speedLimit {
    return mapkit_localized_value.LocalizedValue.fromPointer(
        _Guidance_get_speedLimit(ptr));
  }

  navigation_automotive_speed_limit_status.SpeedLimitStatus
      get speedLimitStatus {
    return navigation_automotive_speed_limit_status.SpeedLimitStatus.fromInt(
        _Guidance_get_speedLimitStatus(ptr));
  }

  /// Start guidance with given alternative. It only accepts routes
  /// obtained from this Guidance.routes field.
  void switchToRoute(directions_driving_route.DrivingRoute route) {
    _Guidance_switchToRoute(
        ptr, directions_driving_route.DrivingRoute.getNativePtr(route));
  }

  /// The class does not retain the object in the 'guidanceListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addListener(GuidanceListener guidanceListener) {
    _Guidance_addListener(ptr, GuidanceListener.getNativePtr(guidanceListener));
  }

  void removeListener(GuidanceListener guidanceListener) {
    _Guidance_removeListener(
        ptr, GuidanceListener.getNativePtr(guidanceListener));
  }
}

final _Guidance_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Guidance_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _Guidance_check = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Guidance_check')
    .asFunction(isLeaf: true);

final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _Guidance_get_enableAlternatives = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Guidance_get_enableAlternatives')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _Guidance_set_enableAlternatives = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_Guidance_set_enableAlternatives')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Guidance_get_windshield = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Guidance_get_windshield')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Guidance_get_annotator = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Guidance_get_annotator')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Guidance_get_currentRoute = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Guidance_get_currentRoute')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Guidance_get_alternatives = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Guidance_get_alternatives')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Guidance_get_fastestAlternative = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Guidance_get_fastestAlternative')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Guidance_get_location = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Guidance_get_location')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Guidance_get_locationClass = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Guidance_get_locationClass')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Guidance_get_roadName = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Guidance_get_roadName')
        .asFunction();

final core.int Function(ffi.Pointer<ffi.Void>) _Guidance_get_routeStatus = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Guidance_get_routeStatus')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Guidance_get_speedLimitsPolicy = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Guidance_get_speedLimitsPolicy')
    .asFunction();

final core.double Function(
    ffi
        .Pointer<ffi.Void>) _Guidance_get_speedLimitTolerance = lib.library
    .lookup<ffi.NativeFunction<ffi.Double Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Guidance_get_speedLimitTolerance')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .double) _Guidance_set_speedLimitTolerance = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Double)>>(
        'yandex_flutter_navigation_automotive_Guidance_set_speedLimitTolerance')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _Guidance_get_speedLimit = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Guidance_get_speedLimit')
        .asFunction();

final core.int Function(
    ffi
        .Pointer<ffi.Void>) _Guidance_get_speedLimitStatus = lib.library
    .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Guidance_get_speedLimitStatus')
    .asFunction();

final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Guidance_switchToRoute = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Guidance_switchToRoute')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Guidance_addListener = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Guidance_addListener')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Guidance_removeListener = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Guidance_removeListener')
        .asFunction();
