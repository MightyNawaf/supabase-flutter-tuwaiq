import 'dart:async';

import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:supabase_tuwaiq/pages/auth/auth_screen.dart';
import 'package:supabase_tuwaiq/pages/home_screen.dart';
import 'package:supabase_tuwaiq/services/supabase.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  bool canGoHome = false;
  StreamSubscription? listen;

  @override
  void initState() {
    SupabaseService.client.auth.onAuthStateChange.listen((data) {
      final AuthChangeEvent event = data.event;
      if (event == AuthChangeEvent.signedIn) {
        canGoHome = true;
        setState(() {});
      }

      if (event == AuthChangeEvent.signedOut) {
        canGoHome = false;
        setState(() {});
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: canGoHome ? const HomeScreen() : const AuthScreen(),
        ),
      ),
    );
  }
}
