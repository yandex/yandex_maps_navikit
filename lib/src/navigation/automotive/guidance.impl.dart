part of 'guidance.dart';

final class _GuidanceListenerWrapper implements ffi.Finalizable {
  _GuidanceListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer = ffi.NativeFinalizer(_GuidanceListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension GuidanceListenerImpl on GuidanceListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<GuidanceListener>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<GuidanceListener, _GuidanceListenerWrapper?>();

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
    ffi
        .Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>) _GuidanceListener_new = lib.library
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
  final listener = GuidanceListenerImpl._pointerToListener[_ptr]?.target;
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
  final listener = GuidanceListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onCurrentRouteChanged(
        navigation_automotive_route_change_reason.RouteChangeReasonImpl.fromInt(
            reason));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _GuidanceListener_onRouteLost(ffi.Pointer<ffi.Void> _ptr) {
  final listener = GuidanceListenerImpl._pointerToListener[_ptr]?.target;
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
  final listener = GuidanceListenerImpl._pointerToListener[_ptr]?.target;
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
  final listener = GuidanceListenerImpl._pointerToListener[_ptr]?.target;
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
  final listener = GuidanceListenerImpl._pointerToListener[_ptr]?.target;
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
  final listener = GuidanceListenerImpl._pointerToListener[_ptr]?.target;
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
  final listener = GuidanceListenerImpl._pointerToListener[_ptr]?.target;
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
  final listener = GuidanceListenerImpl._pointerToListener[_ptr]?.target;
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
  final listener = GuidanceListenerImpl._pointerToListener[_ptr]?.target;
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
  final listener = GuidanceListenerImpl._pointerToListener[_ptr]?.target;
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
  final listener = GuidanceListenerImpl._pointerToListener[_ptr]?.target;
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
    toNative: 'GuidanceImpl.getNativePtr',
    toPlatform:
        '(val) => GuidanceImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'Guidance')
class GuidanceImpl implements Guidance, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_Guidance_free.cast());

  /// @nodoc
  GuidanceImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  GuidanceImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory GuidanceImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(Guidance? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as GuidanceImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _Guidance_check(ptr);
  }

  @internal

  /// @nodoc
  static Guidance? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return GuidanceImpl.fromNativePtr(ptr);
  }

  @core.override
  core.bool get enableAlternatives {
    final result = _Guidance_get_enableAlternatives(ptr);
    exception.checkCallResult();
    return result;
  }

  @core.override
  set enableAlternatives(core.bool val) {
    _Guidance_set_enableAlternatives(ptr, val);
    exception.checkCallResult();
  }

  @core.override
  core.bool get enableReroutes {
    final result = _Guidance_get_enableReroutes(ptr);
    exception.checkCallResult();
    return result;
  }

  @core.override
  set enableReroutes(core.bool val) {
    _Guidance_set_enableReroutes(ptr, val);
    exception.checkCallResult();
  }

  @core.override
  navigation_automotive_windshield.NavigationWindshield get windshield {
    final result = _Guidance_get_windshield(ptr);
    exception.checkCallResult();
    return navigation_automotive_windshield.NavigationWindshieldImpl
        .fromNativePtr(result);
  }

  @core.override
  navigation_automotive_annotator.Annotator get annotator {
    final result = _Guidance_get_annotator(ptr);
    exception.checkCallResult();
    return navigation_automotive_annotator.AnnotatorImpl.fromNativePtr(result);
  }

  @core.override
  directions_driving_route.DrivingRoute? get currentRoute {
    final result = _Guidance_get_currentRoute(ptr);
    exception.checkCallResult();
    return directions_driving_route.DrivingRouteImpl.fromOptionalPtr(result);
  }

  @core.override
  core.List<navigation_automotive_alternative.NavigationAlternative>
      get alternatives {
    final result = _Guidance_get_alternatives(ptr);
    exception.checkCallResult();
    return navigation_automotive_alternative
        .NavigationAlternativeContainerExtension.toPlatformVector(result);
  }

  @core.override
  navigation_automotive_alternative.NavigationAlternative?
      get fastestAlternative {
    final result = _Guidance_get_fastestAlternative(ptr);
    exception.checkCallResult();
    return navigation_automotive_alternative.NavigationAlternativeImpl
        .fromOptionalPtr(result);
  }

  @core.override
  mapkit_location_location.Location? get location {
    final result = _Guidance_get_location(ptr);
    exception.checkCallResult();
    return mapkit_location_location.LocationImpl.fromPointer(result);
  }

  @core.override
  navigation_automotive_location_class.LocationClass? get locationClass {
    final result = _Guidance_get_locationClass(ptr);
    exception.checkCallResult();
    return navigation_automotive_location_class.LocationClassImpl.fromPointer(
        result);
  }

  @core.override
  core.String? get roadName {
    final result = _Guidance_get_roadName(ptr);
    exception.checkCallResult();
    return to_platform.toPlatformFromPointerString(result);
  }

  @core.override
  navigation_automotive_route_status.RouteStatus get routeStatus {
    final result = _Guidance_get_routeStatus(ptr);
    exception.checkCallResult();
    return navigation_automotive_route_status.RouteStatusImpl.fromInt(result);
  }

  @core.override
  navigation_automotive_speed_limits_policy.SpeedLimitsPolicy
      get speedLimitsPolicy {
    final result = _Guidance_get_speedLimitsPolicy(ptr);
    exception.checkCallResult();
    return navigation_automotive_speed_limits_policy.SpeedLimitsPolicyImpl
        .fromNativePtr(result);
  }

  @core.override
  core.double get speedLimitTolerance {
    final result = _Guidance_get_speedLimitTolerance(ptr);
    exception.checkCallResult();
    return result;
  }

  @core.override
  set speedLimitTolerance(core.double val) {
    _Guidance_set_speedLimitTolerance(ptr, val);
    exception.checkCallResult();
  }

  @core.override
  mapkit_localized_value.LocalizedValue? get speedLimit {
    final result = _Guidance_get_speedLimit(ptr);
    exception.checkCallResult();
    return mapkit_localized_value.LocalizedValueImpl.fromPointer(result);
  }

  @core.override
  navigation_automotive_speed_limit_status.SpeedLimitStatus
      get speedLimitStatus {
    final result = _Guidance_get_speedLimitStatus(ptr);
    exception.checkCallResult();
    return navigation_automotive_speed_limit_status.SpeedLimitStatusImpl
        .fromInt(result);
  }

  void switchToRoute(directions_driving_route.DrivingRoute route) {
    _Guidance_switchToRoute(
        ptr, directions_driving_route.DrivingRouteImpl.getNativePtr(route));
    exception.checkCallResult();
  }

  void addListener(GuidanceListener guidanceListener) {
    _Guidance_addListener(
        ptr, GuidanceListenerImpl.getNativePtr(guidanceListener));
    exception.checkCallResult();
  }

  void removeListener(GuidanceListener guidanceListener) {
    _Guidance_removeListener(
        ptr, GuidanceListenerImpl.getNativePtr(guidanceListener));
    exception.checkCallResult();
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

final core.bool Function(ffi.Pointer<ffi.Void>) _Guidance_get_enableReroutes =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Guidance_get_enableReroutes')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.bool)
    _Guidance_set_enableReroutes = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
            'yandex_flutter_navigation_automotive_Guidance_set_enableReroutes')
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
final void Function(ffi.Pointer<ffi.Void>, core.int) _Guidance_set = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_Guidance_set_')
    .asFunction(isLeaf: true);
