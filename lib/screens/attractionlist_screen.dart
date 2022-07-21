import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpods_http/providers/tdr_provider.dart';

class AttractionListScreen extends StatelessWidget {
  const AttractionListScreen({Key? key}) : super(key: key);
//https://www.youtube.com/watch?v=AJRfI2Tizpw
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('test'),
        ),
        body: Column(
          children: const [
            AttractionListView(),
          ],
        ),
      ),
    );
  }
}

class AttractionListView extends ConsumerWidget {
  const AttractionListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final attractionsList = ref.watch(attractionList);
    return attractionsList.when(
        data: (attrs) {
          return Expanded(
            child: ListView.builder(
              itemCount: attrs.attractions.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: ListTile(
                      title: Text(
                          attrs.attractions[index].facilityCode.toString()),
                      subtitle: Text(attrs.attractions[index].id.toString()),
                    ),
                  ),
                );
              },
            ),
          );
        },
        error: (err, stack) => Text('Error $err'),
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ));
  }
}
