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
import 'package:yandex_maps_navikit/src/directions/driving/annotation.dart'
    as directions_driving_annotation;
import 'package:yandex_maps_navikit/src/directions/driving/direction_signs.dart'
    as directions_driving_direction_signs;
import 'package:yandex_maps_navikit/src/directions/driving/lane.dart'
    as directions_driving_lane;
import 'package:yandex_maps_navikit/src/directions/driving/route.dart'
    as directions_driving_route;
import 'package:yandex_maps_navikit/src/mapkit/navigation/route_position.dart'
    as mapkit_navigation_route_position;
import 'package:yandex_maps_navikit/src/navigation/automotive/speed_limit_status.dart'
    as navigation_automotive_speed_limit_status;

part 'windshield.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'NavigationUpcomingManoeuvre.getNativePtr',
    toPlatform:
        '(val) => NavigationUpcomingManoeuvre.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class NavigationUpcomingManoeuvre implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_NavigationUpcomingManoeuvre_free.cast());

  /// @nodoc
  NavigationUpcomingManoeuvre.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  NavigationUpcomingManoeuvre.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(NavigationUpcomingManoeuvre? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static NavigationUpcomingManoeuvre? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return NavigationUpcomingManoeuvre.fromNativePtr(ptr);
  }

  directions_driving_annotation.DrivingAnnotation get annotation {
    return directions_driving_annotation.DrivingAnnotation.fromNativePtr(
        _UpcomingManoeuvre_get_annotation(ptr));
  }

  mapkit_navigation_route_position.RoutePosition get position {
    return mapkit_navigation_route_position.RoutePosition.fromNativePtr(
        _UpcomingManoeuvre_get_position(ptr));
  }
}

final _NavigationUpcomingManoeuvre_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_navigation_automotive_NavigationUpcomingManoeuvre_free');

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _UpcomingManoeuvre_get_annotation = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationUpcomingManoeuvre_get_annotation')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _UpcomingManoeuvre_get_position = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationUpcomingManoeuvre_get_position')
    .asFunction();

@bindings_annotations.ContainerData(
    toNative: 'NavigationUpcomingRoadEvent.getNativePtr',
    toPlatform:
        '(val) => NavigationUpcomingRoadEvent.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class NavigationUpcomingRoadEvent implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_NavigationUpcomingRoadEvent_free.cast());

  /// @nodoc
  NavigationUpcomingRoadEvent.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  NavigationUpcomingRoadEvent.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(NavigationUpcomingRoadEvent? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static NavigationUpcomingRoadEvent? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return NavigationUpcomingRoadEvent.fromNativePtr(ptr);
  }

  directions_driving_route.DrivingEvent get event {
    return directions_driving_route.DrivingEvent.fromNativePtr(
        _UpcomingRoadEvent_get_event(ptr));
  }

  navigation_automotive_speed_limit_status.SpeedLimitStatus?
      get speedLimitStatus {
    return navigation_automotive_speed_limit_status.SpeedLimitStatus
        .fromPointer(_UpcomingRoadEvent_get_speedLimitStatus(ptr));
  }

  /// Effective speed limit. Non-empty only for speed control camera
  /// events. If a camera has no speed limit then some standard urban speed
  /// limit will be used.
  ///
  core.double? get effectiveSpeedLimit {
    return to_platform.toPlatformFromPointerDouble(
        _UpcomingRoadEvent_get_effectiveSpeedLimit(ptr));
  }

  mapkit_navigation_route_position.RoutePosition get position {
    return mapkit_navigation_route_position.RoutePosition.fromNativePtr(
        _UpcomingRoadEvent_get_position(ptr));
  }
}

final _NavigationUpcomingRoadEvent_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_navigation_automotive_NavigationUpcomingRoadEvent_free');

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _UpcomingRoadEvent_get_event = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationUpcomingRoadEvent_get_event')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _UpcomingRoadEvent_get_speedLimitStatus = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationUpcomingRoadEvent_get_speedLimitStatus')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _UpcomingRoadEvent_get_effectiveSpeedLimit = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationUpcomingRoadEvent_get_effectiveSpeedLimit')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _UpcomingRoadEvent_get_position = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationUpcomingRoadEvent_get_position')
    .asFunction();

