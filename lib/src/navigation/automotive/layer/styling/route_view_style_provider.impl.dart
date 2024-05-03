part of 'route_view_style_provider.dart';

@bindings_annotations
    .WeakInterface('navigation.automotive.layer.styling.JamStyle')
@bindings_annotations.ContainerData(
    toNative: 'NavigationJamStyleImpl.getNativePtr',
    toPlatform:
        '(val) => NavigationJamStyleImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'NavigationJamStyle')
class NavigationJamStyleImpl implements NavigationJamStyle, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_NavigationJamStyle_free.cast());

  /// @nodoc
  NavigationJamStyleImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  NavigationJamStyleImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory NavigationJamStyleImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(NavigationJamStyle? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as NavigationJamStyleImpl).ptr;
  }

  core.bool isValid() {
    return _NavigationJamStyle_check(ptr);
  }

  @internal

  /// @nodoc
  static NavigationJamStyle? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return NavigationJamStyleImpl.fromNativePtr(ptr);
  }

  void setColors(core.List<mapkit_navigation_jam_style.JamTypeColor> colors) {
    _JamStyle_setColors(
        ptr,
        mapkit_navigation_jam_style.JamTypeColorContainerExtension
            .toNativeVector(colors));
  }

  void setGradientLength(core.double gradientLength) {
    _JamStyle_setGradientLength(ptr, gradientLength);
  }
}

final _NavigationJamStyle_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_navigation_automotive_layer_styling_NavigationJamStyle_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _NavigationJamStyle_check = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationJamStyle_check')
    .asFunction(isLeaf: true);

final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _JamStyle_setColors = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationJamStyle_setColors')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .double) _JamStyle_setGradientLength = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationJamStyle_setGradientLength')
    .asFunction();

@bindings_annotations
    .WeakInterface('navigation.automotive.layer.styling.RouteStyle')
@bindings_annotations.ContainerData(
    toNative: 'NavigationRouteStyleImpl.getNativePtr',
    toPlatform:
        '(val) => NavigationRouteStyleImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'NavigationRouteStyle')
class NavigationRouteStyleImpl
    implements NavigationRouteStyle, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_NavigationRouteStyle_free.cast());

  /// @nodoc
  NavigationRouteStyleImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  NavigationRouteStyleImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory NavigationRouteStyleImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(NavigationRouteStyle? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as NavigationRouteStyleImpl).ptr;
  }

  core.bool isValid() {
    return _NavigationRouteStyle_check(ptr);
  }

  @internal

  /// @nodoc
  static NavigationRouteStyle? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return NavigationRouteStyleImpl.fromNativePtr(ptr);
  }

  void setShowRoute(core.bool showRoute) {
    _RouteStyle_setShowRoute(ptr, showRoute);
  }

  void setShowJams(core.bool showJams) {
    _RouteStyle_setShowJams(ptr, showJams);
  }

  void setShowBalloons(core.bool showBalloons) {
    _RouteStyle_setShowBalloons(ptr, showBalloons);
  }

  void setShowRoadEvents(core.bool showRoadEvents) {
    _RouteStyle_setShowRoadEvents(ptr, showRoadEvents);
  }

  void setShowTrafficLights(core.bool showTrafficLights) {
    _RouteStyle_setShowTrafficLights(ptr, showTrafficLights);
  }

  void setShowCheckpoints(core.bool showCheckpoints) {
    _RouteStyle_setShowCheckpoints(ptr, showCheckpoints);
  }

  void setShowRailwayCrossings(core.bool showRailwayCrossings) {
    _RouteStyle_setShowRailwayCrossings(ptr, showRailwayCrossings);
  }

  void setShowSpeedBumps(core.bool showSpeedBumps) {
    _RouteStyle_setShowSpeedBumps(ptr, showSpeedBumps);
  }

  void setShowRoadsInPoorCondition(core.bool showRoadsInPoorCondition) {
    _RouteStyle_setShowRoadsInPoorCondition(ptr, showRoadsInPoorCondition);
  }

  void setShowManoeuvres(core.bool showManoeuvres) {
    _RouteStyle_setShowManoeuvres(ptr, showManoeuvres);
  }
}

