part of 'style_provider.dart';

@bindings_annotations.ContainerData(
    toNative: 'RoadEventsLayerTextStyleImpl.getNativePtr',
    toPlatform:
        '(val) => RoadEventsLayerTextStyleImpl.fromPointer(val, needFree: false)',
    platformType: 'RoadEventsLayerTextStyle')
final class RoadEventsLayerTextStyleImpl implements RoadEventsLayerTextStyle {
  RoadEventsLayerTextStyleImpl(
      core.double fontSize, ui.Color color, ui.Color? outlineColor)
      : this.fromNativePtr(_RoadEventsLayerTextStyle_init(
            fontSize,
            to_native.toNativeColor(color),
            to_native.toNativePtrColor(outlineColor)));

  @core.override
  late final fontSize = _RoadEventsLayerTextStyle_get_fontSize(_ptr);
  @core.override
  late final color =
      to_platform.toPlatformColor(_RoadEventsLayerTextStyle_get_color(_ptr));
  @core.override
  late final outlineColor = to_platform.toPlatformFromPointerColor(
      _RoadEventsLayerTextStyle_get_outlineColor(_ptr));

  final ffi.Pointer<ffi.Void> _ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_RoadEventsLayerTextStyle_free.cast());

  RoadEventsLayerTextStyleImpl.fromNativePtr(this._ptr) {
    _finalizer.attach(this, _ptr);
  }

  static ffi.Pointer<ffi.Void> getNativePtr(RoadEventsLayerTextStyle? obj) {
    return (obj as RoadEventsLayerTextStyleImpl?)?._ptr ?? ffi.nullptr;
  }

  static RoadEventsLayerTextStyle? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    return ptr == ffi.nullptr
        ? null
        : RoadEventsLayerTextStyleImpl.fromNativePtr(ptr);
  }

  static RoadEventsLayerTextStyle? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = RoadEventsLayerTextStyleImpl.fromNativePtr(
        ptr.cast<ffi.Pointer<ffi.Void>>().value);

    if (needFree) {
      malloc.free(ptr);
    }

    return result;
  }
}

final _RoadEventsLayerTextStyle_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Void)>>(
    'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerTextStyle_free');

final ffi.Pointer<ffi.Void> Function(
    core.double,
    native_types.NativeColor,
    ffi
        .Pointer<ffi.Void>) _RoadEventsLayerTextStyle_init = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Float,
                    native_types.NativeColor, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerTextStyle_init')
    .asFunction(isLeaf: true);

final core.double Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventsLayerTextStyle_get_fontSize = lib.library
    .lookup<ffi.NativeFunction<ffi.Float Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerTextStyle_get_fontSize')
    .asFunction(isLeaf: true);
final native_types.NativeColor Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventsLayerTextStyle_get_color = lib.library
    .lookup<
            ffi.NativeFunction<
                native_types.NativeColor Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerTextStyle_get_color')
    .asFunction(isLeaf: true);
final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventsLayerTextStyle_get_outlineColor = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerTextStyle_get_outlineColor')
    .asFunction(isLeaf: true);

final class RoadEventsLayerHighlightCircleStyleNative extends ffi.Struct {
  external native_types.NativeColor strokeColor;
  @ffi.Float()
  external core.double strokeWidth;
  external native_types.NativeColor fillColor;
  @ffi.Float()
  external core.double maximumRadius;
  external native_types.NativeInterval animationDuration;
}

final RoadEventsLayerHighlightCircleStyleNative Function(
  native_types.NativeColor,
  core.double,
  native_types.NativeColor,
  core.double,
  native_types.NativeInterval,
) _RoadEventsLayerHighlightCircleStyleNativeInit = lib.library
    .lookup<
            ffi.NativeFunction<
                RoadEventsLayerHighlightCircleStyleNative Function(
                  native_types.NativeColor,
                  ffi.Float,
                  native_types.NativeColor,
                  ffi.Float,
                  native_types.NativeInterval,
                )>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerHighlightCircleStyle_init')
    .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'RoadEventsLayerHighlightCircleStyleImpl.toPointer',
    toPlatform:
        '(val) => RoadEventsLayerHighlightCircleStyleImpl.fromPointer(val, needFree: false)',
    platformType: 'RoadEventsLayerHighlightCircleStyle')
