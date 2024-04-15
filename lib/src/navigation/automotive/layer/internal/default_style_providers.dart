import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/image/image_wrapper.dart'
    as image_wrapper;
import 'package:yandex_maps_navikit/src/directions/driving/flags.dart'
    as directions_driving_flags;
import 'package:yandex_maps_navikit/src/mapkit/request_point.dart'
    as mapkit_request_point;
import 'package:yandex_maps_navikit/src/mapkit/styling/arrow_style.dart'
    as mapkit_styling_arrow_style;
import 'package:yandex_maps_navikit/src/mapkit/styling/placemark_style.dart'
    as mapkit_styling_placemark_style;
import 'package:yandex_maps_navikit/src/mapkit/styling/polyline_style.dart'
    as mapkit_styling_polyline_style;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/balloon.dart'
    as navigation_automotive_layer_balloon;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/styling/route_view_style_provider.dart'
    as navigation_automotive_layer_styling_route_view_style_provider;
import 'package:yandex_maps_navikit/src/navigation/balloons/balloon_anchor.dart'
    as navigation_balloons_balloon_anchor;
import 'package:yandex_maps_navikit/src/navigation/balloons/balloon_geometry.dart'
    as navigation_balloons_balloon_geometry;

part 'default_style_providers.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'InternalDefaultUserPlacemarkStyleProvider.getNativePtr',
    toPlatform:
        '(val) => InternalDefaultUserPlacemarkStyleProvider.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class InternalDefaultUserPlacemarkStyleProvider implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(
      _InternalDefaultUserPlacemarkStyleProvider_free.cast());

  /// @nodoc
  InternalDefaultUserPlacemarkStyleProvider.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  InternalDefaultUserPlacemarkStyleProvider.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      InternalDefaultUserPlacemarkStyleProvider? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static InternalDefaultUserPlacemarkStyleProvider? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return InternalDefaultUserPlacemarkStyleProvider.fromNativePtr(ptr);
  }

  void provideStyle(
    mapkit_styling_placemark_style.PlacemarkStyle style, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  }) {
    _DefaultUserPlacemarkStyleProvider_provideStyle(
      ptr,
      scaleFactor,
      isNightMode,
      mapkit_styling_placemark_style.PlacemarkStyle.getNativePtr(style),
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
    ffi.Pointer<
        ffi.Void>) _DefaultUserPlacemarkStyleProvider_provideStyle = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float, ffi.Bool,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultUserPlacemarkStyleProvider_provideStyle')
    .asFunction();

@bindings_annotations.ContainerData(
    toNative: 'InternalDefaultRequestPointStyleProvider.getNativePtr',
    toPlatform:
        '(val) => InternalDefaultRequestPointStyleProvider.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class InternalDefaultRequestPointStyleProvider implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(
      _InternalDefaultRequestPointStyleProvider_free.cast());

  /// @nodoc
  InternalDefaultRequestPointStyleProvider.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  InternalDefaultRequestPointStyleProvider.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      InternalDefaultRequestPointStyleProvider? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static InternalDefaultRequestPointStyleProvider? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return InternalDefaultRequestPointStyleProvider.fromNativePtr(ptr);
  }

  void provideStyle(
    mapkit_request_point.RequestPointType requestPointType,
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
      mapkit_request_point.RequestPointType.toInt(requestPointType),
      scaleFactor,
      isSelected,
      isNightMode,
      mapkit_styling_placemark_style.PlacemarkStyle.getNativePtr(style),
    );
  }
}

final _InternalDefaultRequestPointStyleProvider_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRequestPointStyleProvider_free');

final void Function(ffi.Pointer<ffi.Void>, core.int, core.int, core.int,
        core.double, core.bool, core.bool, ffi.Pointer<ffi.Void>)
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
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRequestPointStyleProvider_provideStyle')
        .asFunction();

