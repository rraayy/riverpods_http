import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpods_http/models/tdrinfo.dart';
import 'package:riverpods_http/repositories/tdr_repository.dart';

final tdrRepositoryProvider =
    Provider<IAttractionRepository>((ref) => AttractionRepository());

final attractionList = FutureProvider.autoDispose<TdrInfoResponse>((ref) async {
  final repository = ref.watch(tdrRepositoryProvider);
  return repository.fetchAttractionList();
});
