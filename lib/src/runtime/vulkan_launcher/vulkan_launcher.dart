import 'dart:ffi' as ffi;
import 'package:yandex_maps_navikit/src/bindings/common/library.dart' as lib;

import 'dart:core' as core;

part 'vulkan_launcher.impl.dart';

/// @nodoc
class VulkanLauncher {
  VulkanLauncher._();

  static core.bool get vulkanEnabled => _vulkanEnabled;
}
