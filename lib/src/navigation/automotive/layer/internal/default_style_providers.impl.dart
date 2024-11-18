part of 'default_style_providers.dart';

@bindings_annotations.ContainerData(
    toNative: 'InternalDefaultUserPlacemarkStyleProviderImpl.getNativePtr',
    toPlatform:
        '(val) => InternalDefaultUserPlacemarkStyleProviderImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'InternalDefaultUserPlacemarkStyleProvider')
class InternalDefaultUserPlacemarkStyleProviderImpl
    implements InternalDefaultUserPlacemarkStyleProvider, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(
      _InternalDefaultUserPlacemarkStyleProvider_free.cast());

  /// @nodoc
  InternalDefaultUserPlacemarkStyleProviderImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  InternalDefaultUserPlacemarkStyleProviderImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      InternalDefaultUserPlacemarkStyleProvider? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as InternalDefaultUserPlacemarkStyleProviderImpl).ptr;
  }

  @internal

  /// @nodoc
  static InternalDefaultUserPlacemarkStyleProvider? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return InternalDefaultUserPlacemarkStyleProviderImpl.fromNativePtr(ptr);
  }

  void provideStyle(
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  }) {
    _DefaultUserPlacemarkStyleProvider_provideStyle(
      ptr,
      scaleFactor,
      isNightMode,
      navigation_automotive_layer_navigation_layer_mode.NavigationLayerModeImpl
          .toInt(navigationLayerMode),
      mapkit_styling_placemark_style.PlacemarkStyleImpl.getNativePtr(style),
    );
  }
}

final _InternalDefaultUserPlacemarkStyleProvider_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultUserPlacemarkStyleProvider_free');

final void Function(
    ffi.Pointer<ffi.Void>,
    core.double,
    core.bool,
    core.int,
    ffi.Pointer<
        ffi.Void>) _DefaultUserPlacemarkStyleProvider_provideStyle = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float, ffi.Bool,
                    ffi.Int64, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultUserPlacemarkStyleProvider_provideStyle')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _InternalDefaultUserPlacemarkStyleProvider_set = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultUserPlacemarkStyleProvider_set_')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'InternalDefaultRequestPointStyleProviderImpl.getNativePtr',
    toPlatform:
        '(val) => InternalDefaultRequestPointStyleProviderImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'InternalDefaultRequestPointStyleProvider')
class InternalDefaultRequestPointStyleProviderImpl
    implements InternalDefaultRequestPointStyleProvider, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(
      _InternalDefaultRequestPointStyleProvider_free.cast());

  /// @nodoc
  InternalDefaultRequestPointStyleProviderImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  InternalDefaultRequestPointStyleProviderImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      InternalDefaultRequestPointStyleProvider? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as InternalDefaultRequestPointStyleProviderImpl).ptr;
  }

  @internal

  /// @nodoc
  static InternalDefaultRequestPointStyleProvider? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return InternalDefaultRequestPointStyleProviderImpl.fromNativePtr(ptr);
  }

  void provideStyle(
    mapkit_request_point.RequestPointType requestPointType,
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style, {
    required core.int requestPointIndex,
    required core.int requestPointsNumber,
    required core.double scaleFactor,
    required core.bool isSelected,
    required core.bool isNightMode,
  }) {
    _DefaultRequestPointStyleProvider_provideStyle(
      ptr,
      requestPointIndex,
      requestPointsNumber,
      mapkit_request_point.RequestPointTypeImpl.toInt(requestPointType),
      scaleFactor,
      isSelected,
      isNightMode,
      navigation_automotive_layer_navigation_layer_mode.NavigationLayerModeImpl
          .toInt(navigationLayerMode),
      mapkit_styling_placemark_style.PlacemarkStyleImpl.getNativePtr(style),
    );
  }
}

final _InternalDefaultRequestPointStyleProvider_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRequestPointStyleProvider_free');

