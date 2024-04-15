import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/dispatcher.dart'
    as nativeBinding;
import 'package:yandex_maps_navikit/src/bindings/common/exception.dart'
    as exception;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/bindings/common/weak_interface_wrapper.dart'
    as weak_interface_wrapper;
import 'package:yandex_maps_navikit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_navikit/src/mapkit/annotations/speaker.dart'
    as mapkit_annotations_speaker;

part 'annotator.containers.dart';

@bindings_annotations.ContainerData(
    toNative: 'AnnotatedEvents.toPointer',
    toPlatform: '(val) => AnnotatedEvents.fromPointer(val, needFree: false)')
class AnnotatedEvents {
  static const Manoeuvres = AnnotatedEvents(1);
  static const FasterAlternative = AnnotatedEvents(1 << 1);
  static const RoadEvents = AnnotatedEvents(1 << 2);
  static const TollRoadAhead = AnnotatedEvents(1 << 3);
  static const SpeedLimitExceeded = AnnotatedEvents(1 << 4);
  static const ParkingRoutes = AnnotatedEvents(1 << 5);
  static const Streets = AnnotatedEvents(1 << 6);
  static const RouteStatus = AnnotatedEvents(1 << 7);
  static const WayPoints = AnnotatedEvents(1 << 8);
  static const SpeedBumps = AnnotatedEvents(1 << 9);
  static const RailwayCrossings = AnnotatedEvents(1 << 10);
  static const Lanes = AnnotatedEvents(1 << 11);
  static const RouteActions = AnnotatedEvents(1 | 1 << 7 | 1 << 8 | 1 << 11);
  static const Everything = AnnotatedEvents(1 |
      1 << 1 |
      1 << 2 |
      1 << 3 |
      1 << 4 |
      1 << 5 |
      1 << 6 |
      1 << 7 |
      1 << 8 |
      1 << 9 |
      1 << 10 |
      1 << 11);

  const AnnotatedEvents(this.value);
  final core.int value;

  AnnotatedEvents operator |(AnnotatedEvents other) {
    return AnnotatedEvents(value | other.value);
  }

  AnnotatedEvents operator &(AnnotatedEvents other) {
    return AnnotatedEvents(value & other.value);
  }

  AnnotatedEvents operator ~() {
    return AnnotatedEvents(~value);
  }

  /// @nodoc
  @internal
  static AnnotatedEvents fromInt(core.int val) {
    return AnnotatedEvents(val);
  }

  /// @nodoc
  @internal
  static core.int toInt(AnnotatedEvents e) {
    return e.value;
  }

