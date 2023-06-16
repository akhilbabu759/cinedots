import 'package:cinedot/screen/home/controller/bloc/home_controller_bloc.dart';

import 'package:flutter/material.dart';
import 'package:cinedot/screen/home/view/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screen/home/view/widget/bottomNav.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeControllerBloc(),
        ),
        // BlocProvider(
        //   create: (context) => SubjectBloc(),
        // ),
      ],
      child: MaterialApp(
        home: MyBottomNavigationBar(),
      ),
    );
  }
}
