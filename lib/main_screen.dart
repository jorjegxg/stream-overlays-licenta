import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:stream_overlays/features/home_page/presentation/pages/home_page.dart';
import 'package:stream_overlays/features/settings_screen/presentation/pages/settings_page.dart';
import 'package:stream_overlays/features/store/presentation/pages/store_page.dart';

class MainScreen extends StatelessWidget {
  final int pageIndex;

  const MainScreen({super.key, required this.pageIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            useIndicator: true,
            selectedIndex: pageIndex,
            onDestinationSelected: (index) {
              if (index == 0) context.go('/');
              if (index == 1) context.go('/store');
              if (index == 2) context.go('/settings');
            },
            labelType: NavigationRailLabelType.all,
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                selectedIcon: Icon(Icons.home_filled),
                label: Text('Acasă'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.store),
                selectedIcon: Icon(Icons.store),
                label: Text('Store'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.settings),
                selectedIcon: Icon(Icons.settings),
                label: Text('Setări'),
              ),
            ],
          ),
          const VerticalDivider(thickness: 0.3, width: 1),
          Expanded(
            child: IndexedStack(
              index: pageIndex,
              children: [HomePage(), StorePage(), SettingsScreen()],
            ),
          ),
        ],
      ),
    );
  }
}
