import 'package:flutter/material.dart';
import 'package:offline_with_sqflite/providers/home_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<HomeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        notificationPredicate: (_) => false,
      ),
      body: provider.isBusy
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: provider.users.length,
              itemBuilder: (context, index) {
                final user = provider.users[index];
                return Card(
                  child: ListTile(
                    leading: const CircleAvatar(
                      child: Icon(Icons.person_outline),
                    ),
                    title: Text(user.name),
                    subtitle: Text(user.gender),
                    trailing: Text('${user.age}'),
                  ),
                );
              },
              separatorBuilder: (_, __) => const SizedBox(height: 4),
            ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.person_add_outlined),
        onPressed: () {},
      ),
    );
  }
}
