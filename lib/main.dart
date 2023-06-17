import 'package:cinedot/core/styles/styles.dart';
import 'package:cinedot/screen/home/controller/bloc/home_controller_bloc.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:cinedot/screen/home/view/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'screen/film_view/controller/bloc/movie_details_bloc.dart';
import 'screen/home/view/widget/bottomNav.dart';

void main(List<String> args)async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
        BlocProvider(
          create: (context) => MovieDetailsBloc(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
        canvasColor: Color.fromARGB(255, 3, 38, 66), // Set the background color here
        // Rest of your theme configurations
      ),
        home: MyBottomNavigationBar(),
      ),
    );
  }
}