@bindings_annotations.ContainerData(
    toNative: 'InternalDefaultRoutePinsStyleProvider.getNativePtr',
    toPlatform:
        '(val) => InternalDefaultRoutePinsStyleProvider.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class InternalDefaultRoutePinsStyleProvider implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_InternalDefaultRoutePinsStyleProvider_free.cast());

  /// @nodoc
  InternalDefaultRoutePinsStyleProvider.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  InternalDefaultRoutePinsStyleProvider.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      InternalDefaultRoutePinsStyleProvider? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static InternalDefaultRoutePinsStyleProvider? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return InternalDefaultRoutePinsStyleProvider.fromNativePtr(ptr);
  }

  void provideTrafficLightStyle(
    mapkit_styling_placemark_style.PlacemarkStyle style, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  }) {
    _DefaultRoutePinsStyleProvider_provideTrafficLightStyle(
      ptr,
      scaleFactor,
      isNightMode,
      mapkit_styling_placemark_style.PlacemarkStyle.getNativePtr(style),
    );
  }

  void provideCheckpointStyle(
    mapkit_styling_placemark_style.PlacemarkStyle style, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  }) {
    _DefaultRoutePinsStyleProvider_provideCheckpointStyle(
      ptr,
      scaleFactor,
      isNightMode,
      mapkit_styling_placemark_style.PlacemarkStyle.getNativePtr(style),
    );
  }

  void provideRailwayCrossingStyle(
    mapkit_styling_placemark_style.PlacemarkStyle style, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  }) {
    _DefaultRoutePinsStyleProvider_provideRailwayCrossingStyle(
      ptr,
      scaleFactor,
      isNightMode,
      mapkit_styling_placemark_style.PlacemarkStyle.getNativePtr(style),
    );
  }

  void provideRoadInPoorConditionStyle(
    mapkit_styling_placemark_style.PlacemarkStyle roadInPoorConditionStartStyle,
    mapkit_styling_placemark_style.PlacemarkStyle roadInPoorConditionEndStyle, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  }) {
    _DefaultRoutePinsStyleProvider_provideRoadInPoorConditionStyle(
      ptr,
      scaleFactor,
      isNightMode,
      mapkit_styling_placemark_style.PlacemarkStyle.getNativePtr(
          roadInPoorConditionStartStyle),
      mapkit_styling_placemark_style.PlacemarkStyle.getNativePtr(
          roadInPoorConditionEndStyle),
    );
  }

  void provideSpeedBumpStyle(
    mapkit_styling_placemark_style.PlacemarkStyle style, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  }) {
    _DefaultRoutePinsStyleProvider_provideSpeedBumpStyle(
      ptr,
      scaleFactor,
      isNightMode,
      mapkit_styling_placemark_style.PlacemarkStyle.getNativePtr(style),
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
    ffi.Pointer<
        ffi.Void>) _DefaultRoutePinsStyleProvider_provideTrafficLightStyle = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float, ffi.Bool,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRoutePinsStyleProvider_provideTrafficLightStyle')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core.double,
    core.bool,
    ffi.Pointer<
        ffi.Void>) _DefaultRoutePinsStyleProvider_provideCheckpointStyle = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float, ffi.Bool,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRoutePinsStyleProvider_provideCheckpointStyle')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core.double,
    core.bool,
    ffi.Pointer<
        ffi
        .Void>) _DefaultRoutePinsStyleProvider_provideRailwayCrossingStyle = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float, ffi.Bool,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRoutePinsStyleProvider_provideRailwayCrossingStyle')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.double, core.bool,
        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _DefaultRoutePinsStyleProvider_provideRoadInPoorConditionStyle = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Float,
                        ffi.Bool,
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRoutePinsStyleProvider_provideRoadInPoorConditionStyle')
        .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core.double,
    core.bool,
    ffi.Pointer<
        ffi.Void>) _DefaultRoutePinsStyleProvider_provideSpeedBumpStyle = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Float, ffi.Bool,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRoutePinsStyleProvider_provideSpeedBumpStyle')
    .asFunction();