final void Function(ffi.Pointer<ffi.Void>, core.int, core.int, core.int,
        core.double, core.bool, core.bool, core.int, ffi.Pointer<ffi.Void>)
    _DefaultRequestPointStyleProvider_provideStyle = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Int,
                        ffi.Int,
                        ffi.Int64,
                        ffi.Float,
                        ffi.Bool,
                        ffi.Bool,
                        ffi.Int64,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRequestPointStyleProvider_provideStyle')
        .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _InternalDefaultRequestPointStyleProvider_set = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRequestPointStyleProvider_set_')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'InternalDefaultRoutePinsStyleProviderImpl.getNativePtr',
    toPlatform:
        '(val) => InternalDefaultRoutePinsStyleProviderImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'InternalDefaultRoutePinsStyleProvider')
class InternalDefaultRoutePinsStyleProviderImpl
    implements InternalDefaultRoutePinsStyleProvider, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_InternalDefaultRoutePinsStyleProvider_free.cast());

  /// @nodoc
  InternalDefaultRoutePinsStyleProviderImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  InternalDefaultRoutePinsStyleProviderImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      InternalDefaultRoutePinsStyleProvider? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as InternalDefaultRoutePinsStyleProviderImpl).ptr;
  }

  @internal

  /// @nodoc
  static InternalDefaultRoutePinsStyleProvider? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return InternalDefaultRoutePinsStyleProviderImpl.fromNativePtr(ptr);
  }

  void provideTrafficLightStyle(
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  }) {
    _DefaultRoutePinsStyleProvider_provideTrafficLightStyle(
      ptr,
      scaleFactor,
      isNightMode,
      navigation_automotive_layer_navigation_layer_mode.NavigationLayerModeImpl
          .toInt(navigationLayerMode),
      mapkit_styling_placemark_style.PlacemarkStyleImpl.getNativePtr(style),
    );
  }

  void provideCheckpointStyle(
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  }) {
    _DefaultRoutePinsStyleProvider_provideCheckpointStyle(
      ptr,
      scaleFactor,
      isNightMode,
      navigation_automotive_layer_navigation_layer_mode.NavigationLayerModeImpl
          .toInt(navigationLayerMode),
      mapkit_styling_placemark_style.PlacemarkStyleImpl.getNativePtr(style),
    );
  }

  void provideRailwayCrossingStyle(
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  }) {
    _DefaultRoutePinsStyleProvider_provideRailwayCrossingStyle(
      ptr,
      scaleFactor,
      isNightMode,
      navigation_automotive_layer_navigation_layer_mode.NavigationLayerModeImpl
          .toInt(navigationLayerMode),
      mapkit_styling_placemark_style.PlacemarkStyleImpl.getNativePtr(style),
    );
  }

  void provideRoadInPoorConditionStyle(
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle roadInPoorConditionStartStyle,
    mapkit_styling_placemark_style.PlacemarkStyle roadInPoorConditionEndStyle, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  }) {
    _DefaultRoutePinsStyleProvider_provideRoadInPoorConditionStyle(
      ptr,
      scaleFactor,
      isNightMode,
      navigation_automotive_layer_navigation_layer_mode.NavigationLayerModeImpl
          .toInt(navigationLayerMode),
      mapkit_styling_placemark_style.PlacemarkStyleImpl.getNativePtr(
          roadInPoorConditionStartStyle),
      mapkit_styling_placemark_style.PlacemarkStyleImpl.getNativePtr(
          roadInPoorConditionEndStyle),
    );
  }

  void provideSpeedBumpStyle(
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  }) {
    _DefaultRoutePinsStyleProvider_provideSpeedBumpStyle(
      ptr,
      scaleFactor,
      isNightMode,
      navigation_automotive_layer_navigation_layer_mode.NavigationLayerModeImpl
          .toInt(navigationLayerMode),
      mapkit_styling_placemark_style.PlacemarkStyleImpl.getNativePtr(style),
    );
  }

  void provideTollRoadStyle(
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle tollRoadStartStyle,
    mapkit_styling_placemark_style.PlacemarkStyle tollRoadStartEnd, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  }) {
    _DefaultRoutePinsStyleProvider_provideTollRoadStyle(
      ptr,
      scaleFactor,
      isNightMode,
      navigation_automotive_layer_navigation_layer_mode.NavigationLayerModeImpl
          .toInt(navigationLayerMode),
      mapkit_styling_placemark_style.PlacemarkStyleImpl.getNativePtr(
          tollRoadStartStyle),
      mapkit_styling_placemark_style.PlacemarkStyleImpl.getNativePtr(
          tollRoadStartEnd),
    );
  }

  void provideRestrictedEntryStyle(
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_placemark_style.PlacemarkStyle style, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  }) {
    _DefaultRoutePinsStyleProvider_provideRestrictedEntryStyle(
      ptr,
      scaleFactor,
      isNightMode,
      navigation_automotive_layer_navigation_layer_mode.NavigationLayerModeImpl
          .toInt(navigationLayerMode),
      mapkit_styling_placemark_style.PlacemarkStyleImpl.getNativePtr(style),
    );
  }
}

