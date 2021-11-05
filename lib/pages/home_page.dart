import 'package:flutter/material.dart';
import 'package:flutter_dynamic_theme/pages/settings_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dynamic Theme Demo'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home Page',
              style: Theme.of(context).textTheme.headline3!.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
            ),
            Text(
              'Dynamic Theme Demo With Hydrated Cubit',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: Theme.of(context).primaryColor,
                  ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () => Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const SettingPage(),
        )),
        child: const Icon(Icons.settings),
      ),
    );
  }
}
