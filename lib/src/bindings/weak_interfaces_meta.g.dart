import 'package:yandex_maps_navikit/src/directions/driving/driving_router.dart'
    as src_directions_driving_driving_router;
import 'package:yandex_maps_navikit/src/directions/directions.dart'
    as src_directions_directions;
import 'package:yandex_maps_navikit/src/places/panorama/panorama_layer.dart'
    as src_places_panorama_panorama_layer;
import 'package:yandex_maps_navikit/src/places/panorama/errors.dart'
    as src_places_panorama_errors;
import 'package:yandex_maps_navikit/src/places/panorama/player.dart'
    as src_places_panorama_player;
import 'package:yandex_maps_navikit/src/places/places.dart'
    as src_places_places;
import 'package:yandex_maps_navikit/src/places/mrc/mrc_photo_player.dart'
    as src_places_mrc_mrc_photo_player;
import 'package:yandex_maps_navikit/src/places/mrc/mrc_photo_track_player.dart'
    as src_places_mrc_mrc_photo_track_player;
import 'package:yandex_maps_navikit/src/recording/recording.dart'
    as src_recording_recording;
import 'package:yandex_maps_navikit/src/runtime/network/errors.dart'
    as src_runtime_network_errors;
import 'package:yandex_maps_navikit/src/runtime/i18n/i18n_manager.dart'
    as src_runtime_i18n_i18n_manager;
import 'package:yandex_maps_navikit/src/runtime/local_error.dart'
    as src_runtime_local_error;
import 'package:yandex_maps_navikit/src/runtime/error.dart'
    as src_runtime_error;
import 'package:yandex_maps_navikit/src/search/search_layer/search_layer.dart'
    as src_search_search_layer_search_layer;
import 'package:yandex_maps_navikit/src/search/error.dart' as src_search_error;
import 'package:yandex_maps_navikit/src/search/search.dart'
    as src_search_search;
import 'package:yandex_maps_navikit/src/navigation/guidance_camera/camera.dart'
    as src_navigation_guidance_camera_camera;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/navigation_layer.dart'
    as src_navigation_automotive_layer_navigation_layer;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/styling/route_view_style_provider.dart'
    as src_navigation_automotive_layer_styling_route_view_style_provider;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/balloon_view.dart'
    as src_navigation_automotive_layer_balloon_view;
import 'package:yandex_maps_navikit/src/navigation/automotive/layer/route_view.dart'
    as src_navigation_automotive_layer_route_view;
import 'package:yandex_maps_navikit/src/navigation/automotive/annotator.dart'
    as src_navigation_automotive_annotator;
import 'package:yandex_maps_navikit/src/navigation/automotive/guidance.dart'
    as src_navigation_automotive_guidance;
import 'package:yandex_maps_navikit/src/navigation/automotive/windshield.dart'
    as src_navigation_automotive_windshield;
import 'package:yandex_maps_navikit/src/mapkit/layers/object_event.dart'
    as src_mapkit_layers_object_event;
import 'package:yandex_maps_navikit/src/mapkit/layers/data_source_layer.dart'
    as src_mapkit_layers_data_source_layer;
import 'package:yandex_maps_navikit/src/mapkit/layers/geo_object_tap_event.dart'
    as src_mapkit_layers_geo_object_tap_event;
import 'package:yandex_maps_navikit/src/mapkit/layers/data_source.dart'
    as src_mapkit_layers_data_source;
import 'package:yandex_maps_navikit/src/mapkit/layers/layer.dart'
    as src_mapkit_layers_layer;
import 'package:yandex_maps_navikit/src/mapkit/user_location/user_location.dart'
    as src_mapkit_user_location_user_location;
import 'package:yandex_maps_navikit/src/mapkit/styling/arrow_style.dart'
    as src_mapkit_styling_arrow_style;
import 'package:yandex_maps_navikit/src/mapkit/styling/placemark_style.dart'
    as src_mapkit_styling_placemark_style;
import 'package:yandex_maps_navikit/src/mapkit/styling/polyline_style.dart'
    as src_mapkit_styling_polyline_style;
