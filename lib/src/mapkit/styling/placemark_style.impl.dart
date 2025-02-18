part of 'placemark_style.dart';

@bindings_annotations.WeakInterface('mapkit.styling.PlacemarkStyle')
@bindings_annotations.ContainerData(
    toNative: 'PlacemarkStyleImpl.getNativePtr',
    toPlatform:
        '(val) => PlacemarkStyleImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'PlacemarkStyle')
class PlacemarkStyleImpl implements PlacemarkStyle, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_PlacemarkStyle_free.cast());

  /// @nodoc
  PlacemarkStyleImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  PlacemarkStyleImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory PlacemarkStyleImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(PlacemarkStyle? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as PlacemarkStyleImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _PlacemarkStyle_check(ptr);
  }

  @internal

  /// @nodoc
  static PlacemarkStyle? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return PlacemarkStyleImpl.fromNativePtr(ptr);
  }

  void setArrowModel() {
    _PlacemarkStyle_setArrowModel(ptr);
    exception.checkCallResult();
  }

  void setGltfModel(runtime_data_provider_with_id.DataProviderWithId model,
      mapkit_map_model_style.ModelStyle modelStyle) {
    _PlacemarkStyle_setGltfModel(
        ptr,
        runtime_data_provider_with_id.DataProviderWithIdImpl.getNativePtr(
            model),
        mapkit_map_model_style.ModelStyleImpl.toNative(modelStyle));
    exception.checkCallResult();
  }

  void setImage(image_provider.ImageProvider image) {
    _PlacemarkStyle_setImage(ptr, to_native.toNativeImageProvider(image));
    exception.checkCallResult();
  }

  void setAnimatedImage(
      animated_image_provider.AnimatedImageProvider iconImage) {
    _PlacemarkStyle_setAnimatedImage(
        ptr, to_native.toNativeAnimatedImageProvider(iconImage));
    exception.checkCallResult();
  }

  void setIconAnchor(math.Point<core.double> iconAnchor) {
    _PlacemarkStyle_setIconAnchor(ptr, to_native.toNativePoint(iconAnchor));
    exception.checkCallResult();
  }

  void setScaleFunction(core.List<math.Point<core.double>> points) {
    _PlacemarkStyle_setScaleFunction(
        ptr, to_native.toNativeVectorPoint(points));
    exception.checkCallResult();
  }

  void setMinZoomVisible(core.double? minZoom) {
    _PlacemarkStyle_setMinZoomVisible(ptr, to_native.toNativePtrFloat(minZoom));
    exception.checkCallResult();
  }
}

final _PlacemarkStyle_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_PlacemarkStyle_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _PlacemarkStyle_check = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_PlacemarkStyle_check')
    .asFunction(isLeaf: true);

final void Function(ffi.Pointer<ffi.Void>) _PlacemarkStyle_setArrowModel = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_mapkit_styling_PlacemarkStyle_setArrowModel')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>,
        mapkit_map_model_style.ModelStyleNative) _PlacemarkStyle_setGltfModel =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>,
                        ffi.Pointer<ffi.Void>,
                        mapkit_map_model_style.ModelStyleNative)>>(
            'yandex_flutter_mapkit_styling_PlacemarkStyle_setGltfModel')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _PlacemarkStyle_setImage = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_styling_PlacemarkStyle_setImage')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _PlacemarkStyle_setAnimatedImage = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_styling_PlacemarkStyle_setAnimatedImage')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, native_types.NativePoint)
    _PlacemarkStyle_setIconAnchor = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, native_types.NativePoint)>>(
            'yandex_flutter_mapkit_styling_PlacemarkStyle_setIconAnchor')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _PlacemarkStyle_setScaleFunction = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_styling_PlacemarkStyle_setScaleFunction')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _PlacemarkStyle_setMinZoomVisible = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_mapkit_styling_PlacemarkStyle_setMinZoomVisible')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int) _PlacemarkStyle_set = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_mapkit_styling_PlacemarkStyle_set_')
    .asFunction(isLeaf: true);
