import 'package:flutter_riverpod/flutter_riverpod.dart';

class Logger extends ProviderObserver{

  /**
   * provider의 값을 업데이트 한 후
   */
  @override
  void didUpdateProvider(ProviderBase<Object?> provider, Object? previousValue, Object? newValue, ProviderContainer container) {
    print('[Provider Updated] provider: $provider / pv: $previousValue / nv: $newValue');
  }

  /**
   * provider가 추가되었을 때
   */
  @override
  void didAddProvider(ProviderBase<Object?> provider, Object? value, ProviderContainer container) {
    print('[Provider Added] provider: $provider / value: $value');
  }

  /**
   * provider가 삭제 됬을 때
   */
  @override
  void didDisposeProvider(ProviderBase<Object?> provider, ProviderContainer container) {
    print('[Provider Disposed] provider: $provider');
  }
}