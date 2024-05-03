import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;

part 'balloon_anchor.containers.dart';
part 'balloon_anchor.impl.dart';

enum VerticalPosition {
  Top,
  Center,
  Bottom,
  ;
}

enum HorizontalPosition {
  Left,
  Center,
  Right,
  ;
}

final class BalloonAnchor {
  final VerticalPosition vertical;
  final HorizontalPosition horizontal;

  const BalloonAnchor(this.vertical, this.horizontal);

  @core.override
  core.int get hashCode => core.Object.hashAll([vertical, horizontal]);

  @core.override
  core.bool operator ==(covariant BalloonAnchor other) {
    if (core.identical(this, other)) {
      return true;
    }
    return vertical == other.vertical && horizontal == other.horizontal;
  }

  @core.override
  core.String toString() {
    return "BalloonAnchor(vertical: $vertical, horizontal: $horizontal)";
  }
}
