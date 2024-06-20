import 'package:flutter/material.dart';
import 'package:level_up/src/ui/screens/layout_screen.dart';

import '../../core/widgets/onprogress_widget.dart';

class FormLoginView extends StatefulWidget {
  const FormLoginView({super.key});

  @override
  _FormLoginViewState createState() => _FormLoginViewState();
}

class _FormLoginViewState extends State<FormLoginView> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isObscure = true;
  String? _emailError;
  String? _passwordError;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  String? get _errorTextEmail {
    final text = emailController.value.text;
    if (text.isEmpty) {
      return 'Email tidak boleh kosong';
    }
    if (text.length < 4) {
      return 'Email terlalu pendek';
    }
    return null;
  }

  String? get _errorTextPassword {
    final text = passwordController.value.text;
    if (text.isEmpty) {
      return 'Password tidak boleh kosong';
    }
    if (text.length < 4) {
      return 'Password terlalu pendek';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Email',
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: emailController,
          decoration: InputDecoration(
            errorText: _emailError,
            prefixIcon: const Icon(Icons.email),
            border: const OutlineInputBorder(),
            hintText: 'Masukkan Email Anda',
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Text(
          'Password',
        ),
        const SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: passwordController,
          obscureText: _isObscure,
          decoration: InputDecoration(
            errorText: _passwordError,
            prefixIcon: const Icon(Icons.lock),
            border: const OutlineInputBorder(),
            hintText: 'Masukkan Password Anda',
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
              icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        ElevatedButton(
            onPressed: _login,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: const Center(
                  child: Text(
                'Login',
                style: TextStyle(color: Colors.white),
              )),
            )),
        SizedBox(
          height: 20,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: const Text(
            'Or continue with social account',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          style: const ButtonStyle(
            side: WidgetStatePropertyAll(
                BorderSide(width: 1, color: Color(0xff461CCB))),
            backgroundColor: WidgetStatePropertyAll(Colors.white),
          ),
          child: SizedBox(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/login/google.png'),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  'Login with Google Account',
                ),
              ],
            ),
          ),
          onPressed: () {
            showDialog(
                context: context, builder: (context) => const AlertFeature());
          },
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Didn't have an account?",
              ),
              TextButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => const AlertFeature());
                  },
                  child: const Text(
                    'Register',
                  )),
            ],
          ),
        ),
      ],
    );
  }

  void _login() async {
    setState(() {
      _emailError = _errorTextEmail;
      _passwordError = _errorTextPassword;
    });

    if (_emailError == null && _passwordError == null) {
      Navigator.pushReplacementNamed(context, LayoutScreen.routeName);
    }
  }
}
