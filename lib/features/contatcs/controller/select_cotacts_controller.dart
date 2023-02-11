import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:whatsapp_clone/features/contatcs/repository/select_contact_repo.dart';

final getContactsProvider = FutureProvider((ref) {
  final selectContactRepository = ref.watch(selectContactRepositoryProvider);
  return selectContactRepository;
});
