import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;

part 'animation.containers.dart';
part 'animation.impl.dart';

/// The animation that is used to switch between states.

final class Animation {
  /// Animation type.
  final AnimationType type;

  /// Animation duration, in seconds.
  final core.double duration;

  const Animation(
    this.type, {
    required this.duration,
  });

  @core.override
  core.int get hashCode => core.Object.hashAll([type, duration]);

  @core.override
  core.bool operator ==(covariant Animation other) {
    if (core.identical(this, other)) {
      return true;
    }
    return type == other.type && duration == other.duration;
  }

  @core.override
  core.String toString() {
    return "Animation(type: $type, duration: $duration)";
  }
}

/// Available animation types.
enum AnimationType {
  /// Smooth interpolation between start and finish states.
  Smooth,

  /// Movement with constant speed during animation time.
  Linear,
  ;
}
