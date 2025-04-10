part of 'navigation_layer.dart';

final class _NavigationLayerListenerWrapper implements ffi.Finalizable {
  _NavigationLayerListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_NavigationLayerListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension NavigationLayerListenerImpl on NavigationLayerListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<NavigationLayerListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<NavigationLayerListener,
      _NavigationLayerListenerWrapper?>();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(NavigationLayerListener obj) {
    final ptr = _NavigationLayerListener_new(
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _NavigationLayerListener_onSelectedRouteChanged),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _NavigationLayerListener_onModeChanged));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _NavigationLayerListenerWrapper(ptr);
    _NavigationLayerListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(NavigationLayerListener? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _NavigationLayerListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayerListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)
    _NavigationLayerListener_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<
                        ffi
                        .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_navigation_automotive_layer_NavigationLayerListener_new')
        .asFunction(isLeaf: true);

final _NavigationLayerListener_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_navigation_automotive_layer_NavigationLayerListener_free');
void _NavigationLayerListener_onSelectedRouteChanged(
    ffi.Pointer<ffi.Void> _ptr) {
  final listener = NavigationLayerListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onSelectedRouteChanged();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _NavigationLayerListener_onModeChanged(ffi.Pointer<ffi.Void> _ptr) {
  final listener = NavigationLayerListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onModeChanged();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

final class _NavigationLayerPlacemarkTapListenerWrapper
    implements ffi.Finalizable {
  _NavigationLayerPlacemarkTapListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_NavigationLayerPlacemarkTapListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension NavigationLayerPlacemarkTapListenerImpl
    on NavigationLayerPlacemarkTapListener {
  static final _pointerToListener = <ffi.Pointer<ffi.Void>,
      core.WeakReference<NavigationLayerPlacemarkTapListener>>{};
  static final _listenerToPointer = weak_map.WeakMap<
      NavigationLayerPlacemarkTapListener,
      _NavigationLayerPlacemarkTapListenerWrapper?>();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(
      NavigationLayerPlacemarkTapListener obj) {
    final ptr = _NavigationLayerPlacemarkTapListener_new(
        ffi.Pointer.fromFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>(
            _NavigationLayerPlacemarkTapListener_onRoadEventPlacemarkTap));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _NavigationLayerPlacemarkTapListenerWrapper(ptr);
    _NavigationLayerPlacemarkTapListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(
      NavigationLayerPlacemarkTapListener? obj) {
    if (obj == null) return ffi.nullptr;

    final foundPointer = _listenerToPointer[obj];
    if (foundPointer == null) {
      return _newNativeObject(obj);
    }

    return foundPointer.ptr;
  }
}

final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .int) _NavigationLayerPlacemarkTapListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayerPlacemarkTapListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)
    _NavigationLayerPlacemarkTapListener_new = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<
                            ffi
                            .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_navigation_automotive_layer_NavigationLayerPlacemarkTapListener_new')
        .asFunction(isLeaf: true);

final _NavigationLayerPlacemarkTapListener_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_navigation_automotive_layer_NavigationLayerPlacemarkTapListener_free');
void _NavigationLayerPlacemarkTapListener_onRoadEventPlacemarkTap(
    ffi.Pointer<ffi.Void> _ptr, ffi.Pointer<ffi.Void> roadEvent) {
  final listener =
      NavigationLayerPlacemarkTapListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onRoadEventPlacemarkTap(
        mapkit_road_events_layer_road_event.RoadEventImpl.fromNativePtr(
            roadEvent));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

@bindings_annotations
    .WeakInterface('navigation.automotive.layer.NavigationLayer')
@bindings_annotations.ContainerData(
    toNative: 'NavigationLayerImpl.getNativePtr',
    toPlatform:
        '(val) => NavigationLayerImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'NavigationLayer')
class NavigationLayerImpl implements NavigationLayer, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_NavigationLayer_free.cast());

  /// @nodoc
  NavigationLayerImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  NavigationLayerImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory NavigationLayerImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(NavigationLayer? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as NavigationLayerImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _NavigationLayer_check(ptr);
  }

  @internal

  /// @nodoc
  static NavigationLayer? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return NavigationLayerImpl.fromNativePtr(ptr);
  }

  @core.override
  navigation_automotive_navigation.Navigation get navigation {
    final result = _NavigationLayer_get_navigation(ptr);
    exception.checkCallResult();
    return navigation_automotive_navigation.NavigationImpl.fromNativePtr(
        result);
  }

  @core.override
  navigation_guidance_camera_camera.Camera get camera {
    final result = _NavigationLayer_get_camera(ptr);
    exception.checkCallResult();
    return navigation_guidance_camera_camera.CameraImpl.fromNativePtr(result);
  }

  @core.override
  navigation_automotive_layer_navigation_layer_mode.NavigationLayerMode
      get mode {
    final result = _NavigationLayer_get_mode(ptr);
    exception.checkCallResult();
    return navigation_automotive_layer_navigation_layer_mode
        .NavigationLayerModeImpl.fromInt(result);
  }

  @core.override
  core.List<navigation_automotive_layer_route_view.RouteView> get routes {
    final result = _NavigationLayer_get_routes(ptr);
    exception.checkCallResult();
    return navigation_automotive_layer_route_view.RouteViewContainerExtension
        .toPlatformVector(result);
  }

  @core.override
  core.bool get showRequestPoints {
    final result = _NavigationLayer_get_showRequestPoints(ptr);
    exception.checkCallResult();
    return result;
  }

  @core.override
  set showRequestPoints(core.bool val) {
    _NavigationLayer_set_showRequestPoints(ptr, val);
    exception.checkCallResult();
  }

  @core.override
  core.bool get isVisible {
    final result = _NavigationLayer_get_isVisible(ptr);
    exception.checkCallResult();
    return result;
  }

  @core.override
  set isVisible(core.bool val) {
    _NavigationLayer_set_isVisible(ptr, val);
    exception.checkCallResult();
  }

  navigation_automotive_layer_route_view.RouteView? getView(
      directions_driving_route.DrivingRoute route) {
    final result = _NavigationLayer_getView(
        ptr, directions_driving_route.DrivingRouteImpl.getNativePtr(route));
    exception.checkCallResult();
    return navigation_automotive_layer_route_view.RouteViewImpl.fromOptionalPtr(
        result);
  }

  void selectRoute(navigation_automotive_layer_route_view.RouteView? route) {
    _NavigationLayer_selectRoute(
        ptr,
        navigation_automotive_layer_route_view.RouteViewImpl.getNativePtr(
            route));
    exception.checkCallResult();
  }

  navigation_automotive_layer_route_view.RouteView? selectedRoute() {
    final result = _NavigationLayer_selectedRoute(ptr);
    exception.checkCallResult();
    return navigation_automotive_layer_route_view.RouteViewImpl.fromOptionalPtr(
        result);
  }

  void addRouteViewListener(
      navigation_automotive_layer_route_view.RouteViewListener
          routeViewListener) {
    _NavigationLayer_addRouteViewListener(
        ptr,
        navigation_automotive_layer_route_view.RouteViewListenerImpl
            .getNativePtr(routeViewListener));
    exception.checkCallResult();
  }

  void removeRouteViewListener(
      navigation_automotive_layer_route_view.RouteViewListener
          routeViewListener) {
    _NavigationLayer_removeRouteViewListener(
        ptr,
        navigation_automotive_layer_route_view.RouteViewListenerImpl
            .getNativePtr(routeViewListener));
    exception.checkCallResult();
  }

  void selectRoadEvent(core.String eventId) {
    _NavigationLayer_selectRoadEvent(ptr, to_native.toNativeString(eventId));
    exception.checkCallResult();
  }

  void deselectRoadEvent() {
    _NavigationLayer_deselectRoadEvent(ptr);
    exception.checkCallResult();
  }

  void selectRequestPoint(core.int requestPointIndex) {
    _NavigationLayer_selectRequestPoint(ptr, requestPointIndex);
    exception.checkCallResult();
  }

  void deselectRequestPoint() {
    _NavigationLayer_deselectRequestPoint(ptr);
    exception.checkCallResult();
  }

  void addRequestPointListener(
      navigation_automotive_layer_request_point_listener.RequestPointListener
          requestPointListener) {
    _NavigationLayer_addRequestPointListener(
        ptr,
        navigation_automotive_layer_request_point_listener
            .RequestPointListenerImpl.getNativePtr(requestPointListener));
    exception.checkCallResult();
  }

  void removeRequestPointListener(
      navigation_automotive_layer_request_point_listener.RequestPointListener
          requestPointListener) {
    _NavigationLayer_removeRequestPointListener(
        ptr,
        navigation_automotive_layer_request_point_listener
            .RequestPointListenerImpl.getNativePtr(requestPointListener));
    exception.checkCallResult();
  }

  void addBalloonViewListener(
      navigation_automotive_layer_balloon_view_listener.BalloonViewListener
          balloonListener) {
    _NavigationLayer_addBalloonViewListener(
        ptr,
        navigation_automotive_layer_balloon_view_listener
            .BalloonViewListenerImpl.getNativePtr(balloonListener));
    exception.checkCallResult();
  }

  void removeBalloonViewListener(
      navigation_automotive_layer_balloon_view_listener.BalloonViewListener
          balloonListener) {
    _NavigationLayer_removeBalloonViewListener(
        ptr,
        navigation_automotive_layer_balloon_view_listener
            .BalloonViewListenerImpl.getNativePtr(balloonListener));
    exception.checkCallResult();
  }

  void addListener(NavigationLayerListener navigationLayerListener) {
    _NavigationLayer_addListener(
        ptr, NavigationLayerListenerImpl.getNativePtr(navigationLayerListener));
    exception.checkCallResult();
  }

  void removeListener(NavigationLayerListener navigationLayerListener) {
    _NavigationLayer_removeListener(
        ptr, NavigationLayerListenerImpl.getNativePtr(navigationLayerListener));
    exception.checkCallResult();
  }

  void addPlacemarkTapListener(
      NavigationLayerPlacemarkTapListener roadEventsListener) {
    _NavigationLayer_addPlacemarkTapListener(
        ptr,
        NavigationLayerPlacemarkTapListenerImpl.getNativePtr(
            roadEventsListener));
    exception.checkCallResult();
  }

  void removePlacemarkTapListener(
      NavigationLayerPlacemarkTapListener roaadEventsListener) {
    _NavigationLayer_removePlacemarkTapListener(
        ptr,
        NavigationLayerPlacemarkTapListenerImpl.getNativePtr(
            roaadEventsListener));
    exception.checkCallResult();
  }

  void setRoadEventVisibleOnRoute(
    mapkit_road_events_event_tag.RoadEventsEventTag tag, {
    required core.bool on,
  }) {
    _NavigationLayer_setRoadEventVisibleOnRoute(ptr,
        mapkit_road_events_event_tag.RoadEventsEventTagImpl.toInt(tag), on);
    exception.checkCallResult();
  }

  void removeFromMap() {
    _NavigationLayer_removeFromMap(ptr);
    exception.checkCallResult();
  }

  void setShowBalloonsGeometry(core.bool enabled) {
    _NavigationLayer_setShowBalloonsGeometry(ptr, enabled);
    exception.checkCallResult();
  }

  void refreshStyle() {
    _NavigationLayer_refreshStyle(ptr);
    exception.checkCallResult();
  }

  core.bool is2DMode() {
    final result = _NavigationLayer_is2DMode(ptr);
    exception.checkCallResult();
    return result;
  }

  void set2DMode(core.bool enabled) {
    _NavigationLayer_set2DMode(ptr, enabled);
    exception.checkCallResult();
  }
}

final _NavigationLayer_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _NavigationLayer_check = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_check')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_get_navigation = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_get_navigation')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_get_camera = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_get_camera')
    .asFunction();