@bindings_annotations.ContainerData(
    toNative: 'InternalDefaultRouteViewStyleProvider.getNativePtr',
    toPlatform:
        '(val) => InternalDefaultRouteViewStyleProvider.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class InternalDefaultRouteViewStyleProvider implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_InternalDefaultRouteViewStyleProvider_free.cast());

  /// @nodoc
  InternalDefaultRouteViewStyleProvider.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  InternalDefaultRouteViewStyleProvider.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      InternalDefaultRouteViewStyleProvider? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static InternalDefaultRouteViewStyleProvider? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return InternalDefaultRouteViewStyleProvider.fromNativePtr(ptr);
  }

  void provideJamStyle(
    directions_driving_flags.DrivingFlags flags,
    navigation_automotive_layer_styling_route_view_style_provider
        .NavigationJamStyle
        jamStyle, {
    required core.bool isSelected,
    required core.bool isNightMode,
  }) {
    _DefaultRouteViewStyleProvider_provideJamStyle(
      ptr,
      directions_driving_flags.DrivingFlags.toNative(flags),
      isSelected,
      isNightMode,
      navigation_automotive_layer_styling_route_view_style_provider
          .NavigationJamStyle.getNativePtr(jamStyle),
    );
  }

  void providePolylineStyle(
    directions_driving_flags.DrivingFlags flags,
    mapkit_styling_polyline_style.PolylineStyle polylineStyle, {
    required core.bool isSelected,
    required core.bool isNightMode,
  }) {
    _DefaultRouteViewStyleProvider_providePolylineStyle(
      ptr,
      directions_driving_flags.DrivingFlags.toNative(flags),
      isSelected,
      isNightMode,
      mapkit_styling_polyline_style.PolylineStyle.getNativePtr(polylineStyle),
    );
  }

  void provideManoeuvreStyle(
    directions_driving_flags.DrivingFlags flags,
    mapkit_styling_arrow_style.ArrowStyle arrowStyle, {
    required core.bool isSelected,
    required core.bool isNightMode,
  }) {
    _DefaultRouteViewStyleProvider_provideManoeuvreStyle(
      ptr,
      directions_driving_flags.DrivingFlags.toNative(flags),
      isSelected,
      isNightMode,
      mapkit_styling_arrow_style.ArrowStyle.getNativePtr(arrowStyle),
    );
  }

  void provideRouteStyle(
    directions_driving_flags.DrivingFlags flags,
    navigation_automotive_layer_styling_route_view_style_provider
        .NavigationRouteStyle
        routeStyle, {
    required core.bool isSelected,
    required core.bool isNightMode,
  }) {
    _DefaultRouteViewStyleProvider_provideRouteStyle(
      ptr,
      directions_driving_flags.DrivingFlags.toNative(flags),
      isSelected,
      isNightMode,
      navigation_automotive_layer_styling_route_view_style_provider
          .NavigationRouteStyle.getNativePtr(routeStyle),
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
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRouteViewStyleProvider_provideJamStyle')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    directions_driving_flags.DrivingFlagsNative,
    core.bool,
    core.bool,
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
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRouteViewStyleProvider_providePolylineStyle')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    directions_driving_flags.DrivingFlagsNative,
    core.bool,
    core.bool,
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
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRouteViewStyleProvider_provideManoeuvreStyle')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    directions_driving_flags.DrivingFlagsNative,
    core.bool,
    core.bool,
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
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_internal_InternalDefaultRouteViewStyleProvider_provideRouteStyle')
    .asFunction();

@bindings_annotations.ContainerData(
    toNative: 'InternalDefaultBalloonImageProvider.getNativePtr',
    toPlatform:
        '(val) => InternalDefaultBalloonImageProvider.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class InternalDefaultBalloonImageProvider implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_InternalDefaultBalloonImageProvider_free.cast());

  /// @nodoc
  InternalDefaultBalloonImageProvider.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  InternalDefaultBalloonImageProvider.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      InternalDefaultBalloonImageProvider? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  @internal

  /// @nodoc
  static InternalDefaultBalloonImageProvider? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return InternalDefaultBalloonImageProvider.fromNativePtr(ptr);
  }

  /// returns geometry for all possible anchor placements
  core.List<navigation_balloons_balloon_geometry.BalloonGeometry>
      geometriesForBalloon(
    navigation_automotive_layer_balloon.Balloon balloon, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  }) {
    return navigation_balloons_balloon_geometry
            .BalloonGeometryContainerExtension
        .toPlatformVector(_DefaultBalloonImageProvider_geometriesForBalloon(
            ptr,
            navigation_automotive_layer_balloon.Balloon.toNative(balloon),
            scaleFactor,
            isNightMode));
  }

  image_wrapper.ImageWrapper createImage(
    navigation_automotive_layer_balloon.Balloon balloon,
    navigation_balloons_balloon_anchor.BalloonAnchor anchor, {
    required core.double scaleFactor,
    required core.bool isNightMode,
  }) {
    return to_platform.toPlatformBitmap(
        _DefaultBalloonImageProvider_createImage(
            ptr,
            navigation_automotive_layer_balloon.Balloon.toNative(balloon),
            navigation_balloons_balloon_anchor.BalloonAnchor.toNative(anchor),
            scaleFactor,
            isNightMode));
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

class InternalDefaultStyleProvidersFactory {
  InternalDefaultStyleProvidersFactory._();

  static InternalDefaultUserPlacemarkStyleProvider
      userPlacemarkStyleProvider() {
    return InternalDefaultUserPlacemarkStyleProvider.fromNativePtr(
        _DefaultStyleProvidersFactory_userPlacemarkStyleProvider());
  }

  static InternalDefaultRequestPointStyleProvider requestPointStyleProvider() {
    return InternalDefaultRequestPointStyleProvider.fromNativePtr(
        _DefaultStyleProvidersFactory_requestPointStyleProvider());
  }

  static InternalDefaultRoutePinsStyleProvider routePinsStyleProvider() {
    return InternalDefaultRoutePinsStyleProvider.fromNativePtr(
        _DefaultStyleProvidersFactory_routePinsStyleProvider());
  }

  static InternalDefaultRouteViewStyleProvider routeViewStyleProvider() {
    return InternalDefaultRouteViewStyleProvider.fromNativePtr(
        _DefaultStyleProvidersFactory_routeViewStyleProvider());
  }

  static InternalDefaultBalloonImageProvider balloonImageProvider() {
    return InternalDefaultBalloonImageProvider.fromNativePtr(
        _DefaultStyleProvidersFactory_balloonImageProvider());
  }
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
