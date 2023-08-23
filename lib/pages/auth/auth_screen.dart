import 'package:flutter/material.dart';
import 'package:supabase_tuwaiq/pages/auth/sign_in_screen.dart';
import 'package:supabase_tuwaiq/pages/auth/sign_up_screen.dart';
import 'package:supabase_tuwaiq/utils/extensions.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
			mainAxisAlignment: MainAxisAlignment.center,
			crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                const SignUpScreen().push(context);
              },
              child: const Text('Sign Up'),
            ),
            ElevatedButton(
              onPressed: () {
                const SignInScreen().push(context);
              },
              child: const Text('Sign In'),
            ),
          ],
        ),
      ),
    );
  }
}
