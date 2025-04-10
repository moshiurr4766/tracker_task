import 'package:flutter/material.dart';

class Task14 extends StatefulWidget {
  const Task14({super.key});

  @override
  State<Task14> createState() => _Task14State();
}

class _Task14State extends State<Task14> {

  final List<String> _items = List.generate(20, (index) => 'Item ${index + 1}');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Swipeable List'),
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _buildSwipeableListItem(_items[index], index);
        },
      ),
    );
  }

  Widget _buildSwipeableListItem(String item, int index) {
    return Dismissible(
      key: Key(item),
      background: _buildSwipeBackground(),
      secondaryBackground: _buildSwipeSecondaryBackground(),
      confirmDismiss: (direction) async {
        if (direction == DismissDirection.endToStart) {
          // Delete action
          return await _showDeleteConfirmationDialog(context);
        } else {
          // Edit action
          _editItem(index);
          return false; 
        }
      },
      onDismissed: (direction) {
        if (direction == DismissDirection.endToStart) {
          setState(() {
            _items.removeAt(index);
          });
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('$item deleted')),
          );
        }
      },
      child: Card(
        elevation: 2,
        margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: ListTile(
          title: Text(item),
          subtitle: Text('Swipe left or right for options'),
          leading: const Icon(Icons.list),
          trailing: const Icon(Icons.chevron_right),
        ),
      ),
    );
  }

  Widget _buildSwipeBackground() {
    return Container(
      color: Colors.blue,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 20),
      child: const Icon(
        Icons.edit,
        color: Colors.white,
      ),
    );
  }

  Widget _buildSwipeSecondaryBackground() {
    return Container(
      color: Colors.red,
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.only(right: 20),
      child: const Icon(
        Icons.delete,
        color: Colors.white,
      ),
    );
  }

  Future<bool> _showDeleteConfirmationDialog(BuildContext context) async {
    return await showDialog<bool>(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Confirm Delete'),
              content: const Text('Are you sure you want to delete this item?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(false),
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(true),
                  child: const Text('Delete'),
                ),
              ],
            );
          },
        ) ??
        false;
  }

  void _editItem(int index) {
    showDialog(
      context: context,
      builder: (context) {
        final textController = TextEditingController(text: _items[index]);
        return AlertDialog(
          title: const Text('Edit Item'),
          content: TextField(
            controller: textController,
            decoration: const InputDecoration(
              labelText: 'Item name',
              border: OutlineInputBorder(),
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _items[index] = textController.text;
                });
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Item updated')),
                );
              },
              child: const Text('Save'),
            ),
          ],
        );
      },
    );
  }
}