final _InternalDefaultRoutePinsStyleProvider_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRoutePinsStyleProvider_free');

final void Function(
    ffi.Pointer<ffi.Void>,
    core.double,
    core.bool,
    core.int,
    ffi.Pointer<
        ffi.Void>) _DefaultRoutePinsStyleProvider_provideTrafficLightStyle = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float, ffi.Bool,
                    ffi.Int64, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRoutePinsStyleProvider_provideTrafficLightStyle')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core.double,
    core.bool,
    core.int,
    ffi.Pointer<
        ffi.Void>) _DefaultRoutePinsStyleProvider_provideCheckpointStyle = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float, ffi.Bool,
                    ffi.Int64, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRoutePinsStyleProvider_provideCheckpointStyle')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core.double,
    core.bool,
    core.int,
    ffi.Pointer<
        ffi.Void>) _DefaultRoutePinsStyleProvider_provideRailwayCrossingStyle = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float, ffi.Bool,
                    ffi.Int64, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRoutePinsStyleProvider_provideRailwayCrossingStyle')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.double, core.bool, core.int,
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _DefaultRoutePinsStyleProvider_provideRoadInPoorConditionStyle = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Float,
                        ffi.Bool,
                        ffi.Int64,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRoutePinsStyleProvider_provideRoadInPoorConditionStyle')
        .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core.double,
    core.bool,
    core.int,
    ffi.Pointer<
        ffi.Void>) _DefaultRoutePinsStyleProvider_provideSpeedBumpStyle = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float, ffi.Bool,
                    ffi.Int64, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRoutePinsStyleProvider_provideSpeedBumpStyle')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.double, core.bool, core.int,
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _DefaultRoutePinsStyleProvider_provideTollRoadStyle = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Float,
                        ffi.Bool,
                        ffi.Int64,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRoutePinsStyleProvider_provideTollRoadStyle')
        .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core.double,
    core.bool,
    core.int,
    ffi.Pointer<
        ffi.Void>) _DefaultRoutePinsStyleProvider_provideRestrictedEntryStyle = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float, ffi.Bool,
                    ffi.Int64, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRoutePinsStyleProvider_provideRestrictedEntryStyle')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _InternalDefaultRoutePinsStyleProvider_set = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRoutePinsStyleProvider_set_')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'InternalDefaultRouteViewStyleProviderImpl.getNativePtr',
    toPlatform:
        '(val) => InternalDefaultRouteViewStyleProviderImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'InternalDefaultRouteViewStyleProvider')
