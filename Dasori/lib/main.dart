import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:Front_Flutter/providers/auth.dart';
import 'package:Front_Flutter/screens/login/login.dart';
import 'package:Front_Flutter/widgets/navigation_bar.dart';
//import 'package:Front_Flutter/screens/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => AuthProvider(),
        child: Consumer<AuthProvider>(
          builder: (context, auth, child) {
            //return auth.isAuthenticated ? NavBar() : Login();
            return auth.isAuthenticated ? NavBar() : NavBar();
          },
        ),
      ),
    );
  }
}
