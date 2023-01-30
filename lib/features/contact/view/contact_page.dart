import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matchmde_task/features/contact/widgets/alphabet_list.dart';
import 'package:matchmde_task/features/contact/widgets/contact_list.dart';

class ContactPage extends ConsumerWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: const [
            // Component A: Alphabet List
            AlphabetList(),
            SizedBox(height: 20),
            // Component B: Filtered Contact List
            ContactList()
          ],
        ),
      ),
    );
  }
}