class InternalDefaultRouteViewStyleProviderImpl
    implements InternalDefaultRouteViewStyleProvider, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_InternalDefaultRouteViewStyleProvider_free.cast());

  /// @nodoc
  InternalDefaultRouteViewStyleProviderImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  InternalDefaultRouteViewStyleProviderImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      InternalDefaultRouteViewStyleProvider? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as InternalDefaultRouteViewStyleProviderImpl).ptr;
  }

  @internal

  /// @nodoc
  static InternalDefaultRouteViewStyleProvider? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return InternalDefaultRouteViewStyleProviderImpl.fromNativePtr(ptr);
  }

  void provideJamStyle(
    directions_driving_flags.DrivingFlags flags,
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    navigation_automotive_layer_styling_route_view_style_provider
        .NavigationJamStyle
        jamStyle, {
    required core.bool isSelected,
    required core.bool isNightMode,
  }) {
    _DefaultRouteViewStyleProvider_provideJamStyle(
      ptr,
      directions_driving_flags.DrivingFlagsImpl.toNative(flags),
      isSelected,
      isNightMode,
      navigation_automotive_layer_navigation_layer_mode.NavigationLayerModeImpl
          .toInt(navigationLayerMode),
      navigation_automotive_layer_styling_route_view_style_provider
          .NavigationJamStyleImpl.getNativePtr(jamStyle),
    );
  }

  void providePolylineStyle(
    directions_driving_flags.DrivingFlags flags,
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_polyline_style.PolylineStyle polylineStyle, {
    required core.bool isSelected,
    required core.bool isNightMode,
  }) {
    _DefaultRouteViewStyleProvider_providePolylineStyle(
      ptr,
      directions_driving_flags.DrivingFlagsImpl.toNative(flags),
      isSelected,
      isNightMode,
      navigation_automotive_layer_navigation_layer_mode.NavigationLayerModeImpl
          .toInt(navigationLayerMode),
      mapkit_styling_polyline_style.PolylineStyleImpl.getNativePtr(
          polylineStyle),
    );
  }

  void provideManoeuvreStyle(
    directions_driving_flags.DrivingFlags flags,
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    mapkit_styling_arrow_style.ArrowStyle arrowStyle, {
    required core.bool isSelected,
    required core.bool isNightMode,
  }) {
    _DefaultRouteViewStyleProvider_provideManoeuvreStyle(
      ptr,
      directions_driving_flags.DrivingFlagsImpl.toNative(flags),
      isSelected,
      isNightMode,
      navigation_automotive_layer_navigation_layer_mode.NavigationLayerModeImpl
          .toInt(navigationLayerMode),
      mapkit_styling_arrow_style.ArrowStyleImpl.getNativePtr(arrowStyle),
    );
  }

  void provideRouteStyle(
    directions_driving_flags.DrivingFlags flags,
    navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
        navigationLayerMode,
    navigation_automotive_layer_styling_route_view_style_provider
        .NavigationRouteStyle
        routeStyle, {
    required core.bool isSelected,
    required core.bool isNightMode,
  }) {
    _DefaultRouteViewStyleProvider_provideRouteStyle(
      ptr,
      directions_driving_flags.DrivingFlagsImpl.toNative(flags),
      isSelected,
      isNightMode,
      navigation_automotive_layer_navigation_layer_mode.NavigationLayerModeImpl
          .toInt(navigationLayerMode),
      navigation_automotive_layer_styling_route_view_style_provider
          .NavigationRouteStyleImpl.getNativePtr(routeStyle),
    );
  }
}

final _InternalDefaultRouteViewStyleProvider_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRouteViewStyleProvider_free');

final void Function(
    ffi.Pointer<ffi.Void>,
    directions_driving_flags.DrivingFlagsNative,
    core.bool,
    core.bool,
    core.int,
    ffi
        .Pointer<ffi.Void>) _DefaultRouteViewStyleProvider_provideJamStyle = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>,
                    directions_driving_flags.DrivingFlagsNative,
                    ffi.Bool,
                    ffi.Bool,
                    ffi.Int64,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRouteViewStyleProvider_provideJamStyle')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    directions_driving_flags.DrivingFlagsNative,
    core.bool,
    core.bool,
    core.int,
    ffi.Pointer<
        ffi.Void>) _DefaultRouteViewStyleProvider_providePolylineStyle = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>,
                    directions_driving_flags.DrivingFlagsNative,
                    ffi.Bool,
                    ffi.Bool,
                    ffi.Int64,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRouteViewStyleProvider_providePolylineStyle')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    directions_driving_flags.DrivingFlagsNative,
    core.bool,
    core.bool,
    core.int,
    ffi.Pointer<
        ffi.Void>) _DefaultRouteViewStyleProvider_provideManoeuvreStyle = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>,
                    directions_driving_flags.DrivingFlagsNative,
                    ffi.Bool,
                    ffi.Bool,
                    ffi.Int64,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRouteViewStyleProvider_provideManoeuvreStyle')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    directions_driving_flags.DrivingFlagsNative,
    core.bool,
    core.bool,
    core.int,
    ffi.Pointer<
        ffi.Void>) _DefaultRouteViewStyleProvider_provideRouteStyle = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>,
                    directions_driving_flags.DrivingFlagsNative,
                    ffi.Bool,
                    ffi.Bool,
                    ffi.Int64,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRouteViewStyleProvider_provideRouteStyle')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _InternalDefaultRouteViewStyleProvider_set = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRouteViewStyleProvider_set_')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'InternalDefaultBalloonImageProviderImpl.getNativePtr',
    toPlatform:
        '(val) => InternalDefaultBalloonImageProviderImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'InternalDefaultBalloonImageProvider')