import 'package:yandex_maps_navikit/src/mapkit/storage/storage_manager.dart'
    as src_mapkit_storage_storage_manager;
import 'package:yandex_maps_navikit/src/mapkit/mapkit.dart'
    as src_mapkit_mapkit;
import 'package:yandex_maps_navikit/src/mapkit/traffic/traffic_layer.dart'
    as src_mapkit_traffic_traffic_layer;
import 'package:yandex_maps_navikit/src/mapkit/geometry/geo/projection.dart'
    as src_mapkit_geometry_geo_projection;
import 'package:yandex_maps_navikit/src/mapkit/map/placemark.dart'
    as src_mapkit_map_placemark;
import 'package:yandex_maps_navikit/src/mapkit/map/model.dart'
    as src_mapkit_map_model;
import 'package:yandex_maps_navikit/src/mapkit/map/placemark_animation.dart'
    as src_mapkit_map_placemark_animation;
import 'package:yandex_maps_navikit/src/mapkit/map/camera_bounds.dart'
    as src_mapkit_map_camera_bounds;
import 'package:yandex_maps_navikit/src/mapkit/map/map_object.dart'
    as src_mapkit_map_map_object;
import 'package:yandex_maps_navikit/src/mapkit/map/placemarks_styler.dart'
    as src_mapkit_map_placemarks_styler;
import 'package:yandex_maps_navikit/src/mapkit/map/cluster.dart'
    as src_mapkit_map_cluster;
import 'package:yandex_maps_navikit/src/mapkit/map/polyline.dart'
    as src_mapkit_map_polyline;
import 'package:yandex_maps_navikit/src/mapkit/map/clusterized_placemark_collection.dart'
    as src_mapkit_map_clusterized_placemark_collection;
import 'package:yandex_maps_navikit/src/mapkit/map/polygon.dart'
    as src_mapkit_map_polygon;
import 'package:yandex_maps_navikit/src/mapkit/map/circle.dart'
    as src_mapkit_map_circle;
import 'package:yandex_maps_navikit/src/mapkit/map/arrow.dart'
    as src_mapkit_map_arrow;
import 'package:yandex_maps_navikit/src/mapkit/map/composite_icon.dart'
    as src_mapkit_map_composite_icon;
import 'package:yandex_maps_navikit/src/mapkit/map/map.dart'
    as src_mapkit_map_map;
import 'package:yandex_maps_navikit/src/mapkit/map/map_object_collection.dart'
    as src_mapkit_map_map_object_collection;
import 'package:yandex_maps_navikit/src/mapkit/map/base_map_object_collection.dart'
    as src_mapkit_map_base_map_object_collection;
import 'package:yandex_maps_navikit/src/mapkit/map/base_data_source_builder.dart'
    as src_mapkit_map_base_data_source_builder;
import 'package:yandex_maps_navikit/src/mapkit/map/map_window.dart'
    as src_mapkit_map_map_window;
import 'package:yandex_maps_navikit/src/mapkit/map/tile_data_source_builder.dart'
    as src_mapkit_map_tile_data_source_builder;
import 'package:yandex_maps_navikit/src/mapkit/road_events_layer/road_events_layer.dart'
    as src_mapkit_road_events_layer_road_events_layer;
import 'package:yandex_maps_navikit/src/mapkit/road_events_layer/style_provider.dart'
    as src_mapkit_road_events_layer_style_provider;
import 'package:yandex_maps_navikit/src/mapkit/logo/logo.dart'
    as src_mapkit_logo_logo;
import 'package:yandex_maps_navikit/src/mapkit/location/error.dart'
    as src_mapkit_location_error;
import 'package:yandex_maps_navikit/src/mapkit/offline_cache/offline_cache_manager.dart'
    as src_mapkit_offline_cache_offline_cache_manager;
import 'package:yandex_maps_navikit/src/mapkit/offline_cache/errors.dart'
    as src_mapkit_offline_cache_errors;
