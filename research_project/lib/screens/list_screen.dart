import 'package:flutter/material.dart';

import '../models/item.dart';
import 'detail_screen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  final List<Item> _items = [];
  int _itemCount = 20;

  @override
  void initState() {
    super.initState();
    _loadItems();
  }

  void _loadItems() {
    setState(() {
      for (int i = _items.length + 1; i <= _itemCount; i++) {
        _items.add(Item(
          id: i,
          title: 'Item $i',
          description: 'This is the description for item $i. It contains details and information about this particular item.',
        ));
      }
    });
  }

  void _loadMore() {
    setState(() {
      _itemCount += 10;
      _loadItems();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Items List'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Browse through the list of items below. Tap on any item to view details.',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 8),
                Text(
                  '${_items.length} items',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _items.length + 1,
              itemBuilder: (context, index) {
                if (index == _items.length) {
                  return Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: ElevatedButton.icon(
                        onPressed: _loadMore,
                        icon: const Icon(Icons.add),
                        label: const Text('Load More Items'),
                      ),
                    ),
                  );
                }

                final item = _items[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      child: Text(
                        '${item.id}',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text('Item ${item.id}'),
                    subtitle: Text(item.description),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(item: item),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
