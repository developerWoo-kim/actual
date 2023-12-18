import 'package:actual/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'riverpod/provider_observer.dart';

void main() {
  runApp(
    // provider를 쓰려면 MeterialApp을 ProviderScope으로 감싸줘야만 함
    ProviderScope(
      observers: [
        Logger(),
      ],
        child: MaterialApp(
          home: HomeScreen(),
        )
    )
  );
}
