import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dynamic_theme/cubit/dynamic_theme_cubit.dart';
import 'package:flutter_dynamic_theme/pages/home_page.dart';
import 'package:flutter_dynamic_theme/themes/themes.dart';

class RootWidget extends StatelessWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DynamicThemeCubit>(
      create: (context) => DynamicThemeCubit(),
      child: BlocBuilder<DynamicThemeCubit, DynamicThemeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: appThemeData[state.theme],
            home: const HomePage(),
            initialRoute: '/',
          );
        },
      ),
    );
  }
}
