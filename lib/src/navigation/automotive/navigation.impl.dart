part of 'navigation.dart';

final class _NavigationListenerWrapper implements ffi.Finalizable {
  _NavigationListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_NavigationListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension NavigationListenerImpl on NavigationListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<NavigationListener>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<NavigationListener, _NavigationListenerWrapper?>();

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
  final listener = NavigationListenerImpl._pointerToListener[_ptr]?.target;
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
  final listener = NavigationListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onAlternativesRequested(
        directions_driving_route.DrivingRouteImpl.fromNativePtr(currentRoute));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationListener_onUriResolvingRequested(
    ffi.Pointer<ffi.Void> _ptr, native_types.NativeString uri) {
  final listener = NavigationListenerImpl._pointerToListener[_ptr]?.target;
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
  final listener = NavigationListenerImpl._pointerToListener[_ptr]?.target;
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
  final listener = NavigationListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRoutesRequestError(runtime_error.ErrorImpl.fromNativePtr(error));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationListener_onResetRoutes(ffi.Pointer<ffi.Void> _ptr) {
  final listener = NavigationListenerImpl._pointerToListener[_ptr]?.target;
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
    toNative: 'NavigationImpl.getNativePtr',
    toPlatform:
        '(val) => NavigationImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'Navigation')
class NavigationImpl implements Navigation, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_Navigation_free.cast());

  /// @nodoc
  NavigationImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  NavigationImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(Navigation? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as NavigationImpl).ptr;
  }

  @internal

  /// @nodoc
  static Navigation? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return NavigationImpl.fromNativePtr(ptr);
  }

  @core.override
  directions_driving_vehicle_options.DrivingVehicleOptions get vehicleOptions {
    final result = _Navigation_get_vehicleOptions(ptr);
    return directions_driving_vehicle_options.DrivingVehicleOptionsImpl
        .fromNative(result);
  }

  @core.override
  set vehicleOptions(
      directions_driving_vehicle_options.DrivingVehicleOptions val) {
    _Navigation_set_vehicleOptions(
        ptr,
        directions_driving_vehicle_options.DrivingVehicleOptionsImpl.toNative(
            val));
  }

  @core.override
  core.bool get avoidTolls {
    final result = _Navigation_get_avoidTolls(ptr);
    return result;
  }

  @core.override
  set avoidTolls(core.bool val) {
    _Navigation_set_avoidTolls(ptr, val);
  }

  @core.override
  core.bool get avoidUnpaved {
    final result = _Navigation_get_avoidUnpaved(ptr);
    return result;
  }

  @core.override
  set avoidUnpaved(core.bool val) {
    _Navigation_set_avoidUnpaved(ptr, val);
  }

  @core.override
  core.bool get avoidPoorConditions {
    final result = _Navigation_get_avoidPoorConditions(ptr);
    return result;
  }

  @core.override
  set avoidPoorConditions(core.bool val) {
    _Navigation_set_avoidPoorConditions(ptr, val);
  }

  @core.override
  core.List<mapkit_geometry_geometry.LinearRing> get avoidedZones {
    final result = _Navigation_get_avoidedZones(ptr);
    return mapkit_geometry_geometry.LinearRingContainerExtension
        .toPlatformVector(result);
  }

  @core.override
  set avoidedZones(core.List<mapkit_geometry_geometry.LinearRing> val) {
    _Navigation_set_avoidedZones(
        ptr,
        mapkit_geometry_geometry.LinearRingContainerExtension.toNativeVector(
            val));
  }

  @core.override
  mapkit_annotations_annotation_lang.AnnotationLanguage get annotationLanguage {
    final result = _Navigation_get_annotationLanguage(ptr);
    return mapkit_annotations_annotation_lang.AnnotationLanguageImpl.fromInt(
        result);
  }

  @core.override
  set annotationLanguage(
      mapkit_annotations_annotation_lang.AnnotationLanguage val) {
    _Navigation_set_annotationLanguage(ptr,
        mapkit_annotations_annotation_lang.AnnotationLanguageImpl.toInt(val));
  }

  @core.override
  core.List<directions_driving_route.DrivingRoute> get routes {
    final result = _Navigation_get_routes(ptr);
    return directions_driving_route.DrivingRouteContainerExtension
        .toPlatformVector(result);
  }

  @core.override
  navigation_automotive_guidance.Guidance get guidance {
    final result = _Navigation_get_guidance(ptr);
    return navigation_automotive_guidance.GuidanceImpl.fromNativePtr(result);
  }

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

  void requestAlternatives() {
    _Navigation_requestAlternatives(ptr);
  }

  void resolveUri(core.String uri) {
    _Navigation_resolveUri(ptr, to_native.toNativeString(uri));
  }

  void cancelRequest() {
    _Navigation_cancelRequest(ptr);
  }

  void resetRoutes() {
    _Navigation_resetRoutes(ptr);
  }

  void addListener(NavigationListener navigationListener) {
    _Navigation_addListener(
        ptr, NavigationListenerImpl.getNativePtr(navigationListener));
  }

  void removeListener(NavigationListener navigationListener) {
    _Navigation_removeListener(
        ptr, NavigationListenerImpl.getNativePtr(navigationListener));
  }

  void startGuidance(directions_driving_route.DrivingRoute? route) {
    _Navigation_startGuidance(
        ptr, directions_driving_route.DrivingRouteImpl.getNativePtr(route));
  }

  void stopGuidance() {
    _Navigation_stopGuidance(ptr);
  }

  void suspend() {
    _Navigation_suspend(ptr);
  }

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
final void Function(ffi.Pointer<ffi.Void>, core.int) _Navigation_set = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_Navigation_set_')
    .asFunction(isLeaf: true);

Navigation _createNavigation(
    directions_driving_driving_router.DrivingRouterType type) {
  final result = _NavigationFactory_createNavigation(
      directions_driving_driving_router.DrivingRouterTypeImpl.toInt(type));
  return NavigationImpl.fromNativePtr(result);
}

final ffi.Pointer<ffi.Void> Function(
    core
        .int) _NavigationFactory_createNavigation = lib.library
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_NavigationFactory_createNavigation')
    .asFunction();

typed_data.ByteBuffer _serialize(Navigation navigation) {
  final result = _NavigationSerialization_serialize(
      NavigationImpl.getNativePtr(navigation));
  return to_platform.toPlatformBytes(result);
}

Navigation? _deserialize(typed_data.ByteBuffer serializedNavigation) {
  final result = _NavigationSerialization_deserialize(
      to_native.toNativeBytes(serializedNavigation));
  return NavigationImpl.fromOptionalPtr(result);
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
