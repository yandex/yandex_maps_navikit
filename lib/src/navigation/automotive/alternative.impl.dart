part of 'alternative.dart';

@bindings_annotations.ContainerData(
    toNative: 'NavigationAlternativeImpl.getNativePtr',
    toPlatform:
        '(val) => NavigationAlternativeImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'NavigationAlternative')
class NavigationAlternativeImpl
    implements NavigationAlternative, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_NavigationAlternative_free.cast());

  /// @nodoc
  NavigationAlternativeImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  NavigationAlternativeImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(NavigationAlternative? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as NavigationAlternativeImpl).ptr;
  }

  @internal

  /// @nodoc
  static NavigationAlternative? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return NavigationAlternativeImpl.fromNativePtr(ptr);
  }

  @core.override
  directions_driving_route.DrivingRoute get alternative {
    final result = _Alternative_get_alternative(ptr);
    return directions_driving_route.DrivingRouteImpl.fromNativePtr(result);
  }

  @core.override
  mapkit_navigation_route_position.RoutePosition get forkPositionOnAlternative {
    final result = _Alternative_get_forkPositionOnAlternative(ptr);
    return mapkit_navigation_route_position.RoutePositionImpl.fromNativePtr(
        result);
  }

  @core.override
  mapkit_navigation_route_position.RoutePosition
      get forkPositionOnCurrentRoute {
    final result = _Alternative_get_forkPositionOnCurrentRoute(ptr);
    return mapkit_navigation_route_position.RoutePositionImpl.fromNativePtr(
        result);
  }
}

final _NavigationAlternative_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationAlternative_free');

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Alternative_get_alternative = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationAlternative_get_alternative')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Alternative_get_forkPositionOnAlternative = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationAlternative_get_forkPositionOnAlternative')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _Alternative_get_forkPositionOnCurrentRoute = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_NavigationAlternative_get_forkPositionOnCurrentRoute')
    .asFunction();

final void Function(ffi.Pointer<ffi.Void>, core.int)
    _NavigationAlternative_set = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
            'yandex_flutter_navigation_automotive_NavigationAlternative_set_')
        .asFunction(isLeaf: true);
