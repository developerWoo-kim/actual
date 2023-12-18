import 'package:flutter_riverpod/flutter_riverpod.dart';

// autoDispose는 새로운 값을 받지 않음.
// 알아서 삭제함
final autoDisposeModifierProvider =
  FutureProvider.autoDispose<List<int>>((ref) async {
    await Future.delayed(Duration(seconds: 2));

    return [1,2,3,4,5];
});