import 'package:auth_provider_app/provider/google_signin_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Spacer(),
              Text(
                'Welcome',
                style: TextStyle(color: Colors.white),
              ),
              SignInButton(
                Buttons.Google,
                onPressed: () {
                  final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                  provider.signInWithGoogle();
                },
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
