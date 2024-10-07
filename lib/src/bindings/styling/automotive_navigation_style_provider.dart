import 'package:yandex_maps_navikit/src/bindings/image/image_provider.dart';
import 'package:yandex_maps_navikit/src/bindings/image/image_wrapper.dart';
import 'package:yandex_maps_navikit/src/directions/driving/flags.dart';
import 'package:yandex_maps_navikit/src/mapkit/request_point.dart';
import 'package:yandex_maps_navikit/src/mapkit/styling/arrow_style.dart';
import 'package:yandex_maps_navikit/src/mapkit/styling/placemark_style.dart';
import 'package:yandex_maps_navikit/src/mapkit/styling/polyline_style.dart';
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/balloon.dart';
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/internal/default_style_providers.dart';
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/styling/balloon_image_provider.dart';
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/styling/route_view_style_provider.dart';
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/styling/style_provider.dart';
import 'package:yandex_maps_navikit/src/navigation/balloons/balloon_anchor.dart';
import 'package:yandex_maps_navikit/src/navigation/balloons/balloon_geometry.dart';

class AutomotiveNavigationStyleProvider implements NavigationStyleProvider {
  final _balloonImageProvider = DefaultBallonImageProvider();
  final _requestPointStyleProvider = DefaultRequestPointStyleProvider();
  final _routePinsStyleProvider = DefaultRoutePinsStyleProvider();
  final _routeViewStyleProvider = DefaultRouteStyleProvider();
  final _userPlacemarkStyleProvider = DefaultUserPlacemarkStyleProvider();

  @override
  NavigationBalloonImageProvider balloonImageProvider() =>
      _balloonImageProvider;

  @override
  NavigationRequestPointStyleProvider requestPointStyleProvider() =>
      _requestPointStyleProvider;

  @override
  NavigationRoutePinsStyleProvider routePinsStyleProvider() =>
      _routePinsStyleProvider;

  @override
  NavigationRouteViewStyleProvider routeViewStyleProvider() =>
      _routeViewStyleProvider;

  @override
  NavigationUserPlacemarkStyleProvider userPlacemarkStyleProvider() =>
      _userPlacemarkStyleProvider;
}

class DefaultBallonImageProvider implements NavigationBalloonImageProvider {
  final InternalDefaultBalloonImageProvider _balloonImageProvider =
      InternalDefaultStyleProvidersFactory.balloonImageProvider();

  @override
  ImageProvider createImage(Balloon balloon, BalloonAnchor anchor,
          double scaleFactor, bool isNightMode) =>
      _balloonImageProvider
          .createImage(balloon, anchor,
              scaleFactor: scaleFactor, isNightMode: isNightMode)
          .toImageProvider();

  @override
  List<BalloonGeometry> geometriesForBalloon(
          Balloon balloon, double scaleFactor, bool isNightMode) =>
      _balloonImageProvider.geometriesForBalloon(balloon,
          scaleFactor: scaleFactor, isNightMode: isNightMode);
}

class DefaultRequestPointStyleProvider
    implements NavigationRequestPointStyleProvider {
  final InternalDefaultRequestPointStyleProvider _requestPointStyleProvider =
      InternalDefaultStyleProvidersFactory.requestPointStyleProvider();

  @override
  void provideStyle(
          int requestPointIndex,
          int requestPointsNumber,
          RequestPointType requestPointType,
          double scaleFactor,
          bool isSelected,
          bool isNightMode,
          PlacemarkStyle style) =>
      _requestPointStyleProvider.provideStyle(requestPointType, style,
          requestPointIndex: requestPointIndex,
          requestPointsNumber: requestPointsNumber,
          scaleFactor: scaleFactor,
          isSelected: isSelected,
          isNightMode: isNightMode);
}

