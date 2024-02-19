import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int currentValue = ref.watch(counterProvider);
    bool isDarkModeEnabled = ref.watch(darkModeProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(darkModeProvider.notifier)
                .update((state) => !state);
            }, 
            icon: Icon(isDarkModeEnabled ? Icons.dark_mode_outlined : Icons.light_mode_outlined),
          )
        ],
      ),
      body: Center(
        child: Text('Valor: $currentValue', style: Theme.of(context).textTheme.titleLarge,),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
          // ref.read(counterProvider.notifier)
          //   .update((state) => state + 1);
        },
      ),
    );
  }
}