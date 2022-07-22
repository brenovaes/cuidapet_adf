import 'package:cuidapet_adf/app/core/ui/widgets/cuidapet_textform_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CuidapetTextFormField(
              label: 'Login',
            ),
            CuidapetTextFormField(
              label: 'Senha',
              isObscure: true,
            ),
          ],
        ),
      ),
    );
  }
}
