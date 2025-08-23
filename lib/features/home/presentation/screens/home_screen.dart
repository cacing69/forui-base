import 'package:flutter/material.dart';
import 'package:forui/forui.dart';
import 'package:forui_base/router.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

final contents = [
  const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Text('Home Placeholder')],
  ),
  const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Text('Blocks Placeholder')],
  ),
  const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [Text('Profile Placeholder')],
  ),
];

class _HomeScreenState extends State<HomeScreen> {
  int _index = 0;

  Widget getHeader(BuildContext context, index) {
    Map<int, Widget> headersMap = {
      0: FHeader(title: Text("Home")),
      1: FHeader(title: Text("Blocks")),
      2: FHeader(
        title: Text("Profile"),
        suffixes: [
          FHeaderAction(
            icon: Icon(FIcons.logOut),
            onPress: () => context.goNamed(RouteName.login.name),
          ),
        ],
      ),
    };

    return headersMap[index]!;
  }

  @override
  Widget build(BuildContext context) {
    return FScaffold(
      header: getHeader(context, _index),
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
