import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'homepage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
        ),
        body: const LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadForm();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _usernameField(),
        _passwordField(),
        _loginButton(context),
      ],
    );
  }

  Widget _usernameField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        controller: _usernameController,
        decoration: const InputDecoration(
          hintText: 'Username',
          contentPadding: EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: Colors.blue),
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        controller: _passwordController,
        obscureText: true,
        decoration: const InputDecoration(
          hintText: 'Password',
          contentPadding: EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)),
          ),
        ),
      ),
    );
  }

  void _saveForm() async {
    print('Saving form...');
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('username', _usernameController.text);
    prefs.setString('password', _passwordController.text);
  }

  void _loadForm() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _usernameController.text = prefs.getString('username')?? '';
      _passwordController.text = prefs.getString('password')?? '';
    });
  }

  Widget _loginButton(BuildContext context) {
    return Center( // Tambahkan Center di sini
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: MediaQuery.of(context).size.width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
          ),
          onPressed: () async {
            print('Login button pressed');
            _saveForm();
            final prefs = await SharedPreferences.getInstance();
            final storedUsername = prefs.getString('username');
            final storedPassword = prefs.getString('password');

            if (_usernameController.text.isEmpty ||
                _passwordController.text.isEmpty ||
                storedUsername != _usernameController.text ||
                storedPassword != _passwordController.text) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Login failed')),
              );
            } else {
              // Navigate to the home page
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
              );
            }

            print('Username: ${_usernameController.text}');
            print('Password: ${_passwordController.text}');
            print('Stored Username: $storedUsername');
            print('Stored Password: $storedPassword');
          },
          child: const Text('Login', style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
