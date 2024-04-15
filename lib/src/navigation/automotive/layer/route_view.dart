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
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_navikit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_navikit/src/directions/driving/route.dart'
    as directions_driving_route;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/balloon_view.dart'
    as navigation_automotive_layer_balloon_view;

part 'route_view.containers.dart';

@bindings_annotations.WeakInterface('navigation.automotive.layer.RouteView')
@bindings_annotations.ContainerData(
    toNative: 'RouteView.getNativePtr',
    toPlatform:
        '(val) => RouteView.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class RouteView implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_RouteView_free.cast());

  /// @nodoc
  RouteView.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  RouteView.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory RouteView.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(RouteView? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _RouteView_check(ptr);
  }

  @internal

  /// @nodoc
  static RouteView? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return RouteView.fromNativePtr(ptr);
  }

  directions_driving_route.DrivingRoute get route {
    return directions_driving_route.DrivingRoute.fromNativePtr(
        _RouteView_get_route(ptr));
  }

  /// Balloons displayed on map about the route.
  core.List<navigation_automotive_layer_balloon_view.BalloonView>
      get balloonViews {
    return navigation_automotive_layer_balloon_view
            .BalloonViewContainerExtension
        .toPlatformVector(_RouteView_get_balloonViews(ptr));
  }
}

final _RouteView_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_RouteView_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _RouteView_check = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_RouteView_check')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _RouteView_get_route = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_layer_RouteView_get_route')
        .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _RouteView_get_balloonViews = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_RouteView_get_balloonViews')
    .asFunction();

/// @nodoc
class _RouteViewListenerWrapper implements ffi.Finalizable {
  _RouteViewListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer = ffi.NativeFinalizer(_RouteViewListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

abstract class RouteViewListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<RouteViewListener>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<RouteViewListener, _RouteViewListenerWrapper?>();

  void onRouteViewsChanged();
  void onRouteViewTap(RouteView route);

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(RouteViewListener obj) {
    final ptr = _RouteViewListener_new(
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _RouteViewListener_onRouteViewsChanged),
        ffi.Pointer.fromFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Pointer<ffi.Void>)>(_RouteViewListener_onRouteViewTap));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _RouteViewListenerWrapper(ptr);
    _RouteViewListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> getNativePtr(RouteViewListener? obj) {
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
        .int) _RouteViewListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_RouteViewListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _RouteViewListener_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<
                        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_navigation_automotive_layer_RouteViewListener_new')
        .asFunction(isLeaf: true);

final _RouteViewListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_RouteViewListener_free');
void _RouteViewListener_onRouteViewsChanged(ffi.Pointer<ffi.Void> _ptr) {
  final listener = RouteViewListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRouteViewsChanged();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _RouteViewListener_onRouteViewTap(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> route) {
  final listener = RouteViewListener._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRouteViewTap(RouteView.fromNativePtr(route));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}
