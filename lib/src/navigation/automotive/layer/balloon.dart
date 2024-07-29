import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;
import 'package:ffi/ffi.dart';
import 'package:yandex_maps_navikit/src/bindings/annotations/annotations.dart'
    as bindings_annotations;
import 'package:yandex_maps_navikit/src/bindings/common/string_map.dart'
    as string_map;
import 'package:yandex_maps_navikit/src/bindings/common/to_native.dart'
    as to_native;
import 'package:yandex_maps_navikit/src/bindings/common/to_platform.dart'
    as to_platform;
import 'package:yandex_maps_navikit/src/bindings/common/vector.dart' as vector;
import 'package:yandex_maps_navikit/src/directions/driving/action.dart'
    as directions_driving_action;
import 'package:yandex_maps_navikit/src/directions/driving/direction_signs.dart'
    as directions_driving_direction_signs;
import 'package:yandex_maps_navikit/src/directions/driving/lane.dart'
    as directions_driving_lane;
import 'package:yandex_maps_navikit/src/directions/driving/route.dart'
    as directions_driving_route;
import 'package:yandex_maps_navikit/src/directions/driving/weight.dart'
    as directions_driving_weight;
import 'package:yandex_maps_navikit/src/mapkit/localized_value.dart'
    as mapkit_localized_value;

part 'balloon.containers.dart';
part 'balloon.impl.dart';

final class Manoeuvre {
  final directions_driving_action.DrivingAction action;
  final mapkit_localized_value.LocalizedValue distance;
  final core.String? nextRoadName;

  const Manoeuvre(
    this.action,
    this.distance, {
    this.nextRoadName,
  });

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([action, distance, nextRoadName]);

  @core.override
  core.bool operator ==(covariant Manoeuvre other) {
    if (core.identical(this, other)) {
      return true;
    }
    return action == other.action &&
        distance == other.distance &&
        nextRoadName == other.nextRoadName;
  }

  @core.override
  core.String toString() {
    return "Manoeuvre(action: $action, distance: $distance, nextRoadName: $nextRoadName)";
  }
}

abstract final class ManoeuvreBalloon implements ffi.Finalizable {
  factory ManoeuvreBalloon(
          Manoeuvre manoeuvre,
          directions_driving_direction_signs.DrivingDirectionSign?
              directionSign) =>
      ManoeuvreBalloonImpl(manoeuvre, directionSign);

  Manoeuvre get manoeuvre;
  directions_driving_direction_signs.DrivingDirectionSign? get directionSign;

  @core.override
  core.int get hashCode => core.Object.hashAll([manoeuvre, directionSign]);

  @core.override
  core.bool operator ==(covariant ManoeuvreBalloon other) {
    if (core.identical(this, other)) {
      return true;
    }
    return manoeuvre == other.manoeuvre && directionSign == other.directionSign;
  }

  @core.override
  core.String toString() {
    return "ManoeuvreBalloon(manoeuvre: $manoeuvre, directionSign: $directionSign)";
  }
}

abstract final class ManoeuvreWithLaneSignBalloon implements ffi.Finalizable {
  factory ManoeuvreWithLaneSignBalloon(
          Manoeuvre manoeuvre,
          directions_driving_lane.DrivingLaneSign laneSign,
          directions_driving_direction_signs.DrivingDirectionSign?
              directionSign) =>
      ManoeuvreWithLaneSignBalloonImpl(manoeuvre, laneSign, directionSign);

  Manoeuvre get manoeuvre;
  directions_driving_lane.DrivingLaneSign get laneSign;
  directions_driving_direction_signs.DrivingDirectionSign? get directionSign;

  @core.override
  core.int get hashCode =>
      core.Object.hashAll([manoeuvre, laneSign, directionSign]);

  @core.override
  core.bool operator ==(covariant ManoeuvreWithLaneSignBalloon other) {
    if (core.identical(this, other)) {
      return true;
    }
    return manoeuvre == other.manoeuvre &&
        laneSign == other.laneSign &&
        directionSign == other.directionSign;
  }

  @core.override
  core.String toString() {
    return "ManoeuvreWithLaneSignBalloon(manoeuvre: $manoeuvre, laneSign: $laneSign, directionSign: $directionSign)";
  }
}

abstract final class LaneSignBalloon implements ffi.Finalizable {
  factory LaneSignBalloon(
          directions_driving_lane.DrivingLaneSign laneSign,
          directions_driving_direction_signs.DrivingDirectionSign?
              directionSign) =>
      LaneSignBalloonImpl(laneSign, directionSign);

  directions_driving_lane.DrivingLaneSign get laneSign;
  directions_driving_direction_signs.DrivingDirectionSign? get directionSign;

  @core.override
  core.int get hashCode => core.Object.hashAll([laneSign, directionSign]);

  @core.override
  core.bool operator ==(covariant LaneSignBalloon other) {
    if (core.identical(this, other)) {
      return true;
    }
    return laneSign == other.laneSign && directionSign == other.directionSign;
  }