extension RoadEventsLayerHighlightCircleStyleImpl
    on RoadEventsLayerHighlightCircleStyle {
  static RoadEventsLayerHighlightCircleStyle fromNative(
      RoadEventsLayerHighlightCircleStyleNative native) {
    return RoadEventsLayerHighlightCircleStyle(
      to_platform.toPlatformColor(native.strokeColor),
      strokeWidth: native.strokeWidth,
      to_platform.toPlatformColor(native.fillColor),
      maximumRadius: native.maximumRadius,
      to_platform.toPlatformTimeInterval(native.animationDuration),
    );
  }

  static RoadEventsLayerHighlightCircleStyleNative toNative(
      RoadEventsLayerHighlightCircleStyle obj) {
    return _RoadEventsLayerHighlightCircleStyleNativeInit(
      to_native.toNativeColor(obj.strokeColor),
      obj.strokeWidth,
      to_native.toNativeColor(obj.fillColor),
      obj.maximumRadius,
      to_native.toNativeTimeInterval(obj.animationDuration),
    );
  }

  static RoadEventsLayerHighlightCircleStyle? fromPointer(
      ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = RoadEventsLayerHighlightCircleStyleImpl.fromNative(
        ptr.cast<RoadEventsLayerHighlightCircleStyleNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(
      RoadEventsLayerHighlightCircleStyle? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<RoadEventsLayerHighlightCircleStyleNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'RoadEventsLayerHighlightModeImpl.toPointer',
    toPlatform:
        '(val) => RoadEventsLayerHighlightModeImpl.fromPointer(val, needFree: false)',
    platformType: 'RoadEventsLayerHighlightMode')
extension RoadEventsLayerHighlightModeImpl on RoadEventsLayerHighlightMode {
  static core.int toInt(RoadEventsLayerHighlightMode e) {
    return e.index;
  }

  static RoadEventsLayerHighlightMode fromInt(core.int val) {
    return RoadEventsLayerHighlightMode.values[val];
  }

  static RoadEventsLayerHighlightMode? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(RoadEventsLayerHighlightMode? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.WeakInterface('mapkit.road_events_layer.RoadEventStyle')
@bindings_annotations.ContainerData(
    toNative: 'RoadEventsLayerRoadEventStyleImpl.getNativePtr',
    toPlatform:
        '(val) => RoadEventsLayerRoadEventStyleImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'RoadEventsLayerRoadEventStyle')
class RoadEventsLayerRoadEventStyleImpl
    implements RoadEventsLayerRoadEventStyle, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_RoadEventsLayerRoadEventStyle_free.cast());

  /// @nodoc
  RoadEventsLayerRoadEventStyleImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  RoadEventsLayerRoadEventStyleImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory RoadEventsLayerRoadEventStyleImpl.fromNativePtr(
          ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      RoadEventsLayerRoadEventStyle? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as RoadEventsLayerRoadEventStyleImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _RoadEventsLayerRoadEventStyle_check(ptr);
  }

  @internal

  /// @nodoc
  static RoadEventsLayerRoadEventStyle? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return RoadEventsLayerRoadEventStyleImpl.fromNativePtr(ptr);
  }

  @core.override
  core.int get zoomMin {
    return _RoadEventStyle_get_zoomMin(ptr);
  }

  @core.override
  set zoomMin(core.int val) {
    _RoadEventStyle_set_zoomMin(ptr, val);
  }

  @core.override
  math.Point<core.double> get iconAnchor {
    return to_platform.toPlatformPoint(_RoadEventStyle_get_iconAnchor(ptr));
  }

  @core.override
  set iconAnchor(math.Point<core.double> val) {
    _RoadEventStyle_set_iconAnchor(ptr, to_native.toNativePoint(val));
  }

  @core.override
  core.List<math.Point<core.double>> get zoomScaleFunction {
    return to_platform
        .toVectorPoint(_RoadEventStyle_get_zoomScaleFunction(ptr));
  }

  @core.override
  set zoomScaleFunction(core.List<math.Point<core.double>> val) {
    _RoadEventStyle_set_zoomScaleFunction(
        ptr, to_native.toNativeVectorPoint(val));
  }

  @core.override
  RoadEventsLayerTextStyle? get captionStyle {
    return RoadEventsLayerTextStyleImpl.fromOptionalPtr(
        _RoadEventStyle_get_captionStyle(ptr));
  }

  @core.override
  set captionStyle(RoadEventsLayerTextStyle? val) {
    _RoadEventStyle_set_captionStyle(
        ptr, RoadEventsLayerTextStyleImpl.getNativePtr(val));
  }

  @core.override
  math.Point<core.double> get pulsationCenter {
    return to_platform
        .toPlatformPoint(_RoadEventStyle_get_pulsationCenter(ptr));
  }

  @core.override
  set pulsationCenter(math.Point<core.double> val) {
    _RoadEventStyle_set_pulsationCenter(ptr, to_native.toNativePoint(val));
  }

  void setIconImage(image_provider.ImageProvider image) {
    _RoadEventStyle_setIconImage(ptr, to_native.toNativeImageProvider(image));
  }
}

final _RoadEventsLayerRoadEventStyle_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_free');
final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventsLayerRoadEventStyle_check = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_check')
    .asFunction(isLeaf: true);

final core.int Function(ffi.Pointer<ffi.Void>) _RoadEventStyle_get_zoomMin = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Int Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_get_zoomMin')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _RoadEventStyle_set_zoomMin = lib.library
    .lookup<
            ffi
            .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_set_zoomMin')
    .asFunction();

final native_types.NativePoint Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventStyle_get_iconAnchor = lib.library
    .lookup<
            ffi.NativeFunction<
                native_types.NativePoint Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_get_iconAnchor')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    native_types
        .NativePoint) _RoadEventStyle_set_iconAnchor = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, native_types.NativePoint)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_set_iconAnchor')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventStyle_get_zoomScaleFunction = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_get_zoomScaleFunction')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _RoadEventStyle_set_zoomScaleFunction = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_set_zoomScaleFunction')
    .asFunction();

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventStyle_get_captionStyle = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_get_captionStyle')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _RoadEventStyle_set_captionStyle = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_set_captionStyle')
    .asFunction();

