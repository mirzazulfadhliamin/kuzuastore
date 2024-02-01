import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'logic.dart';

class SignupPage extends StatelessWidget {
  SignupPage({Key? key}) : super(key: key);

  final SignupLogic logic = Get.put(SignupLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
              onChanged: (value) => logic.name.value = value,
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
              onChanged: (value) => logic.email.value = value,
            ),
            SizedBox(height: 16.0),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
              onChanged: (value) => logic.password.value = value,
            ),
            SizedBox(height: 24.0),
            ElevatedButton(
              onPressed: () {
                // Panggil fungsi signup dari logic
                logic.signup();
              },
              child: Text('Signup'),
            ),
          ],
        ),
      ),
    );
  }
}
