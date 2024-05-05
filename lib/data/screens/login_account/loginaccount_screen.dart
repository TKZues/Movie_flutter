import 'package:flutter/material.dart';
import 'package:movie_flutter/data/model/account_model.dart';
import 'package:movie_flutter/data/model/loginaccount_model.dart';

import '../../services/Database_helper.dart';




class LoginAccountScreen extends StatelessWidget {
  final LoginAccount? loginAccount;
  const LoginAccountScreen({
    Key? key,
    this.loginAccount
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fullnameController = TextEditingController();
    final passwordController = TextEditingController();
    final emailController = TextEditingController();
    final passwordconfirmController = TextEditingController();

    if(loginAccount != null){
      emailController.text = loginAccount!.emailAddress;
      passwordController.text = loginAccount!.password;
      fullnameController.text = loginAccount!.fullName;
      passwordconfirmController.text = loginAccount!.confirmPassword;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text( loginAccount == null
            ? 'Add a account'
            : 'Edit account'
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: Center(
                child: Text(
                  'What are you thinking about?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: TextFormField(
                controller: emailController,
                maxLines: 1,
                decoration: const InputDecoration(
                    hintText: 'Email',
                    labelText: 'Account email',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 0.75,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ))),
              ),
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                  hintText: 'Type here the password',
                  labelText: 'Account password',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 0.75,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ))),
              keyboardType: TextInputType.multiline,
              onChanged: (str) {},
              maxLines: 1,
            ),
            TextFormField(
              controller: passwordconfirmController,
              decoration: const InputDecoration(
                  hintText: 'Type here the passwordconfirm',
                  labelText: 'Account passwordconfirm',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 0.75,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ))),
              keyboardType: TextInputType.multiline,
              onChanged: (str) {},
              maxLines: 1,
            ),
            TextFormField(
              controller: fullnameController,
              decoration: const InputDecoration(
                  hintText: 'fullname',
                  labelText: 'Fullname',
                  border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                        width: 0.75,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ))),
              keyboardType: TextInputType.multiline,
              onChanged: (str) {},
              maxLines: 1,
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: SizedBox(
                height: 45,
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                    onPressed: () async {
                      final email = emailController.value.text;
                      final password = passwordController.value.text;
                      final fullname = fullnameController.value.text;
                      final passwordconrfirm = passwordconfirmController.value.text;

                      if (email.isEmpty || password.isEmpty||fullname.isEmpty || passwordconrfirm.isEmpty) {
                        return;
                      }

                      final LoginAccount model = LoginAccount(fullName: fullname, emailAddress: email, password: password, confirmPassword: passwordconrfirm, id: loginAccount?.id);
                      if(loginAccount == null){
                        await DatabaseHelper.addLoginAccount(model);
                      }else{
                        await DatabaseHelper.updateLoginAccount(model);
                      }

                      Navigator.pop(context);
                    },
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(
                            const RoundedRectangleBorder(
                                side: BorderSide(
                                  color: Colors.white,
                                  width: 0.75,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(10.0),
                                )))),
                    child: Text( loginAccount == null
                        ? 'Save' : 'Edit',
                      style: const TextStyle(fontSize: 20),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}