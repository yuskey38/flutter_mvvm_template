import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum Flavor { local, dev }

@immutable
class Constants {
  const Constants._({
    required this.endpoint,
    required this.boolTest,
  });

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
      endpoint: 'https://newsapi.org',
      boolTest: true,
    );
  }

  factory Constants._dev() {
    return const Constants._(
      endpoint: 'https://newsapi.org',
      boolTest: false,
    );
  }

  static late final Constants instance = Constants.of();

  final String endpoint;
  final bool boolTest;
}
