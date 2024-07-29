part of 'balloon_view.dart';

@bindings_annotations.WeakInterface('navigation.automotive.layer.BalloonView')
@bindings_annotations.ContainerData(
    toNative: 'BalloonViewImpl.getNativePtr',
    toPlatform:
        '(val) => BalloonViewImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'BalloonView')
class BalloonViewImpl implements BalloonView, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_BalloonView_free.cast());

  /// @nodoc
  BalloonViewImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  BalloonViewImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory BalloonViewImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(BalloonView? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as BalloonViewImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _BalloonView_check(ptr);
  }

  @internal

  /// @nodoc
  static BalloonView? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return BalloonViewImpl.fromNativePtr(ptr);
  }

  @core.override
  navigation_balloons_balloon_anchor.BalloonAnchor get anchor {
    return navigation_balloons_balloon_anchor.BalloonAnchorImpl.fromNative(
        _BalloonView_get_anchor(ptr));
  }

  @core.override
  navigation_automotive_layer_balloon.Balloon get balloon {
    return navigation_automotive_layer_balloon.BalloonImpl.toPlatform(
        _BalloonView_get_balloon(ptr));
  }

  @core.override
  core.bool get isVisible {
    return _BalloonView_get_isVisible(ptr);
  }

  @core.override
  core.bool get isEnabled {
    return _BalloonView_get_isEnabled(ptr);
  }

  @core.override
  set isEnabled(core.bool val) {
    _BalloonView_set_isEnabled(ptr, val);
  }

  @core.override
  directions_driving_route.DrivingRoute get hostRoute {
    return directions_driving_route.DrivingRouteImpl.fromNativePtr(
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

final void Function(ffi.Pointer<ffi.Void>, core.int) _BalloonView_set = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_BalloonView_set_')
    .asFunction(isLeaf: true);
