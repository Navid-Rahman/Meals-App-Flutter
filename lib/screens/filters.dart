import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/provider/filters_provider.dart';

// Screen to display and manage meal filters.
class FilterScreen extends ConsumerStatefulWidget {
  const FilterScreen({
    Key? key,
    required this.currentFilters,
  }) : super(key: key);

  final Map<Filter, bool> currentFilters;

  @override
  ConsumerState<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends ConsumerState<FilterScreen> {
  // Variables to keep track of the selected filter options.
  var _glutenFreeFilteredSet = false;
  var _lactoseFreeFilteredSet = false;
  var _veganFreeFilteredSet = false;
  var _vegetarianFreeFilteredSet = false;

  @override
  void initState() {
    super.initState();

    // Initialize the filter options with the current filters provided to the screen.
    _glutenFreeFilteredSet = widget.currentFilters[Filter.glutenFree]!;
    _lactoseFreeFilteredSet = widget.currentFilters[Filter.lactoseFree]!;
    _vegetarianFreeFilteredSet = widget.currentFilters[Filter.vegetarian]!;
    _veganFreeFilteredSet = widget.currentFilters[Filter.vegan]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Your filters'), // Display the screen's title in the app bar.
      ),
      body: WillPopScope(
        onWillPop: () async {
          // When the screen is popped, pass the selected filter options back to the previous screen.
          Navigator.of(context).pop({
            Filter.glutenFree: _glutenFreeFilteredSet,
            Filter.lactoseFree: _lactoseFreeFilteredSet,
            Filter.vegetarian: _vegetarianFreeFilteredSet,
            Filter.vegan: _veganFreeFilteredSet,
          });
          return false;
        },
        child: Column(
          children: [
            // Reusable SwitchListTile for Gluten-Free filter option.
            SwitchListTile(
              value: _glutenFreeFilteredSet,
              onChanged: (isChecked) {
                setState(() {
                  _glutenFreeFilteredSet = isChecked;
                });
              },
              title: Text(
                'Gluten-Free ',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only include gluten-free meals',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(
                left: 34,
                right: 22,
              ),
            ),
            // Reusable SwitchListTile for Lactose-Free filter option.
            SwitchListTile(
              value: _lactoseFreeFilteredSet,
              onChanged: (isChecked) {
                setState(() {
                  _lactoseFreeFilteredSet = isChecked;
                });
              },
              title: Text(
                'Lactose-Free ',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only include lactose-free meals',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(
                left: 34,
                right: 22,
              ),
            ),
            // Reusable SwitchListTile for Vegetarian filter option.
            SwitchListTile(
              value: _vegetarianFreeFilteredSet,
              onChanged: (isChecked) {
                setState(() {
                  _vegetarianFreeFilteredSet = isChecked;
                });
              },
              title: Text(
                'Vegetarian',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only include vegetarian meals',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(
                left: 34,
                right: 22,
              ),
            ),
            // Reusable SwitchListTile for Vegan filter option.
            SwitchListTile(
              value: _veganFreeFilteredSet,
              onChanged: (isChecked) {
                setState(() {
                  _veganFreeFilteredSet = isChecked;
                });
              },
              title: Text(
                'Vegan',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              subtitle: Text(
                'Only include vegan meals',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
              ),
              activeColor: Theme.of(context).colorScheme.tertiary,
              contentPadding: const EdgeInsets.only(
                left: 34,
                right: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:meals_app/provider/filters_provider.dart';

// // Screen to display and manage meal filters.
// class FilterScreen extends ConsumerStatefulWidget {
//   const FilterScreen({
//     Key? key,
//     required this.currentFilters,
//   }) : super(key: key);

//   final Map<Filter, bool> currentFilters;

//   @override
//   ConsumerState<FilterScreen> createState() => _FilterScreenState();
// }

// class _FilterScreenState extends ConsumerState<FilterScreen> {
//   late bool _glutenFreeFilteredSet;
//   late bool _lactoseFreeFilteredSet;
//   late bool _veganFreeFilteredSet;
//   late bool _vegetarianFreeFilteredSet;

//   @override
//   void initState() {
//     super.initState();
//     // Initialize the filter options with the current filters provided to the screen.
//     _glutenFreeFilteredSet = widget.currentFilters[Filter.glutenFree]!;
//     _lactoseFreeFilteredSet = widget.currentFilters[Filter.lactoseFree]!;
//     _vegetarianFreeFilteredSet = widget.currentFilters[Filter.vegetarian]!;
//     _veganFreeFilteredSet = widget.currentFilters[Filter.vegan]!;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Your filters'), // Display the screen's title in the app bar.
//       ),
//       body: WillPopScope(
//         onWillPop: () async {
//           // When the screen is popped, pass the selected filter options back to the previous screen.
//           Navigator.of(context).pop({
//             Filter.glutenFree: _glutenFreeFilteredSet,
//             Filter.lactoseFree: _lactoseFreeFilteredSet,
//             Filter.vegetarian: _vegetarianFreeFilteredSet,
//             Filter.vegan: _veganFreeFilteredSet,
//           });
//           return false;
//         },
//         child: Column(
//           children: [
//             // Reusable function to generate SwitchListTile for different filter options.
//             buildFilterSwitchTile(
//               'Gluten-Free',
//               'Only include gluten-free meals',
//               _glutenFreeFilteredSet,
//               (isChecked) => setState(() => _glutenFreeFilteredSet = isChecked),
//               context,
//             ),
//             buildFilterSwitchTile(
//               'Lactose-Free',
//               'Only include lactose-free meals',
//               _lactoseFreeFilteredSet,
//               (isChecked) => setState(() => _lactoseFreeFilteredSet = isChecked),
//               context,
//             ),
//             buildFilterSwitchTile(
//               'Vegetarian',
//               'Only include vegetarian meals',
//               _vegetarianFreeFilteredSet,
//               (isChecked) => setState(() => _vegetarianFreeFilteredSet = isChecked),
//               context,
//             ),
//             buildFilterSwitchTile(
//               'Vegan',
//               'Only include vegan meals',
//               _veganFreeFilteredSet,
//               (isChecked) => setState(() => _veganFreeFilteredSet = isChecked),
//               context,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Function to create a reusable SwitchListTile for different filter options.
//   SwitchListTile buildFilterSwitchTile(
//     String title,
//     String subtitle,
//     bool value,
//     Function(bool) onChanged,
//     BuildContext context,
//   ) {
//     return SwitchListTile(
//       value: value,
//       onChanged: onChanged,
//       title: Text(
//         title,
//         style: Theme.of(context).textTheme.titleLarge!.copyWith(
//               color: Theme.of(context).colorScheme.onBackground,
//             ),
//       ),
//       subtitle: Text(
//         subtitle,
//         style: Theme.of(context).textTheme.labelMedium!.copyWith(
//               color: Theme.of(context).colorScheme.onBackground,
//             ),
//       ),
//       activeColor: Theme.of(context).colorScheme.tertiary,
//       contentPadding: const EdgeInsets.only(
//         left: 34,
//         right: 22,
//       ),
//     );
//   }
// }
