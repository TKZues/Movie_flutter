import 'package:flutter/material.dart';
import 'package:movie_flutter/data/model/account_model.dart';

import '../../services/Database_helper.dart';




class AccountScreen extends StatelessWidget {
  final Account? account;
  const AccountScreen({
    Key? key,
    this.account
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    if(account != null){
      emailController.text = account!.email;
      passwordController.text = account!.password;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text( account == null
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
              maxLines: 5,
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

                      if (email.isEmpty || password.isEmpty) {
                        return;
                      }

                      final Account model = Account(email: email, password: password, id: account?.id);
                      if(account == null){
                        await DatabaseHelper.addAccount(model);
                      }else{
                        await DatabaseHelper.updateAccount(model);
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
                    child: Text( account == null
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