final native_types.NativePoint Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventStyle_get_pulsationCenter = lib.library
    .lookup<
            ffi.NativeFunction<
                native_types.NativePoint Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_get_pulsationCenter')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    native_types
        .NativePoint) _RoadEventStyle_set_pulsationCenter = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, native_types.NativePoint)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_set_pulsationCenter')
    .asFunction();

final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _RoadEventStyle_setIconImage = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_setIconImage')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _RoadEventsLayerRoadEventStyle_set = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStyle_set_')
    .asFunction(isLeaf: true);

@bindings_annotations
    .WeakInterface('mapkit.road_events_layer.RoadEventStylingProperties')
@bindings_annotations.ContainerData(
    toNative: 'RoadEventsLayerRoadEventStylingPropertiesImpl.getNativePtr',
    toPlatform:
        '(val) => RoadEventsLayerRoadEventStylingPropertiesImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'RoadEventsLayerRoadEventStylingProperties')
class RoadEventsLayerRoadEventStylingPropertiesImpl
    implements RoadEventsLayerRoadEventStylingProperties, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(
      _RoadEventsLayerRoadEventStylingProperties_free.cast());

  /// @nodoc
  RoadEventsLayerRoadEventStylingPropertiesImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  RoadEventsLayerRoadEventStylingPropertiesImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory RoadEventsLayerRoadEventStylingPropertiesImpl.fromNativePtr(
          ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(
      RoadEventsLayerRoadEventStylingProperties? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as RoadEventsLayerRoadEventStylingPropertiesImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _RoadEventsLayerRoadEventStylingProperties_check(ptr);
  }

  @internal

  /// @nodoc
  static RoadEventsLayerRoadEventStylingProperties? fromOptionalPtr(
      ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return RoadEventsLayerRoadEventStylingPropertiesImpl.fromNativePtr(ptr);
  }

  @core.override
  core.List<mapkit_road_events_event_tag.RoadEventsEventTag> get tags {
    return mapkit_road_events_event_tag.RoadEventsEventTagContainerExtension
        .toPlatformVector(_RoadEventStylingProperties_get_tags(ptr));
  }

  @core.override
  core.bool get inFuture {
    return _RoadEventStylingProperties_get_inFuture(ptr);
  }

  @core.override
  core.bool get onRoute {
    return _RoadEventStylingProperties_get_onRoute(ptr);
  }

  @core.override
  core.bool get selected {
    return _RoadEventStylingProperties_get_selected(ptr);
  }

  @core.override
  core.bool get userEvent {
    return _RoadEventStylingProperties_get_userEvent(ptr);
  }

  core.bool hasSignificanceGreaterOrEqual(
      mapkit_road_events_layer_significance.RoadEventSignificance
          significance) {
    return _RoadEventStylingProperties_hasSignificanceGreaterOrEqual(
        ptr,
        mapkit_road_events_layer_significance.RoadEventSignificanceImpl.toInt(
            significance));
  }
}

final _RoadEventsLayerRoadEventStylingProperties_free = lib.library.lookup<
        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
    'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStylingProperties_free');
final core.bool Function(
    ffi.Pointer<
        ffi.Void>) _RoadEventsLayerRoadEventStylingProperties_check = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStylingProperties_check')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventStylingProperties_get_tags = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStylingProperties_get_tags')
    .asFunction();

final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventStylingProperties_get_inFuture = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStylingProperties_get_inFuture')
    .asFunction();

final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventStylingProperties_get_onRoute = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStylingProperties_get_onRoute')
    .asFunction();

final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventStylingProperties_get_selected = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStylingProperties_get_selected')
    .asFunction();

final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventStylingProperties_get_userEvent = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStylingProperties_get_userEvent')
    .asFunction();