  @core.override
  core.String toString() {
    return "LaneSignBalloon(laneSign: $laneSign, directionSign: $directionSign)";
  }
}

abstract final class RouteSummaryBalloon implements ffi.Finalizable {
  factory RouteSummaryBalloon(
          directions_driving_route.DrivingSummary summary,
          core.List<core.String> tags,
          directions_driving_weight.DrivingWeight? relativeWeight) =>
      RouteSummaryBalloonImpl(summary, tags, relativeWeight);

  directions_driving_route.DrivingSummary get summary;
  core.List<core.String> get tags;

  /// presented only if any another route selected in navigation layer
  /// contains (weight(alternative) - weight(selectedRoute)) automatically
  /// updated on selected route changing
  ///
  directions_driving_weight.DrivingWeight? get relativeWeight;

  @core.override
  core.int get hashCode => core.Object.hashAll([summary, tags, relativeWeight]);

  @core.override
  core.bool operator ==(covariant RouteSummaryBalloon other) {
    if (core.identical(this, other)) {
      return true;
    }
    return summary == other.summary &&
        tags == other.tags &&
        relativeWeight == other.relativeWeight;
  }

  @core.override
  core.String toString() {
    return "RouteSummaryBalloon(summary: $summary, tags: $tags, relativeWeight: $relativeWeight)";
  }
}

abstract final class AlternativeBalloon implements ffi.Finalizable {
  factory AlternativeBalloon(directions_driving_route.DrivingSummary summary,
          directions_driving_weight.DrivingWeight relativeWeight) =>
      AlternativeBalloonImpl(summary, relativeWeight);

  directions_driving_route.DrivingSummary get summary;

  /// contains (weight(alternative) - weight(selectedRoute)) automatically
  /// updated on selected route changing
  directions_driving_weight.DrivingWeight get relativeWeight;

  @core.override
  core.int get hashCode => core.Object.hashAll([summary, relativeWeight]);

  @core.override
  core.bool operator ==(covariant AlternativeBalloon other) {
    if (core.identical(this, other)) {
      return true;
    }
    return summary == other.summary && relativeWeight == other.relativeWeight;
  }

  @core.override
  core.String toString() {
    return "AlternativeBalloon(summary: $summary, relativeWeight: $relativeWeight)";
  }
}

final class Balloon {
  const Balloon.fromManoeuvreBalloon(ManoeuvreBalloon manoeuvre)
      : _value = manoeuvre;

  const Balloon.fromManoeuvreWithLaneSignBalloon(
      ManoeuvreWithLaneSignBalloon manoeuvreWithLaneSign)
      : _value = manoeuvreWithLaneSign;

  const Balloon.fromLaneSignBalloon(LaneSignBalloon laneSign)
      : _value = laneSign;

  const Balloon.fromRouteSummaryBalloon(RouteSummaryBalloon routeSummary)
      : _value = routeSummary;

  const Balloon.fromAlternativeBalloon(AlternativeBalloon alternative)
      : _value = alternative;

  ManoeuvreBalloon? asManoeuvreBalloon() {
    if (_value is ManoeuvreBalloon) {
      return _value;
    }
    return null;
  }

  ManoeuvreWithLaneSignBalloon? asManoeuvreWithLaneSignBalloon() {
    if (_value is ManoeuvreWithLaneSignBalloon) {
      return _value;
    }
    return null;
  }

  LaneSignBalloon? asLaneSignBalloon() {
    if (_value is LaneSignBalloon) {
      return _value;
    }
    return null;
  }

  RouteSummaryBalloon? asRouteSummaryBalloon() {
    if (_value is RouteSummaryBalloon) {
      return _value;
    }
    return null;
  }

  AlternativeBalloon? asAlternativeBalloon() {
    if (_value is AlternativeBalloon) {
      return _value;
    }
    return null;
  }

  /// Applies the passed function to the variant value.
  void when({
    required void Function(ManoeuvreBalloon value) onManoeuvreBalloon,
    required void Function(ManoeuvreWithLaneSignBalloon value)
        onManoeuvreWithLaneSignBalloon,
    required void Function(LaneSignBalloon value) onLaneSignBalloon,
    required void Function(RouteSummaryBalloon value) onRouteSummaryBalloon,
    required void Function(AlternativeBalloon value) onAlternativeBalloon,
  }) {
    if (_value is ManoeuvreBalloon) {
      return onManoeuvreBalloon(_value as ManoeuvreBalloon);
    }
    if (_value is ManoeuvreWithLaneSignBalloon) {
      return onManoeuvreWithLaneSignBalloon(
          _value as ManoeuvreWithLaneSignBalloon);
    }
    if (_value is LaneSignBalloon) {
      return onLaneSignBalloon(_value as LaneSignBalloon);
    }
    if (_value is RouteSummaryBalloon) {
      return onRouteSummaryBalloon(_value as RouteSummaryBalloon);
    }
    if (_value is AlternativeBalloon) {
      return onAlternativeBalloon(_value as AlternativeBalloon);
    }
    assert(false);
  }

  final core.dynamic _value;
}
