import 'package:fl_components/router/app_router.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routes = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Components in Flutter'),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(routes[index].icon, color: AppTheme.primaryColor),
                title: Text(routes[index].name),
                onTap: () {
                  Navigator.pushNamed(context, routes[index].route);
                },
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                color: Colors.grey,
              );
            },
            itemCount: routes.length));
  }
}
