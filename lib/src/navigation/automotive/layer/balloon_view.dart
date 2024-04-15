import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_navikit/src/directions/driving/route.dart'
    as directions_driving_route;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/balloon.dart'
    as navigation_automotive_layer_balloon;
import 'package:yandex_maps_navikit/src/navigation/balloons/balloon_anchor.dart'
    as navigation_balloons_balloon_anchor;

part 'balloon_view.containers.dart';

@bindings_annotations.WeakInterface('navigation.automotive.layer.BalloonView')
@bindings_annotations.ContainerData(
    toNative: 'BalloonView.getNativePtr',
    toPlatform:
        '(val) => BalloonView.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class BalloonView implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_BalloonView_free.cast());

  /// @nodoc
  BalloonView.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  BalloonView.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory BalloonView.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(BalloonView? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _BalloonView_check(ptr);
  }

  @internal

  /// @nodoc
  static BalloonView? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return BalloonView.fromNativePtr(ptr);
  }

  navigation_balloons_balloon_anchor.BalloonAnchor get anchor {
    return navigation_balloons_balloon_anchor.BalloonAnchor.fromNative(
        _BalloonView_get_anchor(ptr));
  }

  navigation_automotive_layer_balloon.Balloon get balloon {
    return navigation_automotive_layer_balloon.Balloon.toPlatform(
        _BalloonView_get_balloon(ptr));
  }

  /// True if balloon currently visible on the screen. Always false if
  /// balloon disabled
  core.bool get isVisible {
    return _BalloonView_get_isVisible(ptr);
  }

  /// If 'true', balloons will be shown whenever it possible. If 'false',
  /// balloons will be always hidden.
  /// `BalloonViewListener.onBalloonContentChanged` is called regardless of
  /// isEnabled value. `RouteView.showBalloons` call changes this
  /// attribute. Enabled by default.
  core.bool get isEnabled {
    return _BalloonView_get_isEnabled(ptr);
  }

  set isEnabled(core.bool val) {
    return _BalloonView_set_isEnabled(ptr, val);
  }

  /// The route to which this balloon belongs.
  directions_driving_route.DrivingRoute get hostRoute {
    return directions_driving_route.DrivingRoute.fromNativePtr(
        _BalloonView_get_hostRoute(ptr));
  }
}

final _BalloonView_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_BalloonView_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _BalloonView_check = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_BalloonView_check')
    .asFunction(isLeaf: true);

final navigation_balloons_balloon_anchor.BalloonAnchorNative Function(
        ffi.Pointer<ffi.Void>) _BalloonView_get_anchor =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    navigation_balloons_balloon_anchor.BalloonAnchorNative
                        Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_layer_BalloonView_get_anchor')
        .asFunction();

final navigation_automotive_layer_balloon.BalloonNative Function(
    ffi
        .Pointer<ffi.Void>) _BalloonView_get_balloon = lib.library
    .lookup<
            ffi.NativeFunction<
                navigation_automotive_layer_balloon.BalloonNative Function(
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_BalloonView_get_balloon')
    .asFunction();

final core.bool Function(ffi.Pointer<ffi.Void>) _BalloonView_get_isVisible = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_BalloonView_get_isVisible')
    .asFunction();

final core.bool Function(ffi.Pointer<ffi.Void>) _BalloonView_get_isEnabled = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_BalloonView_get_isEnabled')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _BalloonView_set_isEnabled = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_BalloonView_set_isEnabled')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _BalloonView_get_hostRoute = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_BalloonView_get_hostRoute')
    .asFunction();