final _NavigationRouteStyle_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_navigation_automotive_layer_styling_NavigationRouteStyle_free');
final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _NavigationRouteStyle_check = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRouteStyle_check')
    .asFunction(isLeaf: true);

final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _RouteStyle_setShowRoute = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRouteStyle_setShowRoute')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _RouteStyle_setShowJams = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRouteStyle_setShowJams')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _RouteStyle_setShowBalloons = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRouteStyle_setShowBalloons')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _RouteStyle_setShowRoadEvents = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRouteStyle_setShowRoadEvents')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _RouteStyle_setShowTrafficLights = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRouteStyle_setShowTrafficLights')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _RouteStyle_setShowCheckpoints = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRouteStyle_setShowCheckpoints')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _RouteStyle_setShowRailwayCrossings = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRouteStyle_setShowRailwayCrossings')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _RouteStyle_setShowSpeedBumps = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRouteStyle_setShowSpeedBumps')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _RouteStyle_setShowRoadsInPoorCondition = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRouteStyle_setShowRoadsInPoorCondition')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _RouteStyle_setShowManoeuvres = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRouteStyle_setShowManoeuvres')
    .asFunction();

extension NavigationRouteViewStyleProviderImpl
    on NavigationRouteViewStyleProvider {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, NavigationRouteViewStyleProvider>{};
  static final _listenerToPointer =
      <NavigationRouteViewStyleProvider, ffi.Pointer<ffi.Void>>{};

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _NavigationRouteViewStyleProvider_free(ptr);
    final listener = _pointerToListener[ptr];
    _listenerToPointer.remove(listener);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _renewNonExsistPointer(
      ffi.Pointer<ffi.Void> ptr) {
    if (!_NavigationRouteViewStyleProvider_exists(ptr)) {
      final listener = _pointerToListener[ptr];
      _pointerToListener.remove(ptr);
      _listenerToPointer.remove(listener);
      return _newNativeObject(listener!);
    }
    return ptr;
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(
      NavigationRouteViewStyleProvider obj) {
    final ptr = _NavigationRouteViewStyleProvider_new(
        ffi.Pointer.fromFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              directions_driving_flags.DrivingFlagsNative,
              ffi.Bool,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>(_NavigationRouteViewStyleProvider_provideJamStyle),
        ffi.Pointer.fromFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              directions_driving_flags.DrivingFlagsNative,
              ffi.Bool,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>(_NavigationRouteViewStyleProvider_providePolylineStyle),
        ffi.Pointer.fromFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              directions_driving_flags.DrivingFlagsNative,
              ffi.Bool,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>(_NavigationRouteViewStyleProvider_provideManoeuvreStyle),
        ffi.Pointer.fromFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              directions_driving_flags.DrivingFlagsNative,
              ffi.Bool,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>(_NavigationRouteViewStyleProvider_provideRouteStyle));
    _pointerToListener[ptr] = obj;
    _listenerToPointer[obj] = ptr;
    _NavigationRouteViewStyleProvidersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      NavigationRouteViewStyleProvider? obj) {
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
        .int) _NavigationRouteViewStyleProvidersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRouteViewStyleProvider_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              directions_driving_flags.DrivingFlagsNative,
              ffi.Bool,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>>,
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              directions_driving_flags.DrivingFlagsNative,
              ffi.Bool,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>>,
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              directions_driving_flags.DrivingFlagsNative,
              ffi.Bool,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>>,
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Void Function(
              ffi.Pointer<ffi.Void>,
              directions_driving_flags.DrivingFlagsNative,
              ffi.Bool,
              ffi.Bool,
              ffi.Pointer<ffi.Void>,
            )>>) _NavigationRouteViewStyleProvider_new = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Void Function(
                              ffi.Pointer<ffi.Void>,
                              directions_driving_flags.DrivingFlagsNative,
                              ffi.Bool,
                              ffi.Bool,
                              ffi.Pointer<ffi.Void>,
                            )>>,
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Void Function(
                              ffi.Pointer<ffi.Void>,
                              directions_driving_flags.DrivingFlagsNative,
                              ffi.Bool,
                              ffi.Bool,
                              ffi.Pointer<ffi.Void>,
                            )>>,
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Void Function(
                              ffi.Pointer<ffi.Void>,
                              directions_driving_flags.DrivingFlagsNative,
                              ffi.Bool,
                              ffi.Bool,
                              ffi.Pointer<ffi.Void>,
                            )>>,
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Void Function(
                              ffi.Pointer<ffi.Void>,
                              directions_driving_flags.DrivingFlagsNative,
                              ffi.Bool,
                              ffi.Bool,
                              ffi.Pointer<ffi.Void>,
                            )>>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRouteViewStyleProvider_new')
    .asFunction(isLeaf: true);

final void Function(
    ffi
        .Pointer<ffi.Void>) _NavigationRouteViewStyleProvider_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRouteViewStyleProvider_free')
    .asFunction(isLeaf: true);
final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _NavigationRouteViewStyleProvider_exists = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_styling_NavigationRouteViewStyleProvider_exists')
    .asFunction(isLeaf: true);

void _NavigationRouteViewStyleProvider_provideJamStyle(
  ffi.Pointer<ffi.Void> _ptr,
  directions_driving_flags.DrivingFlagsNative flags,
  core.bool isSelected,
  core.bool isNightMode,
  ffi.Pointer<ffi.Void> jamStyle,
) {
  final listener =
      NavigationRouteViewStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.provideJamStyle(
      directions_driving_flags.DrivingFlagsImpl.fromNative(flags),
      isSelected,
      isNightMode,
      NavigationJamStyleImpl.fromNativePtr(jamStyle),
    );
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationRouteViewStyleProvider_providePolylineStyle(
  ffi.Pointer<ffi.Void> _ptr,
  directions_driving_flags.DrivingFlagsNative flags,
  core.bool isSelected,
  core.bool isNightMode,
  ffi.Pointer<ffi.Void> polylineStyle,
) {
  final listener =
      NavigationRouteViewStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.providePolylineStyle(
      directions_driving_flags.DrivingFlagsImpl.fromNative(flags),
      isSelected,
      isNightMode,
      mapkit_styling_polyline_style.PolylineStyleImpl.fromNativePtr(
          polylineStyle),
    );
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationRouteViewStyleProvider_provideManoeuvreStyle(
  ffi.Pointer<ffi.Void> _ptr,
  directions_driving_flags.DrivingFlagsNative flags,
  core.bool isSelected,
  core.bool isNightMode,
  ffi.Pointer<ffi.Void> arrowStyle,
) {
  final listener =
      NavigationRouteViewStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.provideManoeuvreStyle(
      directions_driving_flags.DrivingFlagsImpl.fromNative(flags),
      isSelected,
      isNightMode,
      mapkit_styling_arrow_style.ArrowStyleImpl.fromNativePtr(arrowStyle),
    );
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationRouteViewStyleProvider_provideRouteStyle(
  ffi.Pointer<ffi.Void> _ptr,
  directions_driving_flags.DrivingFlagsNative flags,
  core.bool isSelected,
  core.bool isNightMode,
  ffi.Pointer<ffi.Void> routeStyle,
) {
  final listener =
      NavigationRouteViewStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.provideRouteStyle(
      directions_driving_flags.DrivingFlagsImpl.fromNative(flags),
      isSelected,
      isNightMode,
      NavigationRouteStyleImpl.fromNativePtr(routeStyle),
    );
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}
