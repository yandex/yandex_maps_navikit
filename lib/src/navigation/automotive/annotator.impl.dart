part of 'annotator.dart';

@bindings_annotations.ContainerData(
    toNative: 'AnnotatedEventsImpl.toPointer',
    toPlatform:
        '(val) => AnnotatedEventsImpl.fromPointer(val, needFree: false)',
    platformType: 'AnnotatedEvents')
extension AnnotatedEventsImpl on AnnotatedEvents {
  static core.int toInt(AnnotatedEvents e) {
    return e.value;
  }

  static AnnotatedEvents fromInt(core.int val) {
    return AnnotatedEvents(val);
  }

  static AnnotatedEvents? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(AnnotatedEvents? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'AnnotatedRoadEventsImpl.toPointer',
    toPlatform:
        '(val) => AnnotatedRoadEventsImpl.fromPointer(val, needFree: false)',
    platformType: 'AnnotatedRoadEvents')
extension AnnotatedRoadEventsImpl on AnnotatedRoadEvents {
  static core.int toInt(AnnotatedRoadEvents e) {
    return e.value;
  }

  static AnnotatedRoadEvents fromInt(core.int val) {
    return AnnotatedRoadEvents(val);
  }

  static AnnotatedRoadEvents? fromPointer(ffi.Pointer<ffi.Void> ptr,
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

  static ffi.Pointer<ffi.Void> toPointer(AnnotatedRoadEvents? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast();
  }
}

final class _AnnotatorListenerWrapper implements ffi.Finalizable {
  _AnnotatorListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer = ffi.NativeFinalizer(_AnnotatorListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

extension AnnotatorListenerImpl on AnnotatorListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<AnnotatorListener>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<AnnotatorListener, _AnnotatorListenerWrapper?>();

  static void _destructor(core.dynamic data) {
    final core.int address = data;
    final ptr = ffi.Pointer<ffi.Void>.fromAddress(address);
    _pointerToListener.remove(ptr);
  }

  static ffi.Pointer<ffi.Void> _newNativeObject(AnnotatorListener obj) {
    final ptr = _AnnotatorListener_new(
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _AnnotatorListener_manoeuvreAnnotated),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _AnnotatorListener_roadEventAnnotated),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _AnnotatorListener_speedingAnnotated),
        ffi.Pointer.fromFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>(
            _AnnotatorListener_fasterAlternativeAnnotated));
    _pointerToListener[ptr] = core.WeakReference(obj);
    _listenerToPointer[obj] = _AnnotatorListenerWrapper(ptr);
    _AnnotatorListenersetSendPort(
        ptr,
        nativeBinding.createPortWithCallback(_destructor),
        nativeBinding.createExecutePort());

    return ptr;
  }

