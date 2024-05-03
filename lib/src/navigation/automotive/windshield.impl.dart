part of 'windshield.dart';

@bindings_annotations.ContainerData(
    toNative: 'NavigationUpcomingManoeuvreImpl.getNativePtr',
    toPlatform:
        '(val) => NavigationUpcomingManoeuvreImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'NavigationUpcomingManoeuvre')
class NavigationUpcomingManoeuvreImpl
    implements NavigationUpcomingManoeuvre, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_NavigationUpcomingManoeuvre_free.cast());

  /// @nodoc
  NavigationUpcomingManoeuvreImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  NavigationUpcomingManoeuvreImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(NavigationUpcomingManoeuvre? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as NavigationUpcomingManoeuvreImpl).ptr;
  }

  @internal

  /// @nodoc
  static NavigationUpcomingManoeuvre? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return NavigationUpcomingManoeuvreImpl.fromNativePtr(ptr);
  }

  @core.override
  directions_driving_annotation.DrivingAnnotation get annotation {
    return directions_driving_annotation.DrivingAnnotationImpl.fromNativePtr(
        _UpcomingManoeuvre_get_annotation(ptr));
  }

  @core.override
  mapkit_navigation_route_position.RoutePosition get position {
    return mapkit_navigation_route_position.RoutePositionImpl.fromNativePtr(
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
    toNative: 'NavigationUpcomingRoadEventImpl.getNativePtr',
    toPlatform:
        '(val) => NavigationUpcomingRoadEventImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'NavigationUpcomingRoadEvent')
class NavigationUpcomingRoadEventImpl
    implements NavigationUpcomingRoadEvent, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_NavigationUpcomingRoadEvent_free.cast());

  /// @nodoc
  NavigationUpcomingRoadEventImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  NavigationUpcomingRoadEventImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(NavigationUpcomingRoadEvent? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as NavigationUpcomingRoadEventImpl).ptr;
  }

  @internal

  /// @nodoc
  static NavigationUpcomingRoadEvent? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return NavigationUpcomingRoadEventImpl.fromNativePtr(ptr);
  }

  @core.override
  directions_driving_route.DrivingEvent get event {
    return directions_driving_route.DrivingEventImpl.fromNativePtr(
        _UpcomingRoadEvent_get_event(ptr));
  }

  @core.override
  navigation_automotive_speed_limit_status.SpeedLimitStatus?
      get speedLimitStatus {
    return navigation_automotive_speed_limit_status.SpeedLimitStatusImpl
        .fromPointer(_UpcomingRoadEvent_get_speedLimitStatus(ptr));
  }

  @core.override
  core.double? get effectiveSpeedLimit {
    return to_platform.toPlatformFromPointerDouble(
        _UpcomingRoadEvent_get_effectiveSpeedLimit(ptr));
  }

  @core.override
  mapkit_navigation_route_position.RoutePosition get position {
    return mapkit_navigation_route_position.RoutePositionImpl.fromNativePtr(
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
    toNative: 'NavigationUpcomingLaneSignImpl.getNativePtr',
    toPlatform:
        '(val) => NavigationUpcomingLaneSignImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'NavigationUpcomingLaneSign')
class NavigationUpcomingLaneSignImpl
    implements NavigationUpcomingLaneSign, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_NavigationUpcomingLaneSign_free.cast());

  /// @nodoc
  NavigationUpcomingLaneSignImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  NavigationUpcomingLaneSignImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(NavigationUpcomingLaneSign? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as NavigationUpcomingLaneSignImpl).ptr;
  }

  @internal

  /// @nodoc
  static NavigationUpcomingLaneSign? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return NavigationUpcomingLaneSignImpl.fromNativePtr(ptr);
  }

  @core.override
  directions_driving_lane.DrivingLaneSign get laneSign {
    return directions_driving_lane.DrivingLaneSignImpl.fromNativePtr(
        _UpcomingLaneSign_get_laneSign(ptr));
  }

  @core.override
  mapkit_navigation_route_position.RoutePosition get position {
    return mapkit_navigation_route_position.RoutePositionImpl.fromNativePtr(
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
    toNative: 'NavigationUpcomingDirectionSignImpl.getNativePtr',
    toPlatform:
        '(val) => NavigationUpcomingDirectionSignImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'NavigationUpcomingDirectionSign')
class NavigationUpcomingDirectionSignImpl
    implements NavigationUpcomingDirectionSign, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_NavigationUpcomingDirectionSign_free.cast());

  /// @nodoc
  NavigationUpcomingDirectionSignImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  NavigationUpcomingDirectionSignImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      NavigationUpcomingDirectionSign? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as NavigationUpcomingDirectionSignImpl).ptr;
  }

  @internal

  /// @nodoc
  static NavigationUpcomingDirectionSign? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return NavigationUpcomingDirectionSignImpl.fromNativePtr(ptr);
  }

  @core.override
  directions_driving_direction_signs.DrivingDirectionSign get directionSign {
    return directions_driving_direction_signs.DrivingDirectionSignImpl
        .fromNativePtr(_UpcomingDirectionSign_get_directionSign(ptr));
  }

  @core.override
  mapkit_navigation_route_position.RoutePosition get position {
    return mapkit_navigation_route_position.RoutePositionImpl.fromNativePtr(
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

final class _NavigationWindshieldListenerWrapper implements ffi.Finalizable {
  _NavigationWindshieldListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_NavigationWindshieldListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension NavigationWindshieldListenerImpl on NavigationWindshieldListener {
  static final _pointerToListener = <ffi.Pointer<ffi.Void>,
      core.WeakReference<NavigationWindshieldListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<
      NavigationWindshieldListener, _NavigationWindshieldListenerWrapper?>();

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
                        ffi
                        .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
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
      NavigationWindshieldListenerImpl._pointerToListener[_ptr]?.target;
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
      NavigationWindshieldListenerImpl._pointerToListener[_ptr]?.target;
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
      NavigationWindshieldListenerImpl._pointerToListener[_ptr]?.target;
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
      NavigationWindshieldListenerImpl._pointerToListener[_ptr]?.target;
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
    toNative: 'NavigationWindshieldImpl.getNativePtr',
    toPlatform:
        '(val) => NavigationWindshieldImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'NavigationWindshield')
class NavigationWindshieldImpl
    implements NavigationWindshield, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_NavigationWindshield_free.cast());

  /// @nodoc
  NavigationWindshieldImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  NavigationWindshieldImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory NavigationWindshieldImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(NavigationWindshield? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as NavigationWindshieldImpl).ptr;
  }

  core.bool isValid() {
    return _NavigationWindshield_check(ptr);
  }

  @internal

  /// @nodoc
  static NavigationWindshield? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return NavigationWindshieldImpl.fromNativePtr(ptr);
  }

  @core.override
  core.List<NavigationUpcomingManoeuvre> get manoeuvres {
    return NavigationUpcomingManoeuvreContainerExtension.toPlatformVector(
        _Windshield_get_manoeuvres(ptr));
  }

  @core.override
  core.List<NavigationUpcomingRoadEvent> get roadEvents {
    return NavigationUpcomingRoadEventContainerExtension.toPlatformVector(
        _Windshield_get_roadEvents(ptr));
  }

  @core.override
  core.List<NavigationUpcomingLaneSign> get laneSigns {
    return NavigationUpcomingLaneSignContainerExtension.toPlatformVector(
        _Windshield_get_laneSigns(ptr));
  }

  @core.override
  core.List<NavigationUpcomingDirectionSign> get directionSigns {
    return NavigationUpcomingDirectionSignContainerExtension.toPlatformVector(
        _Windshield_get_directionSigns(ptr));
  }

  void addListener(NavigationWindshieldListener windshieldListener) {
    _Windshield_addListener(
        ptr, NavigationWindshieldListenerImpl.getNativePtr(windshieldListener));
  }

  void removeListener(NavigationWindshieldListener windshieldListener) {
    _Windshield_removeListener(
        ptr, NavigationWindshieldListenerImpl.getNativePtr(windshieldListener));
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
