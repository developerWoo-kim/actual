import 'package:actual/layout/default_layout.dart';
import 'package:actual/riverpod/state_provider_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // ref.read(provider)
    // ref.listen(provider, (previous, next) { })
    // ref.watch(provider) 세가지가 제일 중요함
    final provider = ref.watch(numberProvider);

    return DefaultLayout(
        title: 'StateProviderScreen',
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                provider.toString(),
              ),
              ElevatedButton(
                  onPressed: () {
                    ref
                        .read(numberProvider.notifier)
                        .update((state) => state + 1);
                  },
                  child: Text('UP')
              ),
              ElevatedButton(
                  onPressed: () {
                    ref
                        .read(numberProvider.notifier).state =
                    ref.read(numberProvider.notifier).state -1;
                  },
                  child: Text('DOWN')
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => _NextScreen())
                    );
                  },
                  child: Text('NEXT SCREEN')
              )
            ],
          ),
        ));
  }
}


class _NextScreen extends ConsumerWidget {
  const _NextScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final provider = ref.watch(numberProvider);

    return DefaultLayout(
        title: 'StateProviderScreen',
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                provider.toString(),
              )
            ],
          ),
        ));
  }
}