  /// @nodoc
  @internal
  static AnnotatedEvents? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(AnnotatedEvents? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

@bindings_annotations.ContainerData(
    toNative: 'AnnotatedRoadEvents.toPointer',
    toPlatform:
        '(val) => AnnotatedRoadEvents.fromPointer(val, needFree: false)')
class AnnotatedRoadEvents {
  static const Danger = AnnotatedRoadEvents(1);
  static const Reconstruction = AnnotatedRoadEvents(1 << 1);
  static const Accident = AnnotatedRoadEvents(1 << 2);
  static const School = AnnotatedRoadEvents(1 << 3);
  static const OvertakingDanger = AnnotatedRoadEvents(1 << 4);
  static const PedestrianDanger = AnnotatedRoadEvents(1 << 5);
  static const CrossRoadDanger = AnnotatedRoadEvents(1 << 6);

  /// Traffic code control
  static const LaneControl = AnnotatedRoadEvents(1 << 7);
  static const RoadMarkingControl = AnnotatedRoadEvents(1 << 8);
  static const CrossRoadControl = AnnotatedRoadEvents(1 << 9);
  static const MobileControl = AnnotatedRoadEvents(1 << 10);
  static const SpeedLimitControl = AnnotatedRoadEvents(1 << 11);
  static const TrafficControls =
      AnnotatedRoadEvents(1 << 7 | 1 << 8 | 1 << 9 | 1 << 10 | 1 << 11);
  static const Everything = AnnotatedRoadEvents(1 |
      1 << 1 |
      1 << 2 |
      1 << 3 |
      1 << 4 |
      1 << 5 |
      1 << 6 |
      1 << 7 |
      1 << 8 |
      1 << 9 |
      1 << 10 |
      1 << 11);

  const AnnotatedRoadEvents(this.value);
  final core.int value;

  AnnotatedRoadEvents operator |(AnnotatedRoadEvents other) {
    return AnnotatedRoadEvents(value | other.value);
  }

  AnnotatedRoadEvents operator &(AnnotatedRoadEvents other) {
    return AnnotatedRoadEvents(value & other.value);
  }

  AnnotatedRoadEvents operator ~() {
    return AnnotatedRoadEvents(~value);
  }

  /// @nodoc
  @internal
  static AnnotatedRoadEvents fromInt(core.int val) {
    return AnnotatedRoadEvents(val);
  }

  /// @nodoc
  @internal
  static core.int toInt(AnnotatedRoadEvents e) {
    return e.value;
  }

  /// @nodoc
  @internal
  static AnnotatedRoadEvents? fromPointer(ffi.Pointer<ffi.Void> ptr,
      {core.bool needFree = true}) {
    if (ptr.address == 0) {
      return null;
    }
    final result = fromInt(ptr.cast<ffi.Int64>().value);

    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  /// @nodoc
  @internal
  static ffi.Pointer<ffi.Void> toPointer(AnnotatedRoadEvents? val) {
    if (val == null) {
      return ffi.nullptr;
    }

    final result = malloc.call<ffi.Int64>();
    result.value = toInt(val);

    return result.cast<ffi.Void>();
  }
}

/// @nodoc
class _AnnotatorListenerWrapper implements ffi.Finalizable {
  _AnnotatorListenerWrapper(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  static final _finalizer = ffi.NativeFinalizer(_AnnotatorListener_free.cast());
  final ffi.Pointer<ffi.Void> ptr;
}

abstract class AnnotatorListener {
  static final _pointerToListener =
      <ffi.Pointer<ffi.Void>, core.WeakReference<AnnotatorListener>>{};
  static final _listenerToPointer =
      weak_map.WeakMap<AnnotatorListener, _AnnotatorListenerWrapper?>();

  void manoeuvreAnnotated();
  void roadEventAnnotated();
  void speedingAnnotated();
  void fasterAlternativeAnnotated();

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

  /// @nodoc
  @internal
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
                        ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>,
                    ffi.Pointer<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>)>>('yandex_flutter_navigation_automotive_AnnotatorListener_new')
        .asFunction(isLeaf: true);

final _AnnotatorListener_free = lib.library
    .lookup<ffi.NativeFunction<ffi.Void Function(ffi.Pointer<ffi.Void>)>>(
        'yandex_flutter_navigation_automotive_AnnotatorListener_free');
void _AnnotatorListener_manoeuvreAnnotated(ffi.Pointer<ffi.Void> _ptr) {
  final listener = AnnotatorListener._pointerToListener[_ptr]?.target;
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
  final listener = AnnotatorListener._pointerToListener[_ptr]?.target;
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
  final listener = AnnotatorListener._pointerToListener[_ptr]?.target;
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
  final listener = AnnotatorListener._pointerToListener[_ptr]?.target;
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
    toNative: 'Annotator.getNativePtr',
    toPlatform:
        '(val) => Annotator.fromOptionalPtr(val.cast<ffi.Pointer<ffi.Void>>().value)')
class Annotator implements ffi.Finalizable {
  @protected
  final ffi.Pointer<ffi.Void> ptr;
  static final _finalizer = ffi.NativeFinalizer(_Annotator_free.cast());

  /// @nodoc
  Annotator.fromExternalPtr(this.ptr);

  /// @nodoc
  @internal
  Annotator.fromNativePtrImpl(this.ptr) {
    _finalizer.attach(this, ptr);
  }

  /// @nodoc
  @internal
  factory Annotator.fromNativePtr(ffi.Pointer<ffi.Void> ptr) =>
      weak_interface_wrapper.createFromNative(ptr);

  @internal

  /// @nodoc
  static ffi.Pointer<ffi.Void> getNativePtr(Annotator? obj) {
    if (obj == null) return ffi.nullptr;
    return obj.ptr;
  }

  core.bool isValid() {
    return _Annotator_check(ptr);
  }

  @internal

  /// @nodoc
  static Annotator? fromOptionalPtr(ffi.Pointer<ffi.Void> ptr) {
    if (ptr == ffi.nullptr) return null;
    return Annotator.fromNativePtr(ptr);
  }

  AnnotatedEvents get annotatedEvents {
    return AnnotatedEvents.fromInt(_Annotator_get_annotatedEvents(ptr));
  }

  set annotatedEvents(AnnotatedEvents val) {
    return _Annotator_set_annotatedEvents(ptr, AnnotatedEvents.toInt(val));
  }

  AnnotatedRoadEvents get annotatedRoadEvents {
    return AnnotatedRoadEvents.fromInt(_Annotator_get_annotatedRoadEvents(ptr));
  }

  set annotatedRoadEvents(AnnotatedRoadEvents val) {
    return _Annotator_set_annotatedRoadEvents(
        ptr, AnnotatedRoadEvents.toInt(val));
  }

  /// The class does not retain the object in the 'speaker' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void setSpeaker(mapkit_annotations_speaker.Speaker? speaker) {
    _Annotator_setSpeaker(
        ptr, mapkit_annotations_speaker.Speaker.getNativePtr(speaker));
  }

  void mute() {
    _Annotator_mute(ptr);
  }

  void unmute() {
    _Annotator_unmute(ptr);
  }

  /// The class does not retain the object in the 'annotatorListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addListener(AnnotatorListener annotatorListener) {
    _Annotator_addListener(
        ptr, AnnotatorListener.getNativePtr(annotatorListener));
  }

  void removeListener(AnnotatorListener annotatorListener) {
    _Annotator_removeListener(
        ptr, AnnotatorListener.getNativePtr(annotatorListener));
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
