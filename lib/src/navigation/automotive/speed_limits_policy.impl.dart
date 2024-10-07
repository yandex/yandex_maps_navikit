part of 'speed_limits_policy.dart';

final class SpeedLimitsNative extends ffi.Struct {
  external mapkit_localized_value.LocalizedValueNative urban;
  external mapkit_localized_value.LocalizedValueNative rural;
  external mapkit_localized_value.LocalizedValueNative expressway;
}

final SpeedLimitsNative Function(
        mapkit_localized_value.LocalizedValueNative,
        mapkit_localized_value.LocalizedValueNative,
        mapkit_localized_value.LocalizedValueNative) _SpeedLimitsNativeInit =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    SpeedLimitsNative Function(
                        mapkit_localized_value.LocalizedValueNative,
                        mapkit_localized_value.LocalizedValueNative,
                        mapkit_localized_value.LocalizedValueNative)>>(
            'yandex_flutter_navigation_automotive_SpeedLimits_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SpeedLimitsImpl.toPointer',
    toPlatform: '(val) => SpeedLimitsImpl.fromPointer(val, needFree: false)',
    platformType: 'SpeedLimits')
extension SpeedLimitsImpl on SpeedLimits {
  static SpeedLimits fromNative(SpeedLimitsNative native) {
    return SpeedLimits(
        mapkit_localized_value.LocalizedValueImpl.fromNative(native.urban),
        mapkit_localized_value.LocalizedValueImpl.fromNative(native.rural),
        mapkit_localized_value.LocalizedValueImpl.fromNative(
            native.expressway));
  }

  static SpeedLimitsNative toNative(SpeedLimits obj) {
    return _SpeedLimitsNativeInit(
        mapkit_localized_value.LocalizedValueImpl.toNative(obj.urban),
        mapkit_localized_value.LocalizedValueImpl.toNative(obj.rural),
        mapkit_localized_value.LocalizedValueImpl.toNative(obj.expressway));
  }