class InternalDefaultBalloonImageProviderImpl
    implements InternalDefaultBalloonImageProvider, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_InternalDefaultBalloonImageProvider_free.cast());

  /// @nodoc
  InternalDefaultBalloonImageProviderImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  InternalDefaultBalloonImageProviderImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      InternalDefaultBalloonImageProvider? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as InternalDefaultBalloonImageProviderImpl).ptr;
  }

  @internal

  /// @nodoc
  static InternalDefaultBalloonImageProvider? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return InternalDefaultBalloonImageProviderImpl.fromNativePtr(ptr);
  }

  core.List<navigation_balloons_balloon_geometry.BalloonGeometry>
      geometriesForBalloon(
    navigation_automotive_layer_balloon.Balloon balloon, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  }) {
    final result = _DefaultBalloonImageProvider_geometriesForBalloon(
        ptr,
        navigation_automotive_layer_balloon.BalloonImpl.toNative(balloon),
        scaleFactor,
        isNightMode);
    return navigation_balloons_balloon_geometry
        .BalloonGeometryContainerExtension.toPlatformVector(result);
  }

  image_wrapper.ImageWrapper createImage(
    navigation_automotive_layer_balloon.Balloon balloon,
    navigation_balloons_balloon_anchor.BalloonAnchor anchor, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  }) {
    final result = _DefaultBalloonImageProvider_createImage(
        ptr,
        navigation_automotive_layer_balloon.BalloonImpl.toNative(balloon),
        navigation_balloons_balloon_anchor.BalloonAnchorImpl.toNative(anchor),
        scaleFactor,
        isNightMode);
    return to_platform.toPlatformBitmap(result);
  }
}

final _InternalDefaultBalloonImageProvider_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultBalloonImageProvider_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    navigation_automotive_layer_balloon.BalloonNative,
    core.double,
    core
        .bool) _DefaultBalloonImageProvider_geometriesForBalloon = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    navigation_automotive_layer_balloon.BalloonNative,
                    ffi.Float,
                    ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultBalloonImageProvider_geometriesForBalloon')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    navigation_automotive_layer_balloon.BalloonNative,
    navigation_balloons_balloon_anchor.BalloonAnchorNative,
    core.double,
    core
        .bool) _DefaultBalloonImageProvider_createImage = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    navigation_automotive_layer_balloon.BalloonNative,
                    navigation_balloons_balloon_anchor.BalloonAnchorNative,
                    ffi.Float,
                    ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultBalloonImageProvider_createImage')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _InternalDefaultBalloonImageProvider_set = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultBalloonImageProvider_set_')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'InternalDefaultHighlightStyleProviderImpl.getNativePtr',
    toPlatform:
        '(val) => InternalDefaultHighlightStyleProviderImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'InternalDefaultHighlightStyleProvider')
