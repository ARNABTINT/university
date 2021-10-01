import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:university/auth_widget_builder.dart';
import 'package:university/screens/auth/auth_widget.dart';
import 'package:university/screens/auth/sign_in_screen.dart';
import 'package:university/screens/mentor/mentor_screen.dart';
import 'package:university/screens/home/home_screen.dart';
import 'package:university/screens/mentor/widgets/mentor_preview_widget.dart';
import 'package:university/screens/pathway/pathway_screen.dart';
import 'package:university/services/firebase_auth_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
    );
    // return FutureBuilder(
    //   future: Firebase.initializeApp(),
    //   builder: (context, snapshot) {
    //     // Check for errors
    //     if (snapshot.hasError) {
    //       return Center(child: Text('Error Occurred'));
    //     }
    //     // Once complete, show your application
    //     if (snapshot.connectionState == ConnectionState.done) {
    //       return MultiProvider(
    //         providers: [
    //           Provider<FirebaseAuthService>(
    //             create: (_) => FirebaseAuthService(),
    //           ),
    //         ],
    //         child: AuthWidgetBuilder(builder: (context, userSnapshot) {
    //           return MaterialApp(
    //             home: AuthWidget(userSnapshot: userSnapshot),
    //           );
    //         }),
    //       );
    //     }
    //     // Otherwise, show something whilst waiting for initialization to complete
    //     return Center(child: const CircularProgressIndicator());
    //   },
    // );
  }
}
