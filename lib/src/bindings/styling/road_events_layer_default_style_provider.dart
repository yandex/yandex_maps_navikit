import 'package:yandex_maps_navikit/src/mapkit/road_events_layer/style_provider.dart';
import 'package:yandex_maps_navikit/src/mapkit/internal/flutter_road_events_layer.dart';

class RoadEventsLayerDefaultStyleProvider
    implements RoadEventsLayerStyleProvider {
  final InternalDefaultStyleProvider _defaultStyleProvider =
      InternalDefaultStyleProviderFactory.createDefaultStyleProvider();

  @override
  bool provideStyle(
          RoadEventsLayerRoadEventStylingProperties roadEventStylingProperties,
          bool isNightMode,
          double scaleFactor,
          RoadEventsLayerRoadEventStyle style) =>
      _defaultStyleProvider.provideStyle(roadEventStylingProperties, style,
          isNightMode: isNightMode, scaleFactor: scaleFactor);
}
