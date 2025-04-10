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
part 'annotator.impl.dart';

final class AnnotatedEvents {
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

  @core.override
  core.int get hashCode => value;

  @core.override
  core.bool operator ==(covariant AnnotatedEvents other) {
    return value == other.value;
  }

  @core.override
  core.String toString() {
    return "AnnotatedEvents(value: ${value.toRadixString(16)})";
  }
}

final class AnnotatedRoadEvents {
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
  static const TrafficControl = AnnotatedRoadEvents(1 << 12);
  static const PolicePatrol = AnnotatedRoadEvents(1 << 13);
  static const TrafficControls = AnnotatedRoadEvents(
      1 << 7 | 1 << 8 | 1 << 9 | 1 << 10 | 1 << 11 | 1 << 12 | 1 << 13);
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
      1 << 11 |
      1 << 12 |
      1 << 13);

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

  @core.override
  core.int get hashCode => value;

  @core.override
  core.bool operator ==(covariant AnnotatedRoadEvents other) {
    return value == other.value;
  }

  @core.override
  core.String toString() {
    return "AnnotatedRoadEvents(value: ${value.toRadixString(16)})";
  }
}

abstract class AnnotatorListener {
  void manoeuvreAnnotated();

  void roadEventAnnotated();

  void speedingAnnotated();

  void fasterAlternativeAnnotated();
}

abstract class Annotator implements ffi.Finalizable {
  AnnotatedEvents get annotatedEvents;
  set annotatedEvents(AnnotatedEvents val);

  AnnotatedRoadEvents get annotatedRoadEvents;
  set annotatedRoadEvents(AnnotatedRoadEvents val);

  /// The class does not retain the object in the 'speaker' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void setSpeaker(mapkit_annotations_speaker.Speaker? speaker);

  void mute();

  void unmute();

  /// The class does not retain the object in the 'annotatorListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addListener(AnnotatorListener annotatorListener);

  void removeListener(AnnotatorListener annotatorListener);

  core.bool isValid();
}
