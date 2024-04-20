import 'package:curpertino/cupertino_tabbar.dart';
import 'package:curpertino/registration_page.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Login'),
      ),
      child: Center(
        // Wrap the child with Center widget
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
                  child: const Text('Login'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const CupertinoTabBarExample()),
                    );
                  },
                ),
                const SizedBox(height: 16.0),
                CupertinoButton(
                  child: const Text('Register'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => const RegistrationPage()),
                    );
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
