// Package imports:
import 'package:flutter_hooks/flutter_hooks.dart';

// Project imports:
import 'package:flutter_mvvm_template/l10n/l10n.dart';

L10n useL10n() {
  final context = useContext();
  return L10n.of(context)!;
}