  static SpeedLimits? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        SpeedLimitsImpl.fromNative(ptr.cast<SpeedLimitsNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SpeedLimits? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SpeedLimitsNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

final class SpeedLimitsRulesNative extends ffi.Struct {
  @ffi.Int64()
  external core.int urban;
  @ffi.Int64()
  external core.int rural;
  @ffi.Int64()
  external core.int expressway;
}

final SpeedLimitsRulesNative Function(core.int, core.int, core.int)
    _SpeedLimitsRulesNativeInit = lib.library
        .lookup<
                ffi.NativeFunction<
                    SpeedLimitsRulesNative Function(
                        ffi.Int64, ffi.Int64, ffi.Int64)>>(
            'yandex_flutter_navigation_automotive_SpeedLimitsRules_init')
        .asFunction(isLeaf: true);

@bindings_annotations.ContainerData(
    toNative: 'SpeedLimitsRulesImpl.toPointer',
    toPlatform:
        '(val) => SpeedLimitsRulesImpl.fromPointer(val, needFree: false)',
    platformType: 'SpeedLimitsRules')
extension SpeedLimitsRulesImpl on SpeedLimitsRules {
  static SpeedLimitsRules fromNative(SpeedLimitsRulesNative native) {
    return SpeedLimitsRules(
        SpeedLimitsRulesTypeImpl.fromInt(native.urban),
        SpeedLimitsRulesTypeImpl.fromInt(native.rural),
        SpeedLimitsRulesTypeImpl.fromInt(native.expressway));
  }

  static SpeedLimitsRulesNative toNative(SpeedLimitsRules obj) {
    return _SpeedLimitsRulesNativeInit(
        SpeedLimitsRulesTypeImpl.toInt(obj.urban),
        SpeedLimitsRulesTypeImpl.toInt(obj.rural),
        SpeedLimitsRulesTypeImpl.toInt(obj.expressway));
  }

  static SpeedLimitsRules? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr == ffi.nullptr) {
      return null;
    }
    final result =
        SpeedLimitsRulesImpl.fromNative(ptr.cast<SpeedLimitsRulesNative>().ref);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static ffi.Pointer<ffi.Void> toPointer(SpeedLimitsRules? val) {
    if (val == null) {
      return ffi.nullptr;
    }
    final result = malloc.call<SpeedLimitsRulesNative>();
    result.ref = toNative(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SpeedLimitsRulesTypeImpl.toPointer',
    toPlatform:
        '(val) => SpeedLimitsRulesTypeImpl.fromPointer(val, needFree: false)',
    platformType: 'SpeedLimitsRulesType')
extension SpeedLimitsRulesTypeImpl on SpeedLimitsRulesType {
  static core.int toInt(SpeedLimitsRulesType e) {
    return e.index;
  }

  static SpeedLimitsRulesType fromInt(core.int val) {
    return SpeedLimitsRulesType.values[val];
  }

  static SpeedLimitsRulesType? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(SpeedLimitsRulesType? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SpeedLimitsPolicyImpl.getNativePtr',
    toPlatform:
        '(val) => SpeedLimitsPolicyImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'SpeedLimitsPolicy')
class SpeedLimitsPolicyImpl implements SpeedLimitsPolicy, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_SpeedLimitsPolicy_free.cast());

  /// @nodoc
  SpeedLimitsPolicyImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  SpeedLimitsPolicyImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(SpeedLimitsPolicy? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as SpeedLimitsPolicyImpl).ptr;
  }

  @internal

  /// @nodoc
  static SpeedLimitsPolicy? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SpeedLimitsPolicyImpl.fromNativePtr(ptr);
  }

  @core.override
  SpeedLimits get legalSpeedLimits {
    final result = _SpeedLimitsPolicy_get_legalSpeedLimits(ptr);
    return SpeedLimitsImpl.fromNative(result);
  }

  @core.override
  SpeedLimitsRules get speedLimitsRules {
    final result = _SpeedLimitsPolicy_get_speedLimitsRules(ptr);
    return SpeedLimitsRulesImpl.fromNative(result);
  }

  SpeedLimits customSpeedLimits(core.double toleranceRatio) {
    final result = _SpeedLimitsPolicy_customSpeedLimits(ptr, toleranceRatio);
    return SpeedLimitsImpl.fromNative(result);
  }
}

final _SpeedLimitsPolicy_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_SpeedLimitsPolicy_free');

final SpeedLimitsNative Function(
    ffi
        .Pointer<ffi.Void>) _SpeedLimitsPolicy_get_legalSpeedLimits = lib
    .library
    .lookup<
            ffi
            .NativeFunction<SpeedLimitsNative Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_SpeedLimitsPolicy_get_legalSpeedLimits')
    .asFunction();

final SpeedLimitsRulesNative Function(
    ffi
        .Pointer<ffi.Void>) _SpeedLimitsPolicy_get_speedLimitsRules = lib
    .library
    .lookup<
            ffi.NativeFunction<
                SpeedLimitsRulesNative Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_SpeedLimitsPolicy_get_speedLimitsRules')
    .asFunction();

final SpeedLimitsNative Function(
    ffi.Pointer<ffi.Void>,
    core
        .double) _SpeedLimitsPolicy_customSpeedLimits = lib.library
    .lookup<
            ffi.NativeFunction<
                SpeedLimitsNative Function(ffi.Pointer<ffi.Void>, ffi.Double)>>(
        'yandex_flutter_navigation_automotive_SpeedLimitsPolicy_customSpeedLimits')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int) _SpeedLimitsPolicy_set =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
            'yandex_flutter_navigation_automotive_SpeedLimitsPolicy_set_')
        .asFunction(isLeaf: true);

