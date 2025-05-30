import 'dart:ffi';

import 'library.dart';
import 'native_types.dart';
import 'to_native.dart';

import 'package:yandex_maps_navikit/src/runtime/logging/logger.dart';

final void Function(NativeString) _nativeAssert = library
    .lookup<NativeFunction<Void Function(NativeString)>>(
        'yandex_maps_flutter_native_assert')
    .asFunction(isLeaf: true);

final Pointer<Bool> _lastCallSuccess =
    library.lookup<Bool>('yandex_maps_flutter_last_call_success');

void nativeAssert(String message) {
  Logger.error(message);
  _nativeAssert(toNativeString(''));
}

class AsyncErrorHandler {
  final Function? _onError;

  AsyncErrorHandler(this._onError);

  void onError(Object error, StackTrace stack) {
    if (_onError is Function(Object)) {
      _onError!(error);
    } else if (_onError is Function(Object, StackTrace)) {
      _onError!(error, stack);
    } else {
      throw error;
    }
  }
}

class NativeNullException implements Exception {
  const NativeNullException();

  @override
  String toString() {
    return 'NativeNullException: access to deleted native object.';
  }
}

void checkCallResult() {
  if (!_lastCallSuccess.value) {
    throw NativeNullException();
  }
}
