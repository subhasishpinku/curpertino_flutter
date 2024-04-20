import 'package:flutter/cupertino.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Register'),
      ),
      child: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const CupertinoTextField(
                  placeholder: 'Email',
                  keyboardType: TextInputType.emailAddress,
                  padding: EdgeInsets.all(16.0),
                ),
                const SizedBox(height: 16.0),
                const CupertinoTextField(
                  placeholder: 'Password',
                  obscureText: true,
                  padding: EdgeInsets.all(16.0),
                ),
                const SizedBox(height: 16.0),
                CupertinoButton.filled(
                  child: const Text('Register'),
                  onPressed: () {
                    // Registration logic here
                  },
                ),
                const SizedBox(height: 16.0),
                CupertinoButton(
                  child: const Text('Back to Login'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
