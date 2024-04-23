import 'package:advanced_state_management/components/style.dart';
import 'package:advanced_state_management/models/item_model.dart';
import 'package:advanced_state_management/views/edit_view.dart';
import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  final ItemModel item;
  const DetailView({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: icon.edit,
              onPressed: () {
                showModalBottomSheet<String?>(
                  context: context,
                  builder: (context) => EditView(
                    item: item,
                  ),
                );
              },
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            themes.items(null, item),
            themes.desrciption(item),
          ],
        ),
      ),
    );
  }
}
