import 'package:actual/layout/default_layout.dart';
import 'package:actual/riverpod/future_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FutureProviderScreen extends ConsumerWidget {
  const FutureProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue state = ref.watch(multiplesFutureProvider);

    return DefaultLayout(
        title: 'FutureProviderScreen',
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // when :
            // - data : 로딩이 끝나고 데이터가 있을떄 실행
            // - error : 에러가 났을때
            state.when(
                data: (data) {
                  return Text(
                      data.toString(),
                    textAlign: TextAlign.center,
                  );
                },
                error: (err, stack) => Text(
                  err.toString()
                ),
                loading: () => Center(child: CircularProgressIndicator())
            )
          ],
        )
    );
  }
}
