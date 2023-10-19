import 'package:eventsly_desktop/core/home/viewmodels/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StackedView<HomeViewmodel> {
  const HomeView({super.key});

  @override
  Widget builder(BuildContext context, viewModel, Widget? child) {
    return Scaffold(
        body: Row(
      children: [
        SafeArea(
          top: false,
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: NavigationRail(
              extended: false,
              destinations: const [
                NavigationRailDestination(
                  icon: Icon(Icons.home),
                  label: Text('Home'),
                ),
                NavigationRailDestination(
                  icon: Icon(Icons.favorite),
                  label: Text('Favorites'),
                ),
              ],
              selectedIndex: 0,
              onDestinationSelected: (value) {},
            ),
          ),
        ),
        Expanded(
          child: Container(
            color: Theme.of(context).colorScheme.primaryContainer,
            child: Container(),
          ),
        ),
      ],
    ));
  }

  @override
  viewModelBuilder(BuildContext context) => HomeViewmodel();
}
