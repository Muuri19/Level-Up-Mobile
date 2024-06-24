import 'package:flutter/material.dart';
import 'package:level_up/src/common/color_style.dart';
import '../../../config/app_routes.dart';

class RegisterScreen extends StatefulWidget {
  static const routeName = AppRoutes.registerScreen;
  const RegisterScreen({super.key});

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  int currentStep = 0;
  bool _isObscure = true;
  String? _emailError;
  String? _passwordError;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign Up')),
      body: Theme(
        data: Theme.of(context)
            .copyWith(colorScheme: ColorScheme.light(primary: primaryColor)),
        child: Stepper(
          physics: const BouncingScrollPhysics(),
          stepIconHeight: 24,
          stepIconWidth: 24,
          connectorThickness: 20,
          type: StepperType.horizontal,
          steps: getSteps(),
          currentStep: currentStep,
          onStepContinue: () {
            final isLastStep = currentStep == getSteps().length - 1;
            if (isLastStep) {
              print('Complete');
              //Send data to server
            } else {
              setState(() => currentStep += 1);
            }
          },
          onStepTapped: (step) => setState(() => currentStep = step),
          onStepCancel:
              currentStep == 0 ? null : () => setState(() => currentStep -= 1),
          controlsBuilder: (context, ControlsDetails detail) {
            final isLastStep = currentStep == getSteps().length - 1;
            return Container(
              margin: EdgeInsets.only(top: 50),
              child: Row(
                children: [
                  Expanded(
                      child: ElevatedButton(
                          onPressed: detail.onStepContinue,
                          child: Text(
                            isLastStep ? 'Confirm' : 'Next',
                            style: TextStyle(color: Colors.white),
                          ))),
                  SizedBox(
                    width: 12,
                  ),
                  if (currentStep != 0)
                    Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey[350]),
                            onPressed: detail.onStepCancel,
                            child: Text(
                              'Cancel',
                              style: TextStyle(color: Colors.grey),
                            ))),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  List<Step> getSteps() => [
        Step(
          state: currentStep > 0 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 0,
          title: Text(
            'Personal',
            style: TextStyle(fontSize: 12),
          ),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
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
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Invalid password';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
        Step(
          state: currentStep > 1 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 1,
          title: Text(
            'Education',
            style: TextStyle(fontSize: 12),
          ),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
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
                    icon: Icon(
                        _isObscure ? Icons.visibility : Icons.visibility_off),
                  ),
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return 'Invalid password';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
        Step(
          state: currentStep > 2 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 2,
          title: Text(
            'Account',
            style: TextStyle(fontSize: 12),
          ),
          content: Container(),
        ),
        Step(
          state: currentStep > 3 ? StepState.complete : StepState.indexed,
          isActive: currentStep >= 3,
          title: Text(
            'Your Data',
            style: TextStyle(fontSize: 12),
          ),
          content: Container(),
        ),
      ];
}
