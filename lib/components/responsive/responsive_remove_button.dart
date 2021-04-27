import 'package:flutter/material.dart';

class ResponsiveRemoveButton extends StatelessWidget {
  final Function onRemove;

  ResponsiveRemoveButton({this.onRemove});

  @override
  Widget build(BuildContext context) {
    return MediaQuery.of(context).size.width > 480
        ? TextButton.icon(
            onPressed: onRemove,
            icon: const Icon(Icons.delete),
            label: const Text("Excluir"),
            style: TextButton.styleFrom(
              primary: Theme.of(context).errorColor,
            ),
          )
        : IconButton(
            icon: Icon(Icons.delete),
            color: Theme.of(context).errorColor,
            onPressed: onRemove,
          );
  }
}