final core.int Function(ffi.Pointer<ffi.Void>) _NavigationLayer_get_mode = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_get_mode')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_get_routes = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_get_routes')
    .asFunction();

final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_get_showRequestPoints = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_get_showRequestPoints')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _NavigationLayer_set_showRequestPoints = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_set_showRequestPoints')
    .asFunction();

final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_get_isVisible = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_get_isVisible')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _NavigationLayer_set_isVisible = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_set_isVisible')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_getView = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_getView')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_selectRoute = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_selectRoute')
    .asFunction();
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_selectedRoute = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_selectedRoute')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_addRouteViewListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_addRouteViewListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_removeRouteViewListener = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_removeRouteViewListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    native_types
        .NativeString) _NavigationLayer_selectRoadEvent = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, native_types.NativeString)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_selectRoadEvent')
    .asFunction();
final void Function(
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_deselectRoadEvent = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_deselectRoadEvent')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _NavigationLayer_selectRequestPoint = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Uint32)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_selectRequestPoint')
    .asFunction();
final void Function(
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_deselectRequestPoint = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_deselectRequestPoint')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_addRequestPointListener = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_addRequestPointListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_removeRequestPointListener = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_removeRequestPointListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_addBalloonViewListener = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_addBalloonViewListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_removeBalloonViewListener = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_removeBalloonViewListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_addListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_addListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_removeListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_removeListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_addPlacemarkTapListener = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_addPlacemarkTapListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayer_removePlacemarkTapListener = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_removePlacemarkTapListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core.int,
    core
        .bool) _NavigationLayer_setRoadEventVisibleOnRoute = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_setRoadEventVisibleOnRoute')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _NavigationLayer_removeFromMap = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_removeFromMap')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _NavigationLayer_setShowBalloonsGeometry = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_setShowBalloonsGeometry')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _NavigationLayer_refreshStyle = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_refreshStyle')
    .asFunction();
