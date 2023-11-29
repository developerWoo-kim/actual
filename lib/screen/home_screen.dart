import 'package:actual/layout/default_layout.dart';
import 'package:actual/screen/state_notifier_provider_screen.dart';
import 'package:actual/screen/state_provider_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        title: 'homeScreen',
        body: ListView(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => StateProviderScreen(),),
                  );
                },
                child: Text('StateProviderScreen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => StateNotifierProviderScreen(),),
                );
              },
              child: Text('StateNotifierProviderScreen'),
            )
          ],
        )
    );
  }
}
