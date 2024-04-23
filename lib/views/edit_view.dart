import 'package:flutter/material.dart';

import 'package:advanced_state_management/components/style.dart';
import 'package:advanced_state_management/models/item_model.dart';

class EditView extends StatelessWidget {
  final ItemModel? item;
  const EditView({
    super.key,
    this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          item == null ? 'Thêm' : 'Sửa',
          style: const TextStyle(fontWeight: FontWeight.w800),
        ),
        actions: [
          IconButton(
            icon: icon.save,
            onPressed: () {
              print('Saved');
            },
          ),
        ],
      ),
      body: Center(
        child: FormField(
          builder: (context) => Column(
            children: [
              themes.boxContainer(
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: TextEditingController(text: item?.name),
                    style: text.primaryTextStyle,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(
                        color: color.primaryTextColor,
                      ),
                    ),
                  ),
                ),
              ),
              themes.boxContainer(
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: TextEditingController(text: item?.description),
                    style: text.primaryTextStyle,
                    decoration: InputDecoration(
                      labelText: 'Description',
                      labelStyle: TextStyle(
                        color: color.primaryTextColor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
