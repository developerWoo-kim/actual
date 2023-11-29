import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 숫자를 관리하는 간단한 provider 예제
/// ref 란? :
///
/// 파라미터 안에 반환하고 싶은 값을 반환해주면 된다.
final numberProvider = StateProvider<int>((ref) => 0);