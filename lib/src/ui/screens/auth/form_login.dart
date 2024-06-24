import 'dart:async';
import 'package:flutter/material.dart';
import 'package:level_up/src/ui/screens/auth/register_screen.dart';
import 'package:level_up/src/ui/screens/layout_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../core/utils/constants.dart';
import '../../../core/widgets/onprogress_widget.dart';

class FormLoginView extends StatefulWidget {
  const FormLoginView({super.key});

  @override
  _FormLoginViewState createState() => _FormLoginViewState();
}

class _FormLoginViewState extends State<FormLoginView> {
  bool _redirecting = false;

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  String? _emailError;
  String? _passwordError;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    supabase.auth.onAuthStateChange.listen((data) {
      if (_redirecting) return;
      final session = data.session;
      if (session != null) {
        _redirecting = true;
        Navigator.of(context).pushReplacementNamed(LayoutScreen.routeName);
      }
    });
    super.initState();
  }

  Future<void> _signIn() async {
    try {
      await supabase.auth.signInWithPassword(
          email: _emailController.text, password: _passwordController.text);
      if (mounted) {
        _emailController.clear();
        _passwordController.clear();

        _redirecting = true;
        Navigator.of(context).pushReplacementNamed(LayoutScreen.routeName);
      }
    } on AuthException catch (error) {
      context.showErrorSnackBar(message: error.message);
    } catch (error) {
      context.showErrorSnackBar(message: 'Unexpected error occurred');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Email',
          ),
          const SizedBox(
            height: 8,
          ),
          TextFormField(
            controller: _emailController,
            decoration: InputDecoration(
              errorText: _emailError,
              prefixIcon: const Icon(Icons.email),
              border: const OutlineInputBorder(),
              hintText: 'Your Email',
            ),
            validator: (String? value) {
              if (value!.isEmpty || !value.contains('@')) {
                return 'Email is not valid';
              }
              return null;
            },
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
            controller: _passwordController,
            obscureText: _isObscure,
            decoration: InputDecoration(
              errorText: _passwordError,
              prefixIcon: const Icon(Icons.lock),
              border: const OutlineInputBorder(),
              hintText: 'Your Password',
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    _isObscure = !_isObscure;
                  });
                },
                icon:
                    Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
              ),
            ),
            validator: (String? value) {
              if (value!.isEmpty) {
                return 'Invalid password';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 16,
          ),
          ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  _signIn();
                }
              },
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 50,
                child: const Center(
                    child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white),
                )),
              )),
          const SizedBox(
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
                      Navigator.pushNamed(context, RegisterScreen.routeName);
                    },
                    child: const Text(
                      'Register',
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
