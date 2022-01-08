// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:device_preview/device_preview.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Project imports:
import 'app.dart';
import 'foundation/constants.dart';

void main() {
  runApp(
    ProviderScope(
      child: DevicePreview(
        enabled: !kReleaseMode && Constants.enablePreview,
        builder: (context) {
          return const MyApp();
        },
      ),
    ),
  );
}
