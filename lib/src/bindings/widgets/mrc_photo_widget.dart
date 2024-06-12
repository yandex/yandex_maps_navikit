import 'package:yandex_maps_navikit/src/bindings/widgets/platform_view_widget.dart';
import 'package:yandex_maps_navikit/src/places/mrc/mrc_photo_player.dart';
import 'package:yandex_maps_navikit/src/places/places.dart';

class MrcPhotoWidget extends PlatformViewWidget {
  MrcPhotoWidget({
    super.key,
    super.platformViewType,
    super.textDirection,
    super.gestureRecognizers,
    super.hitTestBehavior,
    required this.onPlayerCreated,
  }) : super(
          onViewCreated: (view) {
            final player = PlacesFactory.instance.createMrcPhotoPlayer(view);
            onPlayerCreated(player);

            return true;
          },
        );

  final void Function(MrcPhotoPlayer) onPlayerCreated;
}