final core.bool Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _RoadEventStylingProperties_hasSignificanceGreaterOrEqual = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Bool Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStylingProperties_hasSignificanceGreaterOrEqual')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _RoadEventsLayerRoadEventStylingProperties_set = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerRoadEventStylingProperties_set_')
    .asFunction(isLeaf: true);

extension RoadEventsLayerStyleProviderImpl on RoadEventsLayerStyleProvider {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, RoadEventsLayerStyleProvider>{};
  static final _listenerToPointer =
      <RoadEventsLayerStyleProvider, ffi.Pointer<ffi.Void>>{};

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _RoadEventsLayerStyleProvider_free(ptr);
    final listener = _pointerToListener[ptr];
    _listenerToPointer.remove(listener);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _renewNonExsistPointer(
      ffi.Pointer<ffi.Void> ptr) {
    if (!_RoadEventsLayerStyleProvider_exists(ptr)) {
      final listener = _pointerToListener[ptr];
      _pointerToListener.remove(ptr);
      _listenerToPointer.remove(listener);
      return _newNativeObject(listener!);
    }
    return ptr;
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(
      RoadEventsLayerStyleProvider obj) {
    final ptr = _RoadEventsLayerStyleProvider_new(
        ffi.Pointer.fromFunction<
            ffi.Bool Function(
              ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>,
              ffi.Bool,
              ffi.Float,
              ffi.Pointer<ffi.Void>,
            )>(_RoadEventsLayerStyleProvider_provideStyle, false),
        ffi.Pointer.fromFunction<
            ffi.Pointer<ffi.Void> Function(
              ffi.Pointer<ffi.Void>,
              ffi.Bool,
              ffi.Int64,
            )>(_RoadEventsLayerStyleProvider_provideHighlightCircleStyle));
    _pointerToListener[ptr] = obj;
    _listenerToPointer[obj] = ptr;
    _RoadEventsLayerStyleProvidersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(RoadEventsLayerStyleProvider? obj) {
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
        .int) _RoadEventsLayerStyleProvidersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerStyleProvider_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Bool Function(
              ffi.Pointer<ffi.Void>,
              ffi.Pointer<ffi.Void>,
              ffi.Bool,
              ffi.Float,
              ffi.Pointer<ffi.Void>,
            )>>,
    ffi.Pointer<
        ffi.NativeFunction<
            ffi.Pointer<ffi.Void> Function(
              ffi.Pointer<ffi.Void>,
              ffi.Bool,
              ffi.Int64,
            )>>) _RoadEventsLayerStyleProvider_new = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Bool Function(
                              ffi.Pointer<ffi.Void>,
                              ffi.Pointer<ffi.Void>,
                              ffi.Bool,
                              ffi.Float,
                              ffi.Pointer<ffi.Void>,
                            )>>,
                    ffi.Pointer<
                        ffi.NativeFunction<
                            ffi.Pointer<ffi.Void> Function(
                              ffi.Pointer<ffi.Void>,
                              ffi.Bool,
                              ffi.Int64,
                            )>>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerStyleProvider_new')
    .asFunction(isLeaf: true);

final void Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventsLayerStyleProvider_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerStyleProvider_free')
    .asFunction(isLeaf: true);
final core.bool Function(
    ffi
        .Pointer<ffi.Void>) _RoadEventsLayerStyleProvider_exists = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_road_events_layer_RoadEventsLayerStyleProvider_exists')
    .asFunction(isLeaf: true);

core.bool _RoadEventsLayerStyleProvider_provideStyle(
  ffi.Pointer<ffi.Void> _ptr,
  ffi.Pointer<ffi.Void> roadEventStylingProperties,
  core.bool isNightMode,
  core.double scaleFactor,
  ffi.Pointer<ffi.Void> style,
) {
  final listener = RoadEventsLayerStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return listener.provideStyle(
      RoadEventsLayerRoadEventStylingPropertiesImpl.fromNativePtr(
          roadEventStylingProperties),
      isNightMode,
      scaleFactor,
      RoadEventsLayerRoadEventStyleImpl.fromNativePtr(style),
    );
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

ffi.Pointer<ffi.Void> _RoadEventsLayerStyleProvider_provideHighlightCircleStyle(
  ffi.Pointer<ffi.Void> _ptr,
  core.bool isNightMode,
  core.int highlightMode,
) {
  final listener = RoadEventsLayerStyleProviderImpl._pointerToListener[_ptr];
  if (listener == null) {
    throw core.Exception();
  }
  try {
    return RoadEventsLayerHighlightCircleStyleImpl.toPointer(
        listener.provideHighlightCircleStyle(
      isNightMode,
      RoadEventsLayerHighlightModeImpl.fromInt(highlightMode),
    ));
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}
