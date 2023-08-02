import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        Icons.restaurant,
        size: 28,
        color: Theme.of(context).colorScheme.onBackground,
      ),
      title: Text(
        'Meals',
        style: Theme.of(context).textTheme.headline6!.copyWith(
              color: Theme.of(context).colorScheme.onBackground,
              fontSize: 24,
            ),
      ),
      onTap: () {
        // TODO: Implement the action to be performed when the drawer item is tapped.
        // For example, you can navigate to a specific screen or perform an action.
        // You can also use Navigator to handle navigation, or call a function to execute an action.
        // For now, this onTap method is empty as no specific action is defined.
      },
    );
  }
}