  static ffi.Pointer<ffi.Void> getNativePtr(AnnotatorListener? obj) {
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
        .int) _AnnotatorListenersetSendPort = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(
                    ffi.Pointer<ffi.Void>, ffi.Int64, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_AnnotatorListener_setSendPort')
    .asFunction(isLeaf: true);

final ffi.Pointer<ffi.Void> Function(
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
        ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)
    _AnnotatorListener_new = lib.library
        .lookup<
            ffi.NativeFunction<
                ffi.Pointer<ffi.Void> Function(
                    ffi.Pointer<
                        ffi
                        .NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_navigation_automotive_AnnotatorListener_new')
        .asFunction(isLeaf: true);

final _AnnotatorListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_AnnotatorListener_free');
void _AnnotatorListener_manoeuvreAnnotated(ffi.Pointer<ffi.Void> _ptr) {
  final listener = AnnotatorListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.manoeuvreAnnotated();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _AnnotatorListener_roadEventAnnotated(ffi.Pointer<ffi.Void> _ptr) {
  final listener = AnnotatorListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.roadEventAnnotated();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _AnnotatorListener_speedingAnnotated(ffi.Pointer<ffi.Void> _ptr) {
  final listener = AnnotatorListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.speedingAnnotated();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

void _AnnotatorListener_fasterAlternativeAnnotated(ffi.Pointer<ffi.Void> _ptr) {
  final listener = AnnotatorListenerImpl._pointerToListener[_ptr]?.target;
  if (listener == null) {
    throw core.Exception();
  }
  try {
    listener.fasterAlternativeAnnotated();
  } catch (e, stack) {
    exception.nativeAssert(
        'Unhandled exception $e from native call listener\n$stack');
    rethrow;
  }
}

@bindings_annotations.WeakInterface('navigation.automotive.Annotator')
@bindings_annotations.ContainerData(
    toNative: 'AnnotatorImpl.getNativePtr',
    toPlatform:
        '(val) => AnnotatorImpl.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)',
    platformType: 'Annotator')
class AnnotatorImpl implements Annotator, ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_Annotator_free.cast());

  /// @nodoc
  AnnotatorImpl.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  AnnotatorImpl.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory AnnotatorImpl.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(Annotator? obj) {
    if (obj == null) return ffi.nullptr;
    return (obj as AnnotatorImpl).ptr;
  }

  core.bool isValid() {
    return _Annotator_check(ptr);
  }

  @internal

  /// @nodoc
  static Annotator? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return AnnotatorImpl.fromNativePtr(ptr);
  }

  @core.override
  AnnotatedEvents get annotatedEvents {
    return AnnotatedEventsImpl.fromInt(_Annotator_get_annotatedEvents(ptr));
  }

  @core.override
  set annotatedEvents(AnnotatedEvents val) {
    _Annotator_set_annotatedEvents(ptr, AnnotatedEventsImpl.toInt(val));
  }

  @core.override
  AnnotatedRoadEvents get annotatedRoadEvents {
    return AnnotatedRoadEventsImpl.fromInt(
        _Annotator_get_annotatedRoadEvents(ptr));
  }

  @core.override
  set annotatedRoadEvents(AnnotatedRoadEvents val) {
    _Annotator_set_annotatedRoadEvents(ptr, AnnotatedRoadEventsImpl.toInt(val));
  }

  void setSpeaker(mapkit_annotations_speaker.Speaker? speaker) {
    _Annotator_setSpeaker(
        ptr, mapkit_annotations_speaker.SpeakerImpl.getNativePtr(speaker));
  }

  void mute() {
    _Annotator_mute(ptr);
  }

  void unmute() {
    _Annotator_unmute(ptr);
  }

  void addListener(AnnotatorListener annotatorListener) {
    _Annotator_addListener(
        ptr, AnnotatorListenerImpl.getNativePtr(annotatorListener));
  }

  void removeListener(AnnotatorListener annotatorListener) {
    _Annotator_removeListener(
        ptr, AnnotatorListenerImpl.getNativePtr(annotatorListener));
  }
}

final _Annotator_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Annotator_free');
final core.bool Function(ffi.Pointer<ffi.Void>) _Annotator_check = lib.library
    .lookup<ffi.NativeFunction<ffi.Bool Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Annotator_check')
    .asFunction(isLeaf: true);

final core.int Function(
    ffi
        .Pointer<ffi.Void>) _Annotator_get_annotatedEvents = lib.library
    .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Annotator_get_annotatedEvents')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _Annotator_set_annotatedEvents = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_Annotator_set_annotatedEvents')
    .asFunction();

final core.int Function(
    ffi
        .Pointer<ffi.Void>) _Annotator_get_annotatedRoadEvents = lib.library
    .lookup<ffi.NativeFunction<ffi.Int64 Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Annotator_get_annotatedRoadEvents')
    .asFunction();
final void Function(
    ffi.Pointer<ffi.Void>,
    core
        .int) _Annotator_set_annotatedRoadEvents = lib.library
    .lookup<
            ffi.NativeFunction<
                ffi.Void Function(ffi.Pointer<ffi.Void>, ffi.Int64)>>(
        'yandex_flutter_navigation_automotive_Annotator_set_annotatedRoadEvents')
    .asFunction();

final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Annotator_setSpeaker = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Annotator_setSpeaker')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Annotator_mute = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Annotator_mute')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>) _Annotator_unmute = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_Annotator_unmute')
    .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Annotator_addListener = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Annotator_addListener')
        .asFunction();
final void Function(ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)
    _Annotator_removeListener = lib.library
        .lookup<
                ffi.NativeFunction<
                    ffi.Void Function(
                        ffi.Pointer<ffi.Void>, ffi.Pointer<ffi.Void>)>>(
            'yandex_flutter_navigation_automotive_Annotator_removeListener')
        .asFunction();
