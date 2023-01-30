import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matchmde_task/features/provider/filter_contact_list_provider.dart';

class ContactList extends ConsumerWidget {
  const ContactList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filterContactList = ref.watch(filterContactProvider);
    return Expanded(
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
        itemCount: filterContactList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
                "${filterContactList[index].firstName ?? ''} ${filterContactList[index].middleName ?? ''} ${filterContactList[index].lastName ?? ''}"),
          );
        },
      ),
    );
  }
}
