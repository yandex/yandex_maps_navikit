part of 'balloon_image_provider.dart';

extension NavigationBalloonImageProviderImpl on NavigationBalloonImageProvider {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, NavigationBalloonImageProvider>{};
  static final _listenerToPointer =
      <NavigationBalloonImageProvider, ffi.Pointer<ffi.Void>>{};

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _NavigationBalloonImageProvider_free(ptr);
    final listener = _pointerToListener[ptr];
    _listenerToPointer.remove(listener);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _renewNonExsistPointer(
      ffi.Pointer<ffi.Void> ptr) {
    if (!_NavigationBalloonImageProvider_exists(ptr)) {
      final listener = _pointerToListener[ptr];
      _pointerToListener.remove(ptr);
      _listenerToPointer.remove(listener);
      return _newNativeObject(listener!);
    }
    return ptr;
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(
      NavigationBalloonImageProvider obj) {
    final ptr = _NavigationBalloonImageProvider_new(
        ffi.Pointer.fromFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    navigation_automotive_layer_balloon.BalloonNative,
                    ffi.Float,
                    ffi.Bool)>(
            _NavigationBalloonImageProvider_geometriesForBalloon),
        ffi.Pointer.fromFunction<
            ffi.Pointer<ffi.Void> Function(
                ffi.Pointer<ffi.Void>,
                navigation_automotive_layer_balloon.BalloonNative,
                navigation_balloons_balloon_anchor.BalloonAnchorNative,
                ffi.Float,
                ffi.Bool)>(_NavigationBalloonImageProvider_createImage));
    _pointerToListener[ptr] = obj;
    _listenerToPointer[obj] = ptr;
    _NavigationBalloonImageProvidersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      NavigationBalloonImageProvider? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return _renewNonExsistPointer(foundPointer);
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _NavigationBalloonImageProvidersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationBalloonImageProvider_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Pointer<ffi.Void> Function(
                ffi.Pointer<ffi.Void>,
                navigation_automotive_layer_balloon.BalloonNative,
                ffi.Float,
                ffi.Bool)>>,
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Pointer<ffi.Void> Function(
                ffi.Pointer<ffi.Void>,
                navigation_automotive_layer_balloon.BalloonNative,
                navigation_balloons_balloon_anchor.BalloonAnchorNative,
                ffi.Float,
                ffi.Bool)>>) _NavigationBalloonImageProvider_new = lib.library
    .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>, navigation_automotive_layer_balloon.BalloonNative, ffi.Float, ffi.Bool)>>, ffi.Pointer<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>, navigation_automotive_layer_balloon.BalloonNative, navigation_balloons_balloon_anchor.BalloonAnchorNative, ffi.Float, ffi.Bool)>>)>>('yandex_flutter_navigation_automotive_layer_styling_NavigationBalloonImageProvider_new')
    .asFunction(isLeaf: true);

final void Function(
    ffi
        .Pointer<ffi.Void>) _NavigationBalloonImageProvider_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationBalloonImageProvider_free')
    .asFunction(isLeaf: true);
final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _NavigationBalloonImageProvider_exists = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationBalloonImageProvider_exists')
    .asFunction(isLeaf: true);

ffi.Pointer<ffi.Void> _NavigationBalloonImageProvider_geometriesForBalloon(
    ffi.Pointer<ffi.Void> _ptr,
    navigation_automotive_layer_balloon.BalloonNative balloon,
    core.double scaleFactor,
    core.bool isNightMode) {
  final listener = NavigationBalloonImageProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return navigation_balloons_balloon_geometry
            .BalloonGeometryContainerExtension
        .toNativeVector(listener.geometriesForBalloon(
            navigation_automotive_layer_balloon.BalloonImpl.toPlatform(balloon),
            scaleFactor,
            isNightMode));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

ffi.Pointer<ffi.Void> _NavigationBalloonImageProvider_createImage(
    ffi.Pointer<ffi.Void> _ptr,
    navigation_automotive_layer_balloon.BalloonNative balloon,
    navigation_balloons_balloon_anchor.BalloonAnchorNative anchor,
    core.double scaleFactor,
    core.bool isNightMode) {
  final listener = NavigationBalloonImageProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return to_native.toNativeImageProvider(listener.createImage(
        navigation_automotive_layer_balloon.BalloonImpl.toPlatform(balloon),
        navigation_balloons_balloon_anchor.BalloonAnchorImpl.fromNative(anchor),
        scaleFactor,
        isNightMode));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}