@bindings_annotations.ContainerData(
    toNative: 'NavigationUpcomingLaneSign.getNativePtr',
    toPlatform:
        '(val) => NavigationUpcomingLaneSign.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class NavigationUpcomingLaneSign implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_NavigationUpcomingLaneSign_free.cast());

  /// @nodoc
  NavigationUpcomingLaneSign.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  NavigationUpcomingLaneSign.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(NavigationUpcomingLaneSign? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static NavigationUpcomingLaneSign? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return NavigationUpcomingLaneSign.fromNativePtr(ptr);
  }

  directions_driving_lane.DrivingLaneSign get laneSign {
    return directions_driving_lane.DrivingLaneSign.fromNativePtr(
        _UpcomingLaneSign_get_laneSign(ptr));
  }

  mapkit_navigation_route_position.RoutePosition get position {
    return mapkit_navigation_route_position.RoutePosition.fromNativePtr(
        _UpcomingLaneSign_get_position(ptr));
  }
}

final _NavigationUpcomingLaneSign_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationUpcomingLaneSign_free');

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _UpcomingLaneSign_get_laneSign = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationUpcomingLaneSign_get_laneSign')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _UpcomingLaneSign_get_position = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationUpcomingLaneSign_get_position')
    .asFunction();

@bindings_annotations.ContainerData(
    toNative: 'NavigationUpcomingDirectionSign.getNativePtr',
    toPlatform:
        '(val) => NavigationUpcomingDirectionSign.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class NavigationUpcomingDirectionSign implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_NavigationUpcomingDirectionSign_free.cast());

  /// @nodoc
  NavigationUpcomingDirectionSign.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  NavigationUpcomingDirectionSign.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      NavigationUpcomingDirectionSign? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static NavigationUpcomingDirectionSign? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return NavigationUpcomingDirectionSign.fromNativePtr(ptr);
  }

  directions_driving_direction_signs.DrivingDirectionSign get directionSign {
    return directions_driving_direction_signs.DrivingDirectionSign
        .fromNativePtr(_UpcomingDirectionSign_get_directionSign(ptr));
  }

  mapkit_navigation_route_position.RoutePosition get position {
    return mapkit_navigation_route_position.RoutePosition.fromNativePtr(
        _UpcomingDirectionSign_get_position(ptr));
  }
}

final _NavigationUpcomingDirectionSign_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_navigation_automotive_NavigationUpcomingDirectionSign_free');

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _UpcomingDirectionSign_get_directionSign = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationUpcomingDirectionSign_get_directionSign')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _UpcomingDirectionSign_get_position = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationUpcomingDirectionSign_get_position')
    .asFunction();

/// @nodoc
class _NavigationWindshieldListenerWrapper implements ffi.Finalizable {
  _NavigationWindshieldListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_NavigationWindshieldListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

abstract class NavigationWindshieldListener {
  static final _pointerToListener = <ffi.Pointer<ffi.Void>,
      core.WeakReference<NavigationWindshieldListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<
      NavigationWindshieldListener, _NavigationWindshieldListenerWrapper?>();

  void onManoeuvresChanged();
  void onRoadEventsChanged();
  void onLaneSignChanged();
  void onDirectionSignChanged();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(
      NavigationWindshieldListener obj) {
    final ptr = _NavigationWindshieldListener_new(
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _NavigationWindshieldListener_onManoeuvresChanged),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _NavigationWindshieldListener_onRoadEventsChanged),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _NavigationWindshieldListener_onLaneSignChanged),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _NavigationWindshieldListener_onDirectionSignChanged));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _NavigationWindshieldListenerWrapper(ptr);
    _NavigationWindshieldListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(NavigationWindshieldListener? obj) {
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
        .int) _NavigationWindshieldListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_NavigationWindshieldListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)
    _NavigationWindshieldListener_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<
                        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_navigation_automotive_NavigationWindshieldListener_new')
        .asFunction(isLeaf: true);

