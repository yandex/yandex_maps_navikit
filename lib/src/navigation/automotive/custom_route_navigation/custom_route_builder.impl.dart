part of 'custom_route_builder.dart';

final class NavigationCustomRouteOptionsNative extends ffi.Struct {
  external ffi.Pointer<ffi.Void> allowMoreUturns;
}

final NavigationCustomRouteOptionsNative Function(
    ffi
        .Pointer<ffi.Void>) _NavigationCustomRouteOptionsNativeInit = lib
    .library
    .lookup<
            ffi.NativeFunction<
                NavigationCustomRouteOptionsNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_custom_route_navigation_NavigationCustomRouteOptions_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'NavigationCustomRouteOptionsImpl.toPointer',
    toPlatform:
        '(val) => NavigationCustomRouteOptionsImpl.fromPointer(val, needFree: false)',
    platformType: 'NavigationCustomRouteOptions')
extension NavigationCustomRouteOptionsImpl on NavigationCustomRouteOptions {
  static NavigationCustomRouteOptions fromNative(
      NavigationCustomRouteOptionsNative native) {
    return NavigationCustomRouteOptions(
        allowMoreUturns:
            to_platform.toPlatformFromPointerBool(native.allowMoreUturns));
  }

  static NavigationCustomRouteOptionsNative toNative(
      NavigationCustomRouteOptions obj) {
    return _NavigationCustomRouteOptionsNativeInit(
        to_native.toNativePtrBool(obj.allowMoreUturns));
  }

  static NavigationCustomRouteOptions? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = NavigationCustomRouteOptionsImpl.fromNative(
        ptr.cast<NavigationCustomRouteOptionsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(NavigationCustomRouteOptions? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<NavigationCustomRouteOptionsNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'NavigationCustomRouteBuilderImpl.getNativePtr',
    toPlatform:
        '(val) => NavigationCustomRouteBuilderImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'NavigationCustomRouteBuilder')
class NavigationCustomRouteBuilderImpl
    implements NavigationCustomRouteBuilder, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_NavigationCustomRouteBuilder_free.cast());

  /// @nodoc
  NavigationCustomRouteBuilderImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  NavigationCustomRouteBuilderImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(NavigationCustomRouteBuilder? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as NavigationCustomRouteBuilderImpl).ptr;
  }

  @internal

  /// @nodoc
  static NavigationCustomRouteBuilder? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return NavigationCustomRouteBuilderImpl.fromNativePtr(ptr);
  }

  directions_driving_session.DrivingSession requestRoute(
    mapkit_geometry_geometry.Polyline polyline,
    mapkit_geometry_point.Point initialPoint,
    NavigationCustomRouteOptions customRouteOptions,
    directions_driving_session.DrivingSessionRouteListener routeListener, {
    core.double? initialAzimuth,
  }) {
    return directions_driving_session.DrivingSessionImpl.fromNativePtr(
        _CustomRouteBuilder_requestRoute(
      ptr,
      mapkit_geometry_geometry.PolylineImpl.getNativePtr(polyline),
      mapkit_geometry_point.PointImpl.toNative(initialPoint),
      to_native.toNativePtrDouble(initialAzimuth),
      NavigationCustomRouteOptionsImpl.toNative(customRouteOptions),
      directions_driving_session.DrivingSessionRouteListenerImpl.getNativePtr(
          routeListener),
    ));
  }
}

final _NavigationCustomRouteBuilder_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_navigation_automotive_custom_route_navigation_NavigationCustomRouteBuilder_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    mapkit_geometry_point.PointNative,
    ffi.Pointer<ffi.Void>,
    NavigationCustomRouteOptionsNative,
    ffi
        .Pointer<ffi.Void>) _CustomRouteBuilder_requestRoute = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    mapkit_geometry_point.PointNative,
                    ffi.Pointer<ffi.Void>,
                    NavigationCustomRouteOptionsNative,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_custom_route_navigation_NavigationCustomRouteBuilder_requestRoute')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _NavigationCustomRouteBuilder_set = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_custom_route_navigation_NavigationCustomRouteBuilder_set_')
    .asFunction(isLeaf: true);

NavigationCustomRouteBuilder _createCustomRouteBuilder() {
  return NavigationCustomRouteBuilderImpl.fromNativePtr(
      _CustomRouteBuilderFactory_createCustomRouteBuilder());
}

final ffi.Pointer<ffi.Void> Function()
    _CustomRouteBuilderFactory_createCustomRouteBuilder = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
            'yandex_flutter_navigation_automotive_custom_route_navigation_NavigationCustomRouteBuilderFactory_createCustomRouteBuilder')
        .asFunction();
