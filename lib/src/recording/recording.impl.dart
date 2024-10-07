part of 'recording.dart';

@bindings_annotations.ContainerData(
    toNative: 'ReportDataImpl.getNativePtr',
    toPlatform:
        '(val) => ReportDataImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'ReportData')
class ReportDataImpl implements ReportData, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_ReportData_free.cast());

  /// @nodoc
  ReportDataImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  ReportDataImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(ReportData? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as ReportDataImpl).ptr;
  }

  @internal

  /// @nodoc
  static ReportData? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return ReportDataImpl.fromNativePtr(ptr);
  }

  @core.override
  core.DateTime get startTime {
    final result = _ReportData_get_startTime(ptr);
    return to_platform.toPlatformAbsTimestamp(result);
  }

  @core.override
  core.DateTime get endTime {
    final result = _ReportData_get_endTime(ptr);
    return to_platform.toPlatformAbsTimestamp(result);
  }

  typed_data.ByteBuffer data() {
    final result = _ReportData_data(ptr);
    return to_platform.toPlatformBytes(result);
  }
}

final _ReportData_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_recording_ReportData_free');

final native_types.NativeAbsTimestamp Function(ffi.Pointer<ffi.Void>)
    _ReportData_get_startTime = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeAbsTimestamp Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_recording_ReportData_get_startTime')
        .asFunction();

final native_types.NativeAbsTimestamp Function(ffi.Pointer<ffi.Void>)
    _ReportData_get_endTime = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeAbsTimestamp Function(
                        ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_recording_ReportData_get_endTime')
        .asFunction();

final native_types.NativeBytes Function(ffi.Pointer<ffi.Void>)
    _ReportData_data = lib.library
        .lookup<
                ffi.NativeFunction<
                    native_types.NativeBytes Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_recording_ReportData_data')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int) _ReportData_set = lib
    .library
    .lookup<
        ffi.NativeFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Int64)>>('yandex_flutter_recording_ReportData_set_')
    .asFunction(isLeaf: true);

@bindings_annotations.WeakInterface('recording.ReportCollector')
@bindings_annotations.ContainerData(
    toNative: 'ReportCollectorImpl.getNativePtr',
    toPlatform:
        '(val) => ReportCollectorImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'ReportCollector')
class ReportCollectorImpl implements ReportCollector, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_ReportCollector_free.cast());

  /// @nodoc
  ReportCollectorImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  ReportCollectorImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory ReportCollectorImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(ReportCollector? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as ReportCollectorImpl).ptr;
  }

  @core.override
  core.bool isValid() {
    return _ReportCollector_check(ptr);
  }

  @internal

  /// @nodoc
  static ReportCollector? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return ReportCollectorImpl.fromNativePtr(ptr);
  }

  core.List<ReportData> reports() {
    final result = _ReportCollector_reports(ptr);
    exception.checkCallResult();
    return ReportDataContainerExtension.toPlatformVector(result);
  }
}

final _ReportCollector_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_recording_ReportCollector_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _ReportCollector_check = lib
    .library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_recording_ReportCollector_check')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)
    _ReportCollector_reports = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_recording_ReportCollector_reports')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int) _ReportCollector_set = lib
    .library
    .lookup<
        ffi.NativeFunction<
            ffi.Void Function(ffi.Pointer<ffi.Void>,
                ffi.Int64)>>('yandex_flutter_recording_ReportCollector_set_')
    .asFunction(isLeaf: true);

ReportCollector get _instance {
  return ReportCollectorImpl.fromNativePtr(
      _ReportCollectorFactory_get_instance());
}

final ffi.Pointer<ffi.Void> Function() _ReportCollectorFactory_get_instance =
    lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
            'yandex_flutter_recording_ReportCollectorFactory_get_instance')
        .asFunction(isLeaf: true);
