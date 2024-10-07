part of 'style_provider.dart';

extension NavigationUserPlacemarkStyleProviderImpl
    on NavigationUserPlacemarkStyleProvider {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, NavigationUserPlacemarkStyleProvider>{};
  static final _listenerToPointer =
      <NavigationUserPlacemarkStyleProvider, ffi.Pointer<ffi.Void>>{};

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _NavigationUserPlacemarkStyleProvider_free(ptr);
    final listener = _pointerToListener[ptr];
    _listenerToPointer.remove(listener);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _renewNonExsistPointer(
      ffi.Pointer<ffi.Void> ptr) {
    if (!_NavigationUserPlacemarkStyleProvider_exists(ptr)) {
      final listener = _pointerToListener[ptr];
      _pointerToListener.remove(ptr);
      _listenerToPointer.remove(listener);
      return _newNativeObject(listener!);
    }
    return ptr;
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(
      NavigationUserPlacemarkStyleProvider obj) {
    final ptr =
        _NavigationUserPlacemarkStyleProvider_new(ffi.Pointer.fromFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              ffi.Float,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>(_NavigationUserPlacemarkStyleProvider_provideStyle));
    _pointerToListener[ptr] = obj;
    _listenerToPointer[obj] = ptr;
    _NavigationUserPlacemarkStyleProvidersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      NavigationUserPlacemarkStyleProvider? obj) {
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
        .int) _NavigationUserPlacemarkStyleProvidersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationUserPlacemarkStyleProvider_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              ffi.Float,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>>) _NavigationUserPlacemarkStyleProvider_new = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Void Function(
                              ffi.Pointer<ffi.Void>,
                              ffi.Float,
                              ffi.Bool,
                              ffi.Pointer<ffi.Void>,
                            )>>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationUserPlacemarkStyleProvider_new')
    .asFunction(isLeaf: true);

final void Function(
    ffi
        .Pointer<ffi.Void>) _NavigationUserPlacemarkStyleProvider_free = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationUserPlacemarkStyleProvider_free')
    .asFunction(isLeaf: true);
final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _NavigationUserPlacemarkStyleProvider_exists = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationUserPlacemarkStyleProvider_exists')
    .asFunction(isLeaf: true);

void _NavigationUserPlacemarkStyleProvider_provideStyle(
  ffi.Pointer<ffi.Void> _ptr,
  core.double scaleFactor,
  core.bool isNightMode,
  ffi.Pointer<ffi.Void> style,
) {
  final listener =
      NavigationUserPlacemarkStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.provideStyle(
      scaleFactor,
      isNightMode,
      mapkit_styling_placemark_style.PlacemarkStyleImpl.fromNativePtr(style),
    );
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

extension NavigationRequestPointStyleProviderImpl
    on NavigationRequestPointStyleProvider {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, NavigationRequestPointStyleProvider>{};
  static final _listenerToPointer =
      <NavigationRequestPointStyleProvider, ffi.Pointer<ffi.Void>>{};

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _NavigationRequestPointStyleProvider_free(ptr);
    final listener = _pointerToListener[ptr];
    _listenerToPointer.remove(listener);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _renewNonExsistPointer(
      ffi.Pointer<ffi.Void> ptr) {
    if (!_NavigationRequestPointStyleProvider_exists(ptr)) {
      final listener = _pointerToListener[ptr];
      _pointerToListener.remove(ptr);
      _listenerToPointer.remove(listener);
      return _newNativeObject(listener!);
    }
    return ptr;
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(
      NavigationRequestPointStyleProvider obj) {
    final ptr =
        _NavigationRequestPointStyleProvider_new(ffi.Pointer.fromFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              ffi.Int,
              ffi.Int,
              ffi.Int64,
              ffi.Float,
              ffi.Bool,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>(_NavigationRequestPointStyleProvider_provideStyle));
    _pointerToListener[ptr] = obj;
    _listenerToPointer[obj] = ptr;
    _NavigationRequestPointStyleProvidersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      NavigationRequestPointStyleProvider? obj) {
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
        .int) _NavigationRequestPointStyleProvidersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRequestPointStyleProvider_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              ffi.Int,
              ffi.Int,
              ffi.Int64,
              ffi.Float,
              ffi.Bool,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>>) _NavigationRequestPointStyleProvider_new = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Void Function(
                              ffi.Pointer<ffi.Void>,
                              ffi.Int,
                              ffi.Int,
                              ffi.Int64,
                              ffi.Float,
                              ffi.Bool,
                              ffi.Bool,
                              ffi.Pointer<ffi.Void>,
                            )>>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRequestPointStyleProvider_new')
    .asFunction(isLeaf: true);

final void Function(
    ffi
        .Pointer<ffi.Void>) _NavigationRequestPointStyleProvider_free = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRequestPointStyleProvider_free')
    .asFunction(isLeaf: true);
final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _NavigationRequestPointStyleProvider_exists = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRequestPointStyleProvider_exists')
    .asFunction(isLeaf: true);

void _NavigationRequestPointStyleProvider_provideStyle(
  ffi.Pointer<ffi.Void> _ptr,
  core.int requestPointIndex,
  core.int requestPointsNumber,
  core.int requestPointType,
  core.double scaleFactor,
  core.bool isSelected,
  core.bool isNightMode,
  ffi.Pointer<ffi.Void> style,
) {
  final listener =
      NavigationRequestPointStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.provideStyle(
      requestPointIndex,
      requestPointsNumber,
      mapkit_request_point.RequestPointTypeImpl.fromInt(requestPointType),
      scaleFactor,
      isSelected,
      isNightMode,
      mapkit_styling_placemark_style.PlacemarkStyleImpl.fromNativePtr(style),
    );
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

extension NavigationRoutePinsStyleProviderImpl
    on NavigationRoutePinsStyleProvider {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, NavigationRoutePinsStyleProvider>{};
  static final _listenerToPointer =
      <NavigationRoutePinsStyleProvider, ffi.Pointer<ffi.Void>>{};

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _NavigationRoutePinsStyleProvider_free(ptr);
    final listener = _pointerToListener[ptr];
    _listenerToPointer.remove(listener);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _renewNonExsistPointer(
      ffi.Pointer<ffi.Void> ptr) {
    if (!_NavigationRoutePinsStyleProvider_exists(ptr)) {
      final listener = _pointerToListener[ptr];
      _pointerToListener.remove(ptr);
      _listenerToPointer.remove(listener);
      return _newNativeObject(listener!);
    }
    return ptr;
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(
      NavigationRoutePinsStyleProvider obj) {
    final ptr = _NavigationRoutePinsStyleProvider_new(
        ffi.Pointer.fromFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              ffi.Float,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>(_NavigationRoutePinsStyleProvider_provideTrafficLightStyle),
        ffi.Pointer.fromFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              ffi.Float,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>(_NavigationRoutePinsStyleProvider_provideCheckpointStyle),
        ffi.Pointer.fromFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              ffi.Float,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>(_NavigationRoutePinsStyleProvider_provideRailwayCrossingStyle),
        ffi.Pointer.fromFunction<
                ffi.Void Function(
                  ffi.Pointer<ffi.Void>,
                  ffi.Float,
                  ffi.Bool,
                  ffi.Pointer<ffi.Void>,
                  ffi.Pointer<ffi.Void>,
                )>(
            _NavigationRoutePinsStyleProvider_provideRoadInPoorConditionStyle),
        ffi.Pointer.fromFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              ffi.Float,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>,
            )>(_NavigationRoutePinsStyleProvider_provideTollRoadStyle),
        ffi.Pointer.fromFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              ffi.Float,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>(_NavigationRoutePinsStyleProvider_provideRestrictedEntryStyle),
        ffi.Pointer.fromFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              ffi.Float,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>(_NavigationRoutePinsStyleProvider_provideSpeedBumpStyle));
    _pointerToListener[ptr] = obj;
    _listenerToPointer[obj] = ptr;
    _NavigationRoutePinsStyleProvidersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      NavigationRoutePinsStyleProvider? obj) {
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
        .int) _NavigationRoutePinsStyleProvidersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRoutePinsStyleProvider_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              ffi.Float,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>>,
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              ffi.Float,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>>,
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              ffi.Float,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>>,
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              ffi.Float,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>,
            )>>,
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              ffi.Float,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>,
            )>>,
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              ffi.Float,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>>,
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              ffi.Float,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>>) _NavigationRoutePinsStyleProvider_new = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Void Function(
                              ffi.Pointer<ffi.Void>,
                              ffi.Float,
                              ffi.Bool,
                              ffi.Pointer<ffi.Void>,
                            )>>,
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Void Function(
                              ffi.Pointer<ffi.Void>,
                              ffi.Float,
                              ffi.Bool,
                              ffi.Pointer<ffi.Void>,
                            )>>,
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Void Function(
                              ffi.Pointer<ffi.Void>,
                              ffi.Float,
                              ffi.Bool,
                              ffi.Pointer<ffi.Void>,
                            )>>,
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Void Function(
                              ffi.Pointer<ffi.Void>,
                              ffi.Float,
                              ffi.Bool,
                              ffi.Pointer<ffi.Void>,
                              ffi.Pointer<ffi.Void>,
                            )>>,
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Void Function(
                              ffi.Pointer<ffi.Void>,
                              ffi.Float,
                              ffi.Bool,
                              ffi.Pointer<ffi.Void>,
                              ffi.Pointer<ffi.Void>,
                            )>>,
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Void Function(
                              ffi.Pointer<ffi.Void>,
                              ffi.Float,
                              ffi.Bool,
                              ffi.Pointer<ffi.Void>,
                            )>>,
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Void Function(
                              ffi.Pointer<ffi.Void>,
                              ffi.Float,
                              ffi.Bool,
                              ffi.Pointer<ffi.Void>,
                            )>>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRoutePinsStyleProvider_new')
    .asFunction(isLeaf: true);

final void Function(
    ffi
        .Pointer<ffi.Void>) _NavigationRoutePinsStyleProvider_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRoutePinsStyleProvider_free')
    .asFunction(isLeaf: true);
final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _NavigationRoutePinsStyleProvider_exists = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRoutePinsStyleProvider_exists')
    .asFunction(isLeaf: true);

void _NavigationRoutePinsStyleProvider_provideTrafficLightStyle(
  ffi.Pointer<ffi.Void> _ptr,
  core.double scaleFactor,
  core.bool isNightMode,
  ffi.Pointer<ffi.Void> style,
) {
  final listener =
      NavigationRoutePinsStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.provideTrafficLightStyle(
      scaleFactor,
      isNightMode,
      mapkit_styling_placemark_style.PlacemarkStyleImpl.fromNativePtr(style),
    );
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationRoutePinsStyleProvider_provideCheckpointStyle(
  ffi.Pointer<ffi.Void> _ptr,
  core.double scaleFactor,
  core.bool isNightMode,
  ffi.Pointer<ffi.Void> style,
) {
  final listener =
      NavigationRoutePinsStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.provideCheckpointStyle(
      scaleFactor,
      isNightMode,
      mapkit_styling_placemark_style.PlacemarkStyleImpl.fromNativePtr(style),
    );
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationRoutePinsStyleProvider_provideRailwayCrossingStyle(
  ffi.Pointer<ffi.Void> _ptr,
  core.double scaleFactor,
  core.bool isNightMode,
  ffi.Pointer<ffi.Void> style,
) {
  final listener =
      NavigationRoutePinsStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.provideRailwayCrossingStyle(
      scaleFactor,
      isNightMode,
      mapkit_styling_placemark_style.PlacemarkStyleImpl.fromNativePtr(style),
    );
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationRoutePinsStyleProvider_provideRoadInPoorConditionStyle(
  ffi.Pointer<ffi.Void> _ptr,
  core.double scaleFactor,
  core.bool isNightMode,
  ffi.Pointer<ffi.Void> roadInPoorConditionStartStyle,
  ffi.Pointer<ffi.Void> roadInPoorConditionEndStyle,
) {
  final listener =
      NavigationRoutePinsStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.provideRoadInPoorConditionStyle(
      scaleFactor,
      isNightMode,
      mapkit_styling_placemark_style.PlacemarkStyleImpl.fromNativePtr(
          roadInPoorConditionStartStyle),
      mapkit_styling_placemark_style.PlacemarkStyleImpl.fromNativePtr(
          roadInPoorConditionEndStyle),
    );
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationRoutePinsStyleProvider_provideTollRoadStyle(
  ffi.Pointer<ffi.Void> _ptr,
  core.double scaleFactor,
  core.bool isNightMode,
  ffi.Pointer<ffi.Void> tollRoadStartStyle,
  ffi.Pointer<ffi.Void> tollRoadEndStyle,
) {
  final listener =
      NavigationRoutePinsStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.provideTollRoadStyle(
      scaleFactor,
      isNightMode,
      mapkit_styling_placemark_style.PlacemarkStyleImpl.fromNativePtr(
          tollRoadStartStyle),
      mapkit_styling_placemark_style.PlacemarkStyleImpl.fromNativePtr(
          tollRoadEndStyle),
    );
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationRoutePinsStyleProvider_provideRestrictedEntryStyle(
  ffi.Pointer<ffi.Void> _ptr,
  core.double scaleFactor,
  core.bool isNightMode,
  ffi.Pointer<ffi.Void> style,
) {
  final listener =
      NavigationRoutePinsStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.provideRestrictedEntryStyle(
      scaleFactor,
      isNightMode,
      mapkit_styling_placemark_style.PlacemarkStyleImpl.fromNativePtr(style),
    );
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationRoutePinsStyleProvider_provideSpeedBumpStyle(
  ffi.Pointer<ffi.Void> _ptr,
  core.double scaleFactor,
  core.bool isNightMode,
  ffi.Pointer<ffi.Void> style,
) {
  final listener =
      NavigationRoutePinsStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.provideSpeedBumpStyle(
      scaleFactor,
      isNightMode,
      mapkit_styling_placemark_style.PlacemarkStyleImpl.fromNativePtr(style),
    );
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

extension NavigationStyleProviderImpl on NavigationStyleProvider {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, NavigationStyleProvider>{};
  static final _listenerToPointer =
      <NavigationStyleProvider, ffi.Pointer<ffi.Void>>{};

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _NavigationStyleProvider_free(ptr);
    final listener = _pointerToListener[ptr];
    _listenerToPointer.remove(listener);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _renewNonExsistPointer(
      ffi.Pointer<ffi.Void> ptr) {
    if (!_NavigationStyleProvider_exists(ptr)) {
      final listener = _pointerToListener[ptr];
      _pointerToListener.remove(ptr);
      _listenerToPointer.remove(listener);
      return _newNativeObject(listener!);
    }
    return ptr;
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(NavigationStyleProvider obj) {
    final ptr = _NavigationStyleProvider_new(
        ffi.Pointer.fromFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>(
            _NavigationStyleProvider_routeViewStyleProvider),
        ffi.Pointer.fromFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>(
            _NavigationStyleProvider_balloonImageProvider),
        ffi.Pointer.fromFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>(
            _NavigationStyleProvider_requestPointStyleProvider),
        ffi.Pointer.fromFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>(
            _NavigationStyleProvider_userPlacemarkStyleProvider),
        ffi.Pointer.fromFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>(
            _NavigationStyleProvider_routePinsStyleProvider));
    _pointerToListener[ptr] = obj;
    _listenerToPointer[obj] = ptr;
    _NavigationStyleProvidersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(NavigationStyleProvider? obj) {
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
        .int) _NavigationStyleProvidersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationStyleProvider_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<
            ffi
            .NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<
            ffi
            .NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<
            ffi
            .NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<
            ffi
            .NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>)
    _NavigationStyleProvider_new = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>, ffi.Pointer<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_navigation_automotive_layer_styling_NavigationStyleProvider_new')
        .asFunction(isLeaf: true);

final void Function(ffi.Pointer<ffi.Void>) _NavigationStyleProvider_free = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationStyleProvider_free')
    .asFunction(isLeaf: true);
final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _NavigationStyleProvider_exists = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationStyleProvider_exists')
    .asFunction(isLeaf: true);

ffi.Pointer<ffi.Void> _NavigationStyleProvider_routeViewStyleProvider(
    ffi.Pointer<ffi.Void> _ptr) {
  final listener = NavigationStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return navigation_automotive_layer_styling_route_view_style_provider
            .NavigationRouteViewStyleProviderImpl
        .getNativePtr(listener.routeViewStyleProvider());
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

ffi.Pointer<ffi.Void> _NavigationStyleProvider_balloonImageProvider(
    ffi.Pointer<ffi.Void> _ptr) {
  final listener = NavigationStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return navigation_automotive_layer_styling_balloon_image_provider
            .NavigationBalloonImageProviderImpl
        .getNativePtr(listener.balloonImageProvider());
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

ffi.Pointer<ffi.Void> _NavigationStyleProvider_requestPointStyleProvider(
    ffi.Pointer<ffi.Void> _ptr) {
  final listener = NavigationStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return NavigationRequestPointStyleProviderImpl.getNativePtr(
        listener.requestPointStyleProvider());
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

ffi.Pointer<ffi.Void> _NavigationStyleProvider_userPlacemarkStyleProvider(
    ffi.Pointer<ffi.Void> _ptr) {
  final listener = NavigationStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return NavigationUserPlacemarkStyleProviderImpl.getNativePtr(
        listener.userPlacemarkStyleProvider());
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

ffi.Pointer<ffi.Void> _NavigationStyleProvider_routePinsStyleProvider(
    ffi.Pointer<ffi.Void> _ptr) {
  final listener = NavigationStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return NavigationRoutePinsStyleProviderImpl.getNativePtr(
        listener.routePinsStyleProvider());
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}