import 'package:yandex_maps_navikit/src/transport/time/adjusted_clock.dart'
    as src_transport_time_adjusted_clock;
import 'package:yandex_maps_navikit/src/transport/transport.dart'
    as src_transport_transport;

const weakInterfacesMeta = {
  'directions.driving.TooComplexAvoidedZonesError':
      src_directions_driving_driving_router
          .DrivingTooComplexAvoidedZonesErrorImpl.fromNativePtrImpl,
  'directions.Directions':
      src_directions_directions.DirectionsImpl.fromNativePtrImpl,
  'places.panorama.PanoramaLayer':
      src_places_panorama_panorama_layer.PanoramaLayerImpl.fromNativePtrImpl,
  'places.panorama.NotFoundError':
      src_places_panorama_errors.PanoramaNotFoundErrorImpl.fromNativePtrImpl,
  'places.panorama.Player':
      src_places_panorama_player.PanoramaPlayerImpl.fromNativePtrImpl,
  'places.Places': src_places_places.PlacesImpl.fromNativePtrImpl,
  'places.mrc.MrcPhotoPlayer':
      src_places_mrc_mrc_photo_player.MrcPhotoPlayerImpl.fromNativePtrImpl,
  'places.mrc.MrcPhotoTrackPlayer': src_places_mrc_mrc_photo_track_player
      .MrcPhotoTrackPlayerImpl.fromNativePtrImpl,
  'recording.ReportCollector':
      src_recording_recording.ReportCollectorImpl.fromNativePtrImpl,
  'runtime.network.RemoteError':
      src_runtime_network_errors.RemoteErrorImpl.fromNativePtrImpl,
  'runtime.network.BadRequestError':
      src_runtime_network_errors.BadRequestErrorImpl.fromNativePtrImpl,
  'runtime.network.NotFoundError':
      src_runtime_network_errors.NotFoundErrorImpl.fromNativePtrImpl,
  'runtime.network.RequestEntityTooLargeError': src_runtime_network_errors
      .RequestEntityTooLargeErrorImpl.fromNativePtrImpl,
  'runtime.network.ForbiddenError':
      src_runtime_network_errors.ForbiddenErrorImpl.fromNativePtrImpl,
  'runtime.network.UnauthorizedError':
      src_runtime_network_errors.UnauthorizedErrorImpl.fromNativePtrImpl,
  'runtime.network.NetworkError':
      src_runtime_network_errors.NetworkErrorImpl.fromNativePtrImpl,
  'runtime.i18n.I18nManager':
      src_runtime_i18n_i18n_manager.I18nManagerImpl.fromNativePtrImpl,
  'runtime.LocalError':
      src_runtime_local_error.LocalErrorImpl.fromNativePtrImpl,
  'runtime.DiskFullError':
      src_runtime_local_error.DiskFullErrorImpl.fromNativePtrImpl,
  'runtime.DiskCorruptError':
      src_runtime_local_error.DiskCorruptErrorImpl.fromNativePtrImpl,
  'runtime.DiskWriteAccessError':
      src_runtime_local_error.DiskWriteAccessErrorImpl.fromNativePtrImpl,
  'runtime.Error': src_runtime_error.ErrorImpl.fromNativePtrImpl,
  'search.search_layer.SearchLayer':
      src_search_search_layer_search_layer.SearchLayerImpl.fromNativePtrImpl,
  'search.CacheUnavailableError':
      src_search_error.SearchCacheUnavailableErrorImpl.fromNativePtrImpl,
  'search.Search': src_search_search.SearchImpl.fromNativePtrImpl,
  'navigation.guidance_camera.Camera':
      src_navigation_guidance_camera_camera.CameraImpl.fromNativePtrImpl,
  'navigation.automotive.layer.NavigationLayer':
      src_navigation_automotive_layer_navigation_layer
          .NavigationLayerImpl.fromNativePtrImpl,
  'navigation.automotive.layer.styling.JamStyle':
      src_navigation_automotive_layer_styling_route_view_style_provider
          .NavigationJamStyleImpl.fromNativePtrImpl,
  'navigation.automotive.layer.styling.RouteStyle':
      src_navigation_automotive_layer_styling_route_view_style_provider
          .NavigationRouteStyleImpl.fromNativePtrImpl,
  'navigation.automotive.layer.BalloonView':
      src_navigation_automotive_layer_balloon_view
          .BalloonViewImpl.fromNativePtrImpl,
  'navigation.automotive.layer.RouteView':
      src_navigation_automotive_layer_route_view
          .RouteViewImpl.fromNativePtrImpl,
  'navigation.automotive.Annotator':
      src_navigation_automotive_annotator.AnnotatorImpl.fromNativePtrImpl,
  'navigation.automotive.Guidance':
      src_navigation_automotive_guidance.GuidanceImpl.fromNativePtrImpl,
  'navigation.automotive.Windshield': src_navigation_automotive_windshield
      .NavigationWindshieldImpl.fromNativePtrImpl,
  'mapkit.layers.ObjectEvent':
      src_mapkit_layers_object_event.ObjectEventImpl.fromNativePtrImpl,
  'mapkit.layers.DataSourceLayer':
      src_mapkit_layers_data_source_layer.DataSourceLayerImpl.fromNativePtrImpl,
  'mapkit.layers.GeoObjectTapEvent': src_mapkit_layers_geo_object_tap_event
      .GeoObjectTapEventImpl.fromNativePtrImpl,
  'mapkit.layers.BaseDataSource':
      src_mapkit_layers_data_source.BaseDataSourceImpl.fromNativePtrImpl,
  'mapkit.layers.TileDataSource':
      src_mapkit_layers_data_source.TileDataSourceImpl.fromNativePtrImpl,
  'mapkit.layers.DataSource':
      src_mapkit_layers_data_source.DataSourceImpl.fromNativePtrImpl,
  'mapkit.layers.Layer': src_mapkit_layers_layer.LayerImpl.fromNativePtrImpl,
  'mapkit.user_location.UserLocationView':
      src_mapkit_user_location_user_location
          .UserLocationViewImpl.fromNativePtrImpl,
  'mapkit.user_location.UserLocationIconChanged':
      src_mapkit_user_location_user_location
          .UserLocationIconChangedImpl.fromNativePtrImpl,
  'mapkit.user_location.UserLocationAnchorChanged':
      src_mapkit_user_location_user_location
          .UserLocationAnchorChangedImpl.fromNativePtrImpl,
  'mapkit.user_location.UserLocationLayer':
      src_mapkit_user_location_user_location
          .UserLocationLayerImpl.fromNativePtrImpl,
  'mapkit.styling.ArrowStyle':
      src_mapkit_styling_arrow_style.ArrowStyleImpl.fromNativePtrImpl,
  'mapkit.styling.PlacemarkStyle':
      src_mapkit_styling_placemark_style.PlacemarkStyleImpl.fromNativePtrImpl,
  'mapkit.styling.PolylineStyle':
      src_mapkit_styling_polyline_style.PolylineStyleImpl.fromNativePtrImpl,
  'mapkit.storage.StorageManager':
      src_mapkit_storage_storage_manager.StorageManagerImpl.fromNativePtrImpl,
  'mapkit.MapKit': src_mapkit_mapkit.MapKitImpl.fromNativePtrImpl,
  'mapkit.traffic.TrafficLayer':
      src_mapkit_traffic_traffic_layer.TrafficLayerImpl.fromNativePtrImpl,
  'mapkit.geometry.geo.Projection':
      src_mapkit_geometry_geo_projection.ProjectionImpl.fromNativePtrImpl,
  'mapkit.map.PlacemarkMapObject':
      src_mapkit_map_placemark.PlacemarkMapObjectImpl.fromNativePtrImpl,
  'mapkit.map.Model': src_mapkit_map_model.ModelImpl.fromNativePtrImpl,
  'mapkit.map.PlacemarkAnimation': src_mapkit_map_placemark_animation
      .PlacemarkAnimationImpl.fromNativePtrImpl,
  'mapkit.map.CameraBounds':
      src_mapkit_map_camera_bounds.CameraBoundsImpl.fromNativePtrImpl,
  'mapkit.map.MapObject':
      src_mapkit_map_map_object.MapObjectImpl.fromNativePtrImpl,
  'mapkit.map.PlacemarksStyler':
      src_mapkit_map_placemarks_styler.PlacemarksStylerImpl.fromNativePtrImpl,
  'mapkit.map.Cluster': src_mapkit_map_cluster.ClusterImpl.fromNativePtrImpl,
  'mapkit.map.PolylineMapObject':
      src_mapkit_map_polyline.PolylineMapObjectImpl.fromNativePtrImpl,
  'mapkit.map.ClusterizedPlacemarkCollection':
      src_mapkit_map_clusterized_placemark_collection
          .ClusterizedPlacemarkCollectionImpl.fromNativePtrImpl,
  'mapkit.map.PolygonMapObject':
      src_mapkit_map_polygon.PolygonMapObjectImpl.fromNativePtrImpl,
  'mapkit.map.CircleMapObject':
      src_mapkit_map_circle.CircleMapObjectImpl.fromNativePtrImpl,
  'mapkit.map.Arrow': src_mapkit_map_arrow.ArrowImpl.fromNativePtrImpl,
  'mapkit.map.CompositeIcon':
      src_mapkit_map_composite_icon.CompositeIconImpl.fromNativePtrImpl,
  'mapkit.map.Map': src_mapkit_map_map.MapImpl.fromNativePtrImpl,
  'mapkit.map.MapObjectCollection': src_mapkit_map_map_object_collection
      .MapObjectCollectionImpl.fromNativePtrImpl,
  'mapkit.map.BaseMapObjectCollection':
      src_mapkit_map_base_map_object_collection
          .BaseMapObjectCollectionImpl.fromNativePtrImpl,
  'mapkit.map.BaseDataSourceBuilder': src_mapkit_map_base_data_source_builder
      .BaseDataSourceBuilderImpl.fromNativePtrImpl,
  'mapkit.map.MapWindow':
      src_mapkit_map_map_window.MapWindowImpl.fromNativePtrImpl,
  'mapkit.map.BaseTileDataSourceBuilder':
      src_mapkit_map_tile_data_source_builder
          .BaseTileDataSourceBuilderImpl.fromNativePtrImpl,
  'mapkit.map.TileDataSourceBuilder': src_mapkit_map_tile_data_source_builder
      .TileDataSourceBuilderImpl.fromNativePtrImpl,
  'mapkit.road_events_layer.RoadEventsLayer':
      src_mapkit_road_events_layer_road_events_layer
          .RoadEventsLayerImpl.fromNativePtrImpl,
  'mapkit.road_events_layer.RoadEventStyle':
      src_mapkit_road_events_layer_style_provider
          .RoadEventsLayerRoadEventStyleImpl.fromNativePtrImpl,
  'mapkit.road_events_layer.RoadEventStylingProperties':
      src_mapkit_road_events_layer_style_provider
          .RoadEventsLayerRoadEventStylingPropertiesImpl.fromNativePtrImpl,
  'mapkit.logo.Logo': src_mapkit_logo_logo.LogoImpl.fromNativePtrImpl,
  'mapkit.location.LocationUnavailableError':
      src_mapkit_location_error.LocationUnavailableErrorImpl.fromNativePtrImpl,
  'mapkit.offline_cache.OfflineCacheManager':
      src_mapkit_offline_cache_offline_cache_manager
          .OfflineCacheManagerImpl.fromNativePtrImpl,
  'mapkit.offline_cache.CachePathUnavailable': src_mapkit_offline_cache_errors
      .CachePathUnavailableImpl.fromNativePtrImpl,
  'transport.time.AdjustedClock':
      src_transport_time_adjusted_clock.AdjustedClockImpl.fromNativePtrImpl,
  'transport.Transport':
      src_transport_transport.TransportImpl.fromNativePtrImpl,
};