class DefaultRoutePinsStyleProvider
    implements NavigationRoutePinsStyleProvider {
  final InternalDefaultRoutePinsStyleProvider _routePinsStyleProvider =
      InternalDefaultStyleProvidersFactory.routePinsStyleProvider();

  @override
  void provideCheckpointStyle(
          double scaleFactor, bool isNightMode, PlacemarkStyle style) =>
      _routePinsStyleProvider.provideCheckpointStyle(style,
          scaleFactor: scaleFactor, isNightMode: isNightMode);

  @override
  void provideRailwayCrossingStyle(
          double scaleFactor, bool isNightMode, PlacemarkStyle style) =>
      _routePinsStyleProvider.provideRailwayCrossingStyle(style,
          scaleFactor: scaleFactor, isNightMode: isNightMode);

  @override
  void provideRoadInPoorConditionStyle(
          double scaleFactor,
          bool isNightMode,
          PlacemarkStyle roadInPoorConditionStartStyle,
          PlacemarkStyle roadInPoorConditionEndStyle) =>
      _routePinsStyleProvider.provideRoadInPoorConditionStyle(
          roadInPoorConditionStartStyle, roadInPoorConditionEndStyle,
          scaleFactor: scaleFactor, isNightMode: isNightMode);

  @override
  void provideSpeedBumpStyle(
          double scaleFactor, bool isNightMode, PlacemarkStyle style) =>
      _routePinsStyleProvider.provideSpeedBumpStyle(style,
          scaleFactor: scaleFactor, isNightMode: isNightMode);

  @override
  void provideTrafficLightStyle(
          double scaleFactor, bool isNightMode, PlacemarkStyle style) =>
      _routePinsStyleProvider.provideTrafficLightStyle(style,
          scaleFactor: scaleFactor, isNightMode: isNightMode);

  @override
  void provideTollRoadStyle(double scaleFactor, bool isNightMode,
          PlacemarkStyle startStyle, PlacemarkStyle endStyle) =>
      _routePinsStyleProvider.provideTollRoadStyle(startStyle, endStyle,
          scaleFactor: scaleFactor, isNightMode: isNightMode);

  @override
  void provideRestrictedEntryStyle(
          double scaleFactor, bool isNightMode, PlacemarkStyle style) =>
      _routePinsStyleProvider.provideRestrictedEntryStyle(style,
          scaleFactor: scaleFactor, isNightMode: isNightMode);
}

class DefaultRouteStyleProvider implements NavigationRouteViewStyleProvider {
  final InternalDefaultRouteViewStyleProvider _routeViewStyleProvider =
      InternalDefaultStyleProvidersFactory.routeViewStyleProvider();

  @override
  void provideJamStyle(DrivingFlags flags, bool isSelected, bool isNightMode,
          NavigationJamStyle jamStyle) =>
      _routeViewStyleProvider.provideJamStyle(flags, jamStyle,
          isSelected: isSelected, isNightMode: isNightMode);

  @override
  void provideManoeuvreStyle(DrivingFlags flags, bool isSelected,
          bool isNightMode, ArrowStyle arrowStyle) =>
      _routeViewStyleProvider.provideManoeuvreStyle(flags, arrowStyle,
          isSelected: isSelected, isNightMode: isNightMode);

  @override
  void providePolylineStyle(DrivingFlags flags, bool isSelected,
          bool isNightMode, PolylineStyle polylineStyle) =>
      _routeViewStyleProvider.providePolylineStyle(flags, polylineStyle,
          isSelected: isSelected, isNightMode: isNightMode);

  @override
  void provideRouteStyle(DrivingFlags flags, bool isSelected, bool isNightMode,
          NavigationRouteStyle routeStyle) =>
      _routeViewStyleProvider.provideRouteStyle(flags, routeStyle,
          isSelected: isSelected, isNightMode: isNightMode);
}

class DefaultUserPlacemarkStyleProvider
    implements NavigationUserPlacemarkStyleProvider {
  final InternalDefaultUserPlacemarkStyleProvider _userPlacemarkStyleProvider =
      InternalDefaultStyleProvidersFactory.userPlacemarkStyleProvider();

  @override
  void provideStyle(
          double scaleFactor, bool isNightMode, PlacemarkStyle style) =>
      _userPlacemarkStyleProvider.provideStyle(style,
          scaleFactor: scaleFactor, isNightMode: isNightMode);
}
