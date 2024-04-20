import 'package:flutter/cupertino.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Login'),
      ),
      child: Center(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
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
                  child: const Text('Login'),
                  onPressed: () {
                    // Login logic here
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