final _NavigationWindshieldListener_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_navigation_automotive_NavigationWindshieldListener_free');
void _NavigationWindshieldListener_onManoeuvresChanged(
    ffi.Pointer<ffi.Void> _ptr) {
  final listener =
      NavigationWindshieldListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onManoeuvresChanged();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationWindshieldListener_onRoadEventsChanged(
    ffi.Pointer<ffi.Void> _ptr) {
  final listener =
      NavigationWindshieldListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRoadEventsChanged();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationWindshieldListener_onLaneSignChanged(
    ffi.Pointer<ffi.Void> _ptr) {
  final listener =
      NavigationWindshieldListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onLaneSignChanged();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationWindshieldListener_onDirectionSignChanged(
    ffi.Pointer<ffi.Void> _ptr) {
  final listener =
      NavigationWindshieldListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onDirectionSignChanged();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

@bindings_annotations.WeakInterface('navigation.automotive.Windshield')
@bindings_annotations.ContainerData(
    toNative: 'NavigationWindshield.getNativePtr',
    toPlatform:
        '(val) => NavigationWindshield.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class NavigationWindshield implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_NavigationWindshield_free.cast());

  /// @nodoc
  NavigationWindshield.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  NavigationWindshield.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory NavigationWindshield.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(NavigationWindshield? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _NavigationWindshield_check(ptr);
  }

  @internal

  /// @nodoc
  static NavigationWindshield? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return NavigationWindshield.fromNativePtr(ptr);
  }

  /// Vector with next manoeuvres. Contains several items only if they are
  /// close to each other.
  core.List<NavigationUpcomingManoeuvre> get manoeuvres {
    return NavigationUpcomingManoeuvreContainerExtension.toPlatformVector(
        _Windshield_get_manoeuvres(ptr));
  }

  /// Vector with all road events between current position and the next
  /// manoeuvre. Sorted by distance.
  core.List<NavigationUpcomingRoadEvent> get roadEvents {
    return NavigationUpcomingRoadEventContainerExtension.toPlatformVector(
        _Windshield_get_roadEvents(ptr));
  }

  /// Vector with all lane signs between current position and the last
  /// manoeuvre from the manoeuvres vector. Sorted by distance.
  core.List<NavigationUpcomingLaneSign> get laneSigns {
    return NavigationUpcomingLaneSignContainerExtension.toPlatformVector(
        _Windshield_get_laneSigns(ptr));
  }

  /// Vector with all direction signs between current position and the last
  /// manoeuvre from the manoeuvres vector. Sorted by distance.
  core.List<NavigationUpcomingDirectionSign> get directionSigns {
    return NavigationUpcomingDirectionSignContainerExtension.toPlatformVector(
        _Windshield_get_directionSigns(ptr));
  }

  /// The class does not retain the object in the 'windshieldListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addListener(NavigationWindshieldListener windshieldListener) {
    _Windshield_addListener(
        ptr, NavigationWindshieldListener.getNativePtr(windshieldListener));
  }

  void removeListener(NavigationWindshieldListener windshieldListener) {
    _Windshield_removeListener(
        ptr, NavigationWindshieldListener.getNativePtr(windshieldListener));
  }
}

final _NavigationWindshield_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationWindshield_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _NavigationWindshield_check =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_NavigationWindshield_check')
        .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Windshield_get_manoeuvres = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationWindshield_get_manoeuvres')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Windshield_get_roadEvents = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationWindshield_get_roadEvents')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Windshield_get_laneSigns = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationWindshield_get_laneSigns')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Windshield_get_directionSigns = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationWindshield_get_directionSigns')
    .asFunction();

final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _Windshield_addListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationWindshield_addListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _Windshield_removeListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationWindshield_removeListener')
    .asFunction();
