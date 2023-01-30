import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:matchmde_task/features/contact/view/contact_page.dart';

main() {
  runApp(
    const ProviderScope(
      child: MaterialApp(
        home: ContactPage(),
      ),
    ),
  );
}
