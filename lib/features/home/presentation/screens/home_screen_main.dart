import 'package:flutter/widgets.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/features/block/presentation/screens/block_screen.dart';
import 'package:forui_base/features/home/presentation/screens/home_screen.dart';
import 'package:forui_base/features/profile/presentation/screens/profile_screen.dart';

class HomeScreenMain extends StatefulWidget {
  const HomeScreenMain({super.key});

  @override
  State<HomeScreenMain> createState() => _HomeScreenMainState();
}

final List<Widget> contents = [
  const HomeScreen(),
  const BlockScreen(),
  const ProfileScreen(),
];

class _HomeScreenMainState extends State<HomeScreenMain> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      // header: getHeader(context, _index),
      footer: FBottomNavigationBar(
        index: _index,
        onChange: (index) => setState(() {
          _index = index;
        }),
        children: const [
          FBottomNavigationBarItem(
            icon: Icon(FIcons.house),
            label: Text('Home'),
          ),
          FBottomNavigationBarItem(
            icon: Icon(FIcons.layoutGrid),
            label: Text('Blocks'),
          ),
          FBottomNavigationBarItem(
            icon: Icon(FIcons.user),
            label: Text('Profile'),
          ),
        ],
      ),
      child: IndexedStack(index: _index, children: contents),
    );
  }
}
