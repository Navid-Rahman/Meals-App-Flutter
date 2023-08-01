// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meals_app/provider/filters_provider.dart';
// import 'package:meals_app/widgets/main_drawer.dart';

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
  var _glutenFreeFilteredSet = false;
  var _lactoseFreeFilteredSet = false;
  var _veganFreeFilteredSet = false;
  var _vegetarianFreeFilteredSet = false;

  @override
  void initState() {
    super.initState();
    _glutenFreeFilteredSet = widget.currentFilters[Filter.glutenFree]!;
    _lactoseFreeFilteredSet = widget.currentFilters[Filter.lactoseFree]!;
    _vegetarianFreeFilteredSet = widget.currentFilters[Filter.vegetarian]!;
    _veganFreeFilteredSet = widget.currentFilters[Filter.vegan]!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your filters'),
      ),
      // drawer: MainDrawer(
      //   onSelectScreen: (identifier) {
      //     Navigator.of(context).pop();
      //     if (identifier == 'meals') {
      //       Navigator.of(context).pushReplacement(
      //         MaterialPageRoute(
      //           builder: (context) => const TabsScreen(),
      //         ),
      //       );
      //     }
      //   },
      // ),
      body: WillPopScope(
        onWillPop: () async {
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
            //! Outsource this code
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

            //! Outsource this code
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

            //! Outsource this code
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

            //! Outsource this code
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
