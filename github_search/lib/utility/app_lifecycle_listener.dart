// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appLifecycleProvider = Provider<AppLifecycleState>((ref) {
  final observer = _AppLifecycleObserver((state) => ref.state = state);
  final binding = WidgetsBinding.instance..addObserver(observer);
  ref.onDispose(() => binding.removeObserver(observer));
  return AppLifecycleState.resumed;
});

class _AppLifecycleObserver extends WidgetsBindingObserver {
  _AppLifecycleObserver(this.didChangeState);

  ValueChanged<AppLifecycleState> didChangeState;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    didChangeState(state);
    super.didChangeAppLifecycleState(state);
  }
}
