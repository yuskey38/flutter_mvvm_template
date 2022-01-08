// Flutter imports:
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:enum_to_string/enum_to_string.dart';

enum Flavor { local, dev }

@immutable
class Constants {
  const Constants._({
    required this.endpoint,
  });

  static bool get enablePreview => const bool.fromEnvironment('PREVIEW');

  factory Constants.of() {
    final flavor = EnumToString.fromString(
          Flavor.values,
          const String.fromEnvironment('FLAVOR'),
        ) ??
        Flavor.dev;

    switch (flavor) {
      case Flavor.local:
        return Constants._local();
      case Flavor.dev:
      default:
        return Constants._dev();
    }
  }

  factory Constants._local() {
    return const Constants._(
      endpoint: "local",
    );
  }

  factory Constants._dev() {
    return const Constants._(
      endpoint: "dev",
    );
  }

  static late final Constants instance = Constants.of();

  final String endpoint;
}
