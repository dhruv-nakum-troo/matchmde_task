import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matchmde_task/features/data/models/contact_model.dart';
import 'package:matchmde_task/features/provider/contact_list_provider.dart';

final filterContactProvider = StateProvider<List<Contact>>((ref) {
  final contacts = ref.watch(contactModelProvider);
  return contacts;
});
