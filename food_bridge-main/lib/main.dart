import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:Food Bridge/firebase_options.dart';
import 'package:Food Bridge/view/detailsview/details_view_restaurant.dart';
import 'package:Food Bridge/view/splash_screen.dart';
import 'package:Food Bridge/viewmodels/user_viewmodel.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserVm())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hunger & Help',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashScreen(),
      ),
    );
  }
}
