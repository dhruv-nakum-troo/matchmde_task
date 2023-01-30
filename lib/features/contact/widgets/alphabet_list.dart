import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matchmde_task/features/provider/alphabet_provider.dart';
import 'package:matchmde_task/features/provider/contact_list_provider.dart';
import 'package:matchmde_task/features/provider/filter_contact_list_provider.dart';

class AlphabetList extends ConsumerWidget {
  const AlphabetList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final alphabetList = ref.watch(alphabetProvider);
    final selectedLetter = ref.watch(selectedLetterProvider);
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: alphabetList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                final selectedLetter = alphabetList[index];
                ref.read(selectedLetterProvider.notifier).state =
                    selectedLetter;

                ref.read(filterContactProvider.notifier).state = ref
                    .read(contactModelProvider)
                    .where((contact) =>
                        (contact.firstName ?? '')
                            .toLowerCase()
                            .startsWith(selectedLetter.toLowerCase()) ||
                        (contact.middleName ?? '')
                            .toLowerCase()
                            .startsWith(selectedLetter.toLowerCase()) ||
                        (contact.lastName ?? '')
                            .toLowerCase()
                            .startsWith(selectedLetter.toLowerCase()))
                    .toList();
              },
              child: CircleAvatar(
                backgroundColor: selectedLetter == alphabetList[index]
                    ? Colors.blueGrey
                    : Colors.blue,
                child: Text(alphabetList[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