final class _SpeedPolicyListenerWrapper implements ffi.Finalizable {
  _SpeedPolicyListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer =
      ffi.NativeFinalizer(_SpeedPolicyListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension SpeedPolicyListenerImpl on SpeedPolicyListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<SpeedPolicyListener>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<SpeedPolicyListener, _SpeedPolicyListenerWrapper?>();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(SpeedPolicyListener obj) {
    final ptr = _SpeedPolicyListener_new(
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _SpeedPolicyListener_onSpeedPolicyChanged));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _SpeedPolicyListenerWrapper(ptr);
    _SpeedPolicyListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(SpeedPolicyListener? obj) {
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
        .int) _SpeedPolicyListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_SpeedPolicyListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)
    _SpeedPolicyListener_new = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Pointer<ffi.Void> Function(
                        ffi.Pointer<
                            ffi
                            .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)>>(
            'yandex_flutter_navigation_automotive_SpeedPolicyListener_new')
        .asFunction(isLeaf: true);

final _SpeedPolicyListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_SpeedPolicyListener_free');
void _SpeedPolicyListener_onSpeedPolicyChanged(ffi.Pointer<ffi.Void> _ptr) {
  final listener = SpeedPolicyListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.onSpeedPolicyChanged();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

@bindings_annotations.ContainerData(
    toNative: 'SpeedPolicyProviderImpl.getNativePtr',
    toPlatform:
        '(val) => SpeedPolicyProviderImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'SpeedPolicyProvider')
class SpeedPolicyProviderImpl implements SpeedPolicyProvider, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer =
      ffi.NativeFinalizer(_SpeedPolicyProvider_free.cast());

  /// @nodoc
  SpeedPolicyProviderImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  SpeedPolicyProviderImpl.fromNativePtr(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(SpeedPolicyProvider? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as SpeedPolicyProviderImpl).ptr;
  }

  @internal

  /// @nodoc
  static SpeedPolicyProvider? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return SpeedPolicyProviderImpl.fromNativePtr(ptr);
  }

  @core.override
  SpeedLimitsPolicy get speedLimitsPolicy {
    final result = _SpeedPolicyProvider_get_speedLimitsPolicy(ptr);
    return SpeedLimitsPolicyImpl.fromNativePtr(result);
  }

  void addListener(SpeedPolicyListener speedLimitsListener) {
    _SpeedPolicyProvider_addListener(
        ptr, SpeedPolicyListenerImpl.getNativePtr(speedLimitsListener));
  }

  void removeListener(SpeedPolicyListener speedLimitsListener) {
    _SpeedPolicyProvider_removeListener(
        ptr, SpeedPolicyListenerImpl.getNativePtr(speedLimitsListener));
  }

  void updateSpeedLimitsPolicy(mapkit_geometry_point.Point position) {
    _SpeedPolicyProvider_updateSpeedLimitsPolicy(
        ptr, mapkit_geometry_point.PointImpl.toNative(position));
  }
}

final _SpeedPolicyProvider_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_SpeedPolicyProvider_free');

final ffi.Pointer<ffi.Void> Function(
    ffi
        .Pointer<ffi.Void>) _SpeedPolicyProvider_get_speedLimitsPolicy = lib
    .library
    .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_SpeedPolicyProvider_get_speedLimitsPolicy')
    .asFunction();

final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _SpeedPolicyProvider_addListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_SpeedPolicyProvider_addListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    ffi
        .Pointer<ffi.Void>) _SpeedPolicyProvider_removeListener = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_SpeedPolicyProvider_removeListener')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    mapkit_geometry_point
        .PointNative) _SpeedPolicyProvider_updateSpeedLimitsPolicy = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, mapkit_geometry_point.PointNative)>>(
        'yandex_flutter_navigation_automotive_SpeedPolicyProvider_updateSpeedLimitsPolicy')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, core.int) _SpeedPolicyProvider_set =
    lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
            'yandex_flutter_navigation_automotive_SpeedPolicyProvider_set_')
        .asFunction(isLeaf: true);

SpeedPolicyProvider _getSpeedPolicyProvider() {
  final result = _SpeedPolicyProviderFactory_getSpeedPolicyProvider();
  return SpeedPolicyProviderImpl.fromNativePtr(result);
}

final ffi.Pointer<ffi.Void> Function()
    _SpeedPolicyProviderFactory_getSpeedPolicyProvider = lib.library
        .lookup<ffi.NativeFunction<ffi.Pointer<ffi.Void> Function()>>(
            'yandex_flutter_navigation_automotive_SpeedPolicyProviderFactory_getSpeedPolicyProvider')
        .asFunction();