class InternalDefaultHighlightStyleProviderImpl
    implements InternalDefaultHighlightStyleProvider, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_InternalDefaultHighlightStyleProvider_free.cast());

  /// @nodoc
  InternalDefaultHighlightStyleProviderImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  InternalDefaultHighlightStyleProviderImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      InternalDefaultHighlightStyleProvider? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as InternalDefaultHighlightStyleProviderImpl).ptr;
  }

  @internal

  /// @nodoc
  static InternalDefaultHighlightStyleProvider? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return InternalDefaultHighlightStyleProviderImpl.fromNativePtr(ptr);
  }

  navigation_automotive_layer_styling_highlight_style_provider
      .SpeedControlHighlightStyle? provideSpeedControlStyle(
    navigation_automotive_layer_styling_highlight_style_provider.HighlightMode
        highlightMode, {
    required core.bool isNightMode,
  }) {
    final result = _DefaultHighlightStyleProvider_provideSpeedControlStyle(
      ptr,
      isNightMode,
      navigation_automotive_layer_styling_highlight_style_provider
          .HighlightModeImpl.toInt(highlightMode),
    );
    return navigation_automotive_layer_styling_highlight_style_provider
        .SpeedControlHighlightStyleImpl.fromPointer(result);
  }
}

final _InternalDefaultHighlightStyleProvider_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultHighlightStyleProvider_free');

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    core.bool,
    core
        .int) _DefaultHighlightStyleProvider_provideSpeedControlStyle = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>, ffi.Bool, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultHighlightStyleProvider_provideSpeedControlStyle')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _InternalDefaultHighlightStyleProvider_set = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultHighlightStyleProvider_set_')
    .asFunction(isLeaf: true);

InternalDefaultUserPlacemarkStyleProvider _userPlacemarkStyleProvider() {
  final result = _DefaultStyleProvidersFactory_userPlacemarkStyleProvider();
  return InternalDefaultUserPlacemarkStyleProviderImpl.fromNativePtr(result);
}

InternalDefaultRequestPointStyleProvider _requestPointStyleProvider() {
  final result = _DefaultStyleProvidersFactory_requestPointStyleProvider();
  return InternalDefaultRequestPointStyleProviderImpl.fromNativePtr(result);
}

InternalDefaultRoutePinsStyleProvider _routePinsStyleProvider() {
  final result = _DefaultStyleProvidersFactory_routePinsStyleProvider();
  return InternalDefaultRoutePinsStyleProviderImpl.fromNativePtr(result);
}

InternalDefaultRouteViewStyleProvider _routeViewStyleProvider() {
  final result = _DefaultStyleProvidersFactory_routeViewStyleProvider();
  return InternalDefaultRouteViewStyleProviderImpl.fromNativePtr(result);
}

InternalDefaultBalloonImageProvider _balloonImageProvider() {
  final result = _DefaultStyleProvidersFactory_balloonImageProvider();
  return InternalDefaultBalloonImageProviderImpl.fromNativePtr(result);
}

InternalDefaultHighlightStyleProvider _highlightStyleProvider() {
  final result = _DefaultStyleProvidersFactory_highlightStyleProvider();
  return InternalDefaultHighlightStyleProviderImpl.fromNativePtr(result);
}

final ffi.Pointer<ffi.Void> Function()
    _DefaultStyleProvidersFactory_userPlacemarkStyleProvider = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
            'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultStyleProvidersFactory_userPlacemarkStyleProvider')
        .asFunction();
final ffi.Pointer<ffi.Void> Function()
    _DefaultStyleProvidersFactory_requestPointStyleProvider = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
            'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultStyleProvidersFactory_requestPointStyleProvider')
        .asFunction();
final ffi.Pointer<ffi.Void> Function()
    _DefaultStyleProvidersFactory_routePinsStyleProvider = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
            'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultStyleProvidersFactory_routePinsStyleProvider')
        .asFunction();
final ffi.Pointer<ffi.Void> Function()
    _DefaultStyleProvidersFactory_routeViewStyleProvider = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
            'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultStyleProvidersFactory_routeViewStyleProvider')
        .asFunction();
final ffi.Pointer<ffi.Void> Function()
    _DefaultStyleProvidersFactory_balloonImageProvider = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
            'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultStyleProvidersFactory_balloonImageProvider')
        .asFunction();
final ffi.Pointer<ffi.Void> Function()
    _DefaultStyleProvidersFactory_highlightStyleProvider = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
            'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultStyleProvidersFactory_highlightStyleProvider')
        .asFunction();
