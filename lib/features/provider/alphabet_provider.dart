import 'package:flutter_riverpod/flutter_riverpod.dart';

final alphabetProvider = Provider<List<String>>((ref) {
  return List.generate(26, (index) => String.fromCharCode(index + 65));
});

final selectedLetterProvider = StateProvider<String?>((ref) {
  return null;
});
