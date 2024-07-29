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
import 'package:yandex_maps_navikit/src/bindings/weak_map/weak_map.dart'
    as weak_map;
import 'package:yandex_maps_navikit/src/mapkit/geometry/point.dart'
    as mapkit_geometry_point;
import 'package:yandex_maps_navikit/src/mapkit/localized_value.dart'
    as mapkit_localized_value;

part 'speed_limits_policy.containers.dart';
part 'speed_limits_policy.impl.dart';

final class SpeedLimits {
  final mapkit_localized_value.LocalizedValue urban;
  final mapkit_localized_value.LocalizedValue rural;
  final mapkit_localized_value.LocalizedValue expressway;

  const SpeedLimits(this.urban, this.rural, this.expressway);

  @core.override
  core.int get hashCode => core.Object.hashAll([urban, rural, expressway]);

  @core.override
  core.bool operator ==(covariant SpeedLimits other) {
    if (core.identical(this, other)) {
      return true;
    }
    return urban == other.urban &&
        rural == other.rural &&
        expressway == other.expressway;
  }

  @core.override
  core.String toString() {
    return "SpeedLimits(urban: $urban, rural: $rural, expressway: $expressway)";
  }
}

final class SpeedLimitsRules {
  final SpeedLimitsRulesType urban;
  final SpeedLimitsRulesType rural;
  final SpeedLimitsRulesType expressway;

  const SpeedLimitsRules(this.urban, this.rural, this.expressway);

  @core.override
  core.int get hashCode => core.Object.hashAll([urban, rural, expressway]);

  @core.override
  core.bool operator ==(covariant SpeedLimitsRules other) {
    if (core.identical(this, other)) {
      return true;
    }
    return urban == other.urban &&
        rural == other.rural &&
        expressway == other.expressway;
  }

  @core.override
  core.String toString() {
    return "SpeedLimitsRules(urban: $urban, rural: $rural, expressway: $expressway)";
  }
}

enum SpeedLimitsRulesType {
  Absolute,
  Relative,
  ;
}

abstract class SpeedLimitsPolicy implements ffi.Finalizable {
  /// For example for Russia 60/90/110 km/h
  SpeedLimits get legalSpeedLimits;
  SpeedLimitsRules get speedLimitsRules;

  /// For example ratio = 0.8 and current speed limit is 60 km/h - for
  /// Russia: enforcement tolerance is 20 km/h for all speed limits => we
  /// should start warning the user when current speed > 60 + 20 * 0.8 = 76
  /// km/h - for Turkey: enforcement tolerance is 10 percent over the speed
  /// limit => we should start warning the user when current speed > 60 +
  /// 60 * 0.1 * 0.8 = 64.8 km/h
  SpeedLimits customSpeedLimits(core.double toleranceRatio);
}

abstract class SpeedPolicyListener {
  void onSpeedPolicyChanged();
}

abstract class SpeedPolicyProvider implements ffi.Finalizable {
  /// Returns the speed policy corresponding to the last position that was
  /// set. If no position has been previously set, the function returns the
  /// standard speed policy.
  SpeedLimitsPolicy get speedLimitsPolicy;

  /// The class does not retain the object in the 'speedLimitsListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void addListener(SpeedPolicyListener speedLimitsListener);

  /// The class does not retain the object in the 'speedLimitsListener' parameter.
  /// It is your responsibility to maintain a strong reference to
  /// the target object while it is attached to a class.
  void removeListener(SpeedPolicyListener speedLimitsListener);

  /// Call this method, then wait for
  /// [SpeedPolicyListener.onSpeedPolicyChanged] to read speed policy due
  /// to asynchronous updates. [SpeedPolicyListener.onSpeedPolicyChanged]
  /// will be called only if `speedLimitsPolicy` changed
  void updateSpeedLimitsPolicy(mapkit_geometry_point.Point position);
}

class SpeedPolicyProviderFactory {
  SpeedPolicyProviderFactory._();

  static SpeedPolicyProvider getSpeedPolicyProvider() {
    return _getSpeedPolicyProvider();
  }
}
