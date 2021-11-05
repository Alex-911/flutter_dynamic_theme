import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dynamic_theme/cubit/dynamic_theme_cubit.dart';
import 'package:flutter_dynamic_theme/themes/themes.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Settings'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: BlocBuilder<DynamicThemeCubit, DynamicThemeState>(
        builder: (context, state) {
          return ListView.builder(
            itemCount: AppTheme.values.length,
            itemBuilder: (context, index) {
              final itemAppTheme = AppTheme.values[index];
              return Card(
                elevation: 5,
                color: appThemeData[itemAppTheme]!.primaryColor,
                child: ListTile(
                  onTap: () => context
                      .read<DynamicThemeCubit>()
                      .changeTheme(theme: itemAppTheme),
                  title: Text(
                    itemAppTheme.toString(),
                    style: appThemeData[itemAppTheme]!.textTheme.bodyText1,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