final core.bool Function(ffi.Pointer<ffi.Void>) _NavigationLayer_is2DMode = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_is2DMode')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .bool) _NavigationLayer_set2DMode = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Bool)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_set2DMode')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int) _NavigationLayer_set = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayer_set_')
    .asFunction(isLeaf: true);

NavigationLayer _createNavigationLayer(
    mapkit_map_map_window.MapWindow mapWindow,
    mapkit_road_events_layer_style_provider.RoadEventsLayerStyleProvider
        roadEventsLayerStyleProvider,
    navigation_automotive_layer_styling_style_provider.NavigationStyleProvider
        styleProvider,
    navigation_automotive_navigation.Navigation navigation) {
  final result = _NavigationLayerFactory_createNavigationLayer(
      mapkit_map_map_window.MapWindowImpl.getNativePtr(mapWindow),
      mapkit_road_events_layer_style_provider.RoadEventsLayerStyleProviderImpl
          .getNativePtr(roadEventsLayerStyleProvider),
      navigation_automotive_layer_styling_style_provider
          .NavigationStyleProviderImpl.getNativePtr(styleProvider),
      navigation_automotive_navigation.NavigationImpl.getNativePtr(navigation));
  return NavigationLayerImpl.fromNativePtr(result);
}

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _NavigationLayerFactory_createNavigationLayer = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>,
                    ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_layer_NavigationLayerFactory_createNavigationLayer')
    .asFunction